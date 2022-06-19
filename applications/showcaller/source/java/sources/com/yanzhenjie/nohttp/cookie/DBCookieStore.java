package com.yanzhenjie.nohttp.cookie;

import android.content.Context;
import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import com.yanzhenjie.nohttp.p320db.BaseDao;
import com.yanzhenjie.nohttp.p320db.Where;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cookie/DBCookieStore.class */
public class DBCookieStore extends BasicStore<DBCookieStore> {
    private static final int MAX_COOKIE_SIZE = 8888;
    private Context mContext;
    private BaseDao<CookieEntity> mCookieEntityDao;
    private CookieStoreListener mCookieStoreListener;
    private Lock mLock = new ReentrantLock();

    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener.class */
    public interface CookieStoreListener {
        void onRemoveCookie(URI uri, HttpCookie httpCookie);

        void onSaveCookie(URI uri, HttpCookie httpCookie);
    }

    public DBCookieStore(Context context) {
        this.mContext = context;
    }

    private void checkInitialization() {
        this.mLock.lock();
        if (isEnable() && this.mCookieEntityDao == null) {
            this.mCookieEntityDao = new CookieEntityDao(this.mContext);
            this.mCookieEntityDao.delete(new Where("expiry", Where.Options.EQUAL, -1L).get());
        }
        this.mLock.unlock();
    }

    private URI getEffectiveURI(URI uri) {
        try {
            uri = new URI("http", uri.getHost(), uri.getPath(), null, null);
        } catch (URISyntaxException e) {
        }
        return uri;
    }

    private void trimSize() {
        List<CookieEntity> list;
        int count = this.mCookieEntityDao.count();
        if (count <= 8898 || (list = this.mCookieEntityDao.getList(null, null, Integer.toString(count - MAX_COOKIE_SIZE), null)) == null) {
            return;
        }
        this.mCookieEntityDao.delete(list);
    }

    @Override // java.net.CookieStore
    public void add(URI uri, HttpCookie httpCookie) {
        checkInitialization();
        this.mLock.lock();
        try {
            if (isEnable() && uri != null && httpCookie != null) {
                URI effectiveURI = getEffectiveURI(uri);
                CookieStoreListener cookieStoreListener = this.mCookieStoreListener;
                if (cookieStoreListener != null) {
                    cookieStoreListener.onSaveCookie(effectiveURI, httpCookie);
                }
                this.mCookieEntityDao.replace(new CookieEntity(effectiveURI, httpCookie));
                trimSize();
            }
        } finally {
            this.mLock.unlock();
        }
    }

    @Override // java.net.CookieStore
    public List<HttpCookie> get(URI uri) {
        checkInitialization();
        this.mLock.lock();
        if (uri != null) {
            try {
                if (isEnable()) {
                    URI effectiveURI = getEffectiveURI(uri);
                    Where where = new Where();
                    String host = effectiveURI.getHost();
                    if (!TextUtils.isEmpty(host)) {
                        Where.Options options = Where.Options.EQUAL;
                        Where where2 = new Where("domain", options, host);
                        Where m552or = where2.m552or("domain", options, "." + host);
                        int indexOf = host.indexOf(".");
                        int lastIndexOf = host.lastIndexOf(".");
                        if (indexOf > 0 && lastIndexOf > indexOf) {
                            String substring = host.substring(indexOf, host.length());
                            if (!TextUtils.isEmpty(substring)) {
                                m552or.m552or("domain", options, substring);
                            }
                        }
                        where.set(m552or.get());
                    }
                    String path = effectiveURI.getPath();
                    if (!TextUtils.isEmpty(path)) {
                        Where.Options options2 = Where.Options.EQUAL;
                        Where orNull = new Where("path", options2, path).m552or("path", options2, "/").orNull("path");
                        int lastIndexOf2 = path.lastIndexOf("/");
                        while (lastIndexOf2 > 0) {
                            path = path.substring(0, lastIndexOf2);
                            orNull.m552or("path", Where.Options.EQUAL, path);
                            lastIndexOf2 = path.lastIndexOf("/");
                        }
                        orNull.bracket();
                        where.and(orNull);
                    }
                    where.m552or("uri", Where.Options.EQUAL, effectiveURI.toString());
                    List<CookieEntity> list = this.mCookieEntityDao.getList(where.get(), null, null, null);
                    ArrayList arrayList = new ArrayList();
                    for (CookieEntity cookieEntity : list) {
                        if (!cookieEntity.isExpired()) {
                            arrayList.add(cookieEntity.toHttpCookie());
                        }
                    }
                    return arrayList;
                }
            } finally {
                this.mLock.unlock();
            }
        }
        return Collections.emptyList();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.util.List] */
    @Override // java.net.CookieStore
    public List<HttpCookie> getCookies() {
        ArrayList arrayList;
        checkInitialization();
        this.mLock.lock();
        try {
            if (isEnable()) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<CookieEntity> it = this.mCookieEntityDao.getAll().iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    CookieEntity next = it.next();
                    if (!next.isExpired()) {
                        arrayList2.add(next.toHttpCookie());
                    }
                }
            } else {
                arrayList = Collections.emptyList();
            }
            this.mLock.unlock();
            return arrayList;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.util.List] */
    @Override // java.net.CookieStore
    public List<URI> getURIs() {
        ArrayList arrayList;
        checkInitialization();
        this.mLock.lock();
        try {
            if (isEnable()) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<CookieEntity> it = this.mCookieEntityDao.getAll().iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    String uri = it.next().getUri();
                    if (!TextUtils.isEmpty(uri)) {
                        arrayList2.add(new URI(uri));
                    }
                }
            } else {
                arrayList = Collections.emptyList();
            }
            this.mLock.unlock();
            return arrayList;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    @Override // java.net.CookieStore
    public boolean remove(URI uri, HttpCookie httpCookie) {
        checkInitialization();
        this.mLock.lock();
        if (httpCookie != null) {
            try {
                if (isEnable()) {
                    CookieStoreListener cookieStoreListener = this.mCookieStoreListener;
                    if (cookieStoreListener != null) {
                        cookieStoreListener.onRemoveCookie(uri, httpCookie);
                    }
                    Where.Options options = Where.Options.EQUAL;
                    Where where = new Where(ShortCut.NAME, options, httpCookie.getName());
                    String domain = httpCookie.getDomain();
                    if (!TextUtils.isEmpty(domain)) {
                        where.and("domain", options, domain);
                    }
                    String path = httpCookie.getPath();
                    if (!TextUtils.isEmpty(path)) {
                        String str = path;
                        if (path.length() > 1) {
                            str = path;
                            if (path.endsWith("/")) {
                                str = path.substring(0, path.length() - 1);
                            }
                        }
                        where.and("path", options, str);
                    }
                    return this.mCookieEntityDao.delete(where.toString());
                }
            } finally {
                this.mLock.unlock();
            }
        }
        this.mLock.unlock();
        return true;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.net.CookieStore
    public boolean removeAll() {
        checkInitialization();
        this.mLock.lock();
        try {
            boolean deleteAll = !isEnable() ? true : this.mCookieEntityDao.deleteAll();
            this.mLock.unlock();
            return deleteAll;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public CookieStore setCookieStoreListener(CookieStoreListener cookieStoreListener) {
        this.mCookieStoreListener = cookieStoreListener;
        return this;
    }
}
