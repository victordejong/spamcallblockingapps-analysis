package com.callapp.contacts.manager.cache;

import android.app.ActivityManager;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.p023b.C0434e;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager.class */
public class CacheManager implements ManagedLifecycle {

    /* renamed from: a */
    protected Handler f25925a;

    /* renamed from: b */
    public final C0434e<String, MemCachedObject> f25926b;

    /* renamed from: c */
    public final C0434e<String, PhotoUrlCache> f25927c;

    /* renamed from: d */
    private final HandlerThread f25928d;

    /* renamed from: e */
    private final FileStore f25929e;

    /* renamed from: f */
    private final Object f25930f = new Object();

    /* renamed from: g */
    private final Map<String, Object> f25931g = new WeakHashMap();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager$CachedObject.class */
    public static final class CachedObject<T> {

        /* renamed from: a */
        private final T f25944a;

        /* renamed from: b */
        private final Date f25945b;

        CachedObject(T t, Date date) {
            this.f25944a = t;
            this.f25945b = date;
        }

        public final Date getExpirationDate() {
            return this.f25945b;
        }

        public final T getObj() {
            return this.f25944a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager$MemCachedObject.class */
    public static class MemCachedObject<T> {

        /* renamed from: a */
        private final T f25946a;

        /* renamed from: b */
        private Date f25947b;

        /* renamed from: c */
        private final long f25948c;

        MemCachedObject(T t, long j) {
            this.f25946a = t;
            this.f25948c = j;
        }

        public MemCachedObject(T t, Date date, long j) {
            this.f25946a = t;
            this.f25947b = date;
            this.f25948c = j;
        }

        Date getExpirationDate() {
            return this.f25947b;
        }

        public T getObj() {
            return this.f25946a;
        }

        public long getSize() {
            return this.f25948c;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache.class */
    public static final class PhotoUrlCache {

        /* renamed from: a */
        private final String f25949a;

        /* renamed from: b */
        private final DataSource f25950b;

        /* renamed from: c */
        private final Integer f25951c;

        public PhotoUrlCache(String str, DataSource dataSource, Integer num) {
            this.f25949a = str;
            this.f25950b = dataSource;
            this.f25951c = num;
        }

        public final DataSource getDataSource() {
            return this.f25950b;
        }

        public final Integer getPhotoBGColor() {
            return this.f25951c;
        }

        public final String getPhotoUrl() {
            return this.f25949a;
        }
    }

    public CacheManager() {
        HandlerThread handlerThread = new HandlerThread(CacheManager.class.toString());
        this.f25928d = handlerThread;
        ActivityManager activityManager = (ActivityManager) CallAppApplication.get().getSystemService("activity");
        this.f25926b = new C0434e<String, MemCachedObject>(Math.min((((CallAppApplication.get().getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 5, 26214400)) { // from class: com.callapp.contacts.manager.cache.CacheManager.1
            @Override // androidx.p023b.C0434e
            public /* synthetic */ int sizeOf(String str, MemCachedObject memCachedObject) {
                return (int) memCachedObject.getSize();
            }
        };
        this.f25927c = new C0434e<>(1000);
        this.f25929e = new FileStore();
        handlerThread.start();
        AndroidUtils.m27631a(handlerThread.getLooper());
        this.f25925a = new Handler(handlerThread.getLooper());
    }

    /* renamed from: a */
    public static <T> int m28391a(Class<T> cls, T t) {
        if (cls == null) {
            return 0;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return 4;
        }
        if (cls == String.class) {
            String str = (String) t;
            if (StringUtils.m26045b((CharSequence) str)) {
                return str.length() * 2;
            }
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return 1;
        }
        return (cls == Long.TYPE || cls == Long.class) ? 8 : 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e3 A[Catch: all -> 0x0109, TRY_ENTER, TryCatch #0 {all -> 0x0109, blocks: (B:22:0x0057, B:24:0x0067, B:26:0x0079, B:28:0x0081, B:34:0x0092, B:37:0x0095, B:39:0x00a4, B:41:0x00ac, B:50:0x00da, B:52:0x00e0, B:54:0x00e3, B:56:0x00eb, B:57:0x00f1, B:61:0x00f8, B:63:0x0105), top: B:71:0x0057 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> com.callapp.contacts.manager.cache.CacheManager.MemCachedObject<T> m28382a(boolean r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.cache.CacheManager.m28382a(boolean, java.lang.String):com.callapp.contacts.manager.cache.CacheManager$MemCachedObject");
    }

    /* renamed from: a */
    private <T> void m28386a(final Class<T> cls, String str, final T t, final Date date, boolean z) {
        if (cls == null || str == null || date == null) {
            return;
        }
        final String m28377c = m28377c(cls, str);
        this.f25926b.put(m28377c, new MemCachedObject(t, date, m28391a(cls, t)));
        if (!z) {
            return;
        }
        final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.manager.cache.CacheManager.3
            @Override // java.lang.Runnable
            public void run() {
                CacheDataManager.m28393a(CacheManager.this.f25929e, m28377c, date, cls, t);
            }
        };
        if (!CallAppApplication.get().isUnitTestMode()) {
            this.f25925a.post(runnable);
        } else {
            new Task() { // from class: com.callapp.contacts.manager.cache.CacheManager.4
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    runnable.run();
                }
            }.execute();
        }
    }

    /* renamed from: c */
    public static String m28377c(Class<?> cls, String str) {
        return FileStore.m28375a(cls, str.toLowerCase());
    }

    public static CacheManager get() {
        return Singletons.get().getCacheManager();
    }

    /* renamed from: a */
    public final void m28390a(Class<?> cls, String str) {
        m28385a(cls, str, true);
    }

    /* renamed from: a */
    public final <T> void m28389a(Class<T> cls, String str, T t) {
        m28386a((Class<String>) cls, str, (String) t, DateUtils.m27136a(1, 1).getTime(), true);
    }

    /* renamed from: a */
    public final <T> void m28388a(Class<T> cls, String str, T t, int i) {
        m28387a((Class<String>) cls, str, (String) t, Singletons.get().getApplication().getResources().getInteger(i), true);
    }

    /* renamed from: a */
    public final <T> void m28387a(Class<T> cls, String str, T t, int i, boolean z) {
        m28386a((Class<String>) cls, str, (String) t, DateUtils.m27136a(i, 12).getTime(), z);
    }

    /* renamed from: a */
    public final void m28385a(final Class<?> cls, final String str, final boolean z) {
        if (cls == null || str == null) {
            return;
        }
        this.f25925a.post(new Runnable() { // from class: com.callapp.contacts.manager.cache.CacheManager.2
            @Override // java.lang.Runnable
            public void run() {
                String m28377c = CacheManager.m28377c(cls, str);
                CacheManager.this.f25926b.remove(m28377c);
                if (z) {
                    FileStore unused = CacheManager.this.f25929e;
                    CacheDataManager.setExpires$eef1da(m28377c);
                }
            }
        });
    }

    /* renamed from: a */
    public final void m28384a(String str) {
        this.f25927c.remove(str);
    }

    /* renamed from: a */
    public final void m28383a(String str, PhotoUrlCache photoUrlCache) {
        if (StringUtils.m26059a((CharSequence) str)) {
            CLog.m27611a(CacheManager.class, "not caching for empty id");
        } else {
            this.f25927c.put(str, photoUrlCache);
        }
    }

    /* renamed from: b */
    public final <T> T m28378b(Class<? extends T> cls, String str, boolean z) {
        CachedObject<T> m28376c = m28376c(cls, str, z);
        if (m28376c == null) {
            return null;
        }
        return m28376c.getObj();
    }

    /* renamed from: b */
    public final <T> void m28379b(Class<T> cls, String str, T t, int i) {
        m28386a((Class<String>) cls, str, (String) t, DateUtils.m27136a(i, 12).getTime(), true);
    }

    /* renamed from: c */
    public final <T> CachedObject<T> m28376c(Class<? extends T> cls, String str, boolean z) {
        MemCachedObject<T> m28382a;
        if (cls == null || str == null || (m28382a = m28382a(z, m28377c(cls, str))) == null) {
            return null;
        }
        return new CachedObject<>(m28382a.getObj(), m28382a.getExpirationDate());
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        Handler handler = this.f25925a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f25928d.quit();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
