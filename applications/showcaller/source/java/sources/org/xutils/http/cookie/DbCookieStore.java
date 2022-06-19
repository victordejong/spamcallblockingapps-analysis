package org.xutils.http.cookie;

import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.common.task.PriorityExecutor;
import org.xutils.common.util.LogUtil;
import org.xutils.config.DbConfigs;
import org.xutils.p343db.Selector;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.DbModel;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/cookie/DbCookieStore.class */
public enum DbCookieStore implements CookieStore {
    INSTANCE;
    

    /* renamed from: db */
    private DbManager f40756db;
    private final Executor trimExecutor = new PriorityExecutor(1, true);
    private long lastTrimTime = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.xutils.http.cookie.DbCookieStore$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/cookie/DbCookieStore$a.class */
    public class RunnableC9655a implements Runnable {
        RunnableC9655a() {
            DbCookieStore.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            DbCookieStore.this.m185e();
        }
    }

    /* renamed from: org.xutils.http.cookie.DbCookieStore$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/cookie/DbCookieStore$b.class */
    public class RunnableC9656b implements Runnable {
        RunnableC9656b() {
            DbCookieStore.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            List findAll;
            DbCookieStore.this.m185e();
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - DbCookieStore.this.lastTrimTime < 1000) {
                return;
            }
            DbCookieStore.this.lastTrimTime = currentTimeMillis;
            try {
                DbCookieStore.this.f40756db.delete(C9657a.class, WhereBuilder.m228b("expiry", "<", Long.valueOf(System.currentTimeMillis())).and("expiry", "!=", -1L));
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
            try {
                int count = (int) DbCookieStore.this.f40756db.selector(C9657a.class).count();
                if (count <= 5010 || (findAll = DbCookieStore.this.f40756db.selector(C9657a.class).where("expiry", "!=", -1L).orderBy("expiry").limit(count - 5000).findAll()) == null) {
                    return;
                }
                DbCookieStore.this.f40756db.delete(findAll);
            } catch (Throwable th2) {
                LogUtil.m258e(th2.getMessage(), th2);
            }
        }
    }

    DbCookieStore() {
        C9682x.task().run(new RunnableC9655a());
    }

    /* renamed from: a */
    private URI m187a(URI uri) {
        try {
            uri = new URI("http", uri.getHost(), uri.getPath(), null, null);
        } catch (Throwable th) {
            LogUtil.m252w(th.getMessage(), th);
        }
        return uri;
    }

    /* renamed from: d */
    private void m186d() {
        this.trimExecutor.execute(new RunnableC9656b());
    }

    /* renamed from: e */
    public void m185e() {
        if (this.f40756db == null) {
            synchronized (this) {
                if (this.f40756db == null) {
                    DbManager db = C9682x.getDb(DbConfigs.COOKIE.getConfig());
                    this.f40756db = db;
                    db.delete(C9657a.class, WhereBuilder.m228b("expiry", "=", -1L));
                }
            }
        }
    }

    @Override // java.net.CookieStore
    public void add(URI uri, HttpCookie httpCookie) {
        if (httpCookie == null) {
            return;
        }
        m185e();
        try {
            this.f40756db.replace(new C9657a(m187a(uri), httpCookie));
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        m186d();
    }

    @Override // java.net.CookieStore
    public List<HttpCookie> get(URI uri) {
        Objects.requireNonNull(uri, "uri is null");
        m185e();
        URI m187a = m187a(uri);
        ArrayList arrayList = new ArrayList();
        try {
            Selector selector = this.f40756db.selector(C9657a.class);
            WhereBuilder m229b = WhereBuilder.m229b();
            String host = m187a.getHost();
            if (!TextUtils.isEmpty(host)) {
                WhereBuilder m228b = WhereBuilder.m228b("domain", "=", host);
                WhereBuilder m227or = m228b.m227or("domain", "=", "." + host);
                int indexOf = host.indexOf(".");
                int lastIndexOf = host.lastIndexOf(".");
                if (indexOf > 0 && lastIndexOf > indexOf) {
                    String substring = host.substring(indexOf, host.length());
                    if (!TextUtils.isEmpty(substring)) {
                        m227or.m227or("domain", "=", substring);
                    }
                }
                m229b.and(m227or);
            }
            String path = m187a.getPath();
            if (!TextUtils.isEmpty(path)) {
                WhereBuilder m227or2 = WhereBuilder.m228b("path", "=", path).m227or("path", "=", "/").m227or("path", "=", null);
                int lastIndexOf2 = path.lastIndexOf("/");
                while (lastIndexOf2 > 0) {
                    path = path.substring(0, lastIndexOf2);
                    m227or2.m227or("path", "=", path);
                    lastIndexOf2 = path.lastIndexOf("/");
                }
                m229b.and(m227or2);
            }
            m229b.m227or("uri", "=", m187a.toString());
            List<C9657a> findAll = selector.where(m229b).findAll();
            if (findAll != null) {
                for (C9657a c9657a : findAll) {
                    if (!c9657a.isExpired()) {
                        arrayList.add(c9657a.toHttpCookie());
                    }
                }
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        return arrayList;
    }

    @Override // java.net.CookieStore
    public List<HttpCookie> getCookies() {
        m185e();
        ArrayList arrayList = new ArrayList();
        try {
            List<C9657a> findAll = this.f40756db.findAll(C9657a.class);
            if (findAll != null) {
                for (C9657a c9657a : findAll) {
                    if (!c9657a.isExpired()) {
                        arrayList.add(c9657a.toHttpCookie());
                    }
                }
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        return arrayList;
    }

    @Override // java.net.CookieStore
    public List<URI> getURIs() {
        m185e();
        ArrayList arrayList = new ArrayList();
        try {
            List<DbModel> findAll = this.f40756db.selector(C9657a.class).select("uri").findAll();
            if (findAll != null) {
                for (DbModel dbModel : findAll) {
                    String string = dbModel.getString("uri");
                    if (!TextUtils.isEmpty(string)) {
                        arrayList.add(new URI(string));
                    }
                }
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        return arrayList;
    }

    @Override // java.net.CookieStore
    public boolean remove(URI uri, HttpCookie httpCookie) {
        boolean z = true;
        if (httpCookie == null) {
            return true;
        }
        m185e();
        try {
            WhereBuilder m228b = WhereBuilder.m228b(ShortCut.NAME, "=", httpCookie.getName());
            String domain = httpCookie.getDomain();
            if (!TextUtils.isEmpty(domain)) {
                m228b.and("domain", "=", domain);
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
                m228b.and("path", "=", str);
            }
            this.f40756db.delete(C9657a.class, m228b);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
            z = false;
        }
        return z;
    }

    @Override // java.net.CookieStore
    public boolean removeAll() {
        m185e();
        try {
            this.f40756db.delete(C9657a.class);
            return true;
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
            return true;
        }
    }
}
