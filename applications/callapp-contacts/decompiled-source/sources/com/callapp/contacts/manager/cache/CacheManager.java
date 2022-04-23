package com.callapp.contacts.manager.cache;

import android.app.ActivityManager;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.b.e;
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

    /* renamed from: a  reason: collision with root package name */
    protected Handler f14992a;

    /* renamed from: b  reason: collision with root package name */
    public final e<String, MemCachedObject> f14993b;

    /* renamed from: c  reason: collision with root package name */
    public final e<String, PhotoUrlCache> f14994c;

    /* renamed from: d  reason: collision with root package name */
    private final HandlerThread f14995d;
    private final FileStore e;
    private final Object f = new Object();
    private final Map<String, Object> g = new WeakHashMap();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager$CachedObject.class */
    public static final class CachedObject<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T f15007a;

        /* renamed from: b  reason: collision with root package name */
        private final Date f15008b;

        CachedObject(T t, Date date) {
            this.f15007a = t;
            this.f15008b = date;
        }

        public final Date getExpirationDate() {
            return this.f15008b;
        }

        public final T getObj() {
            return this.f15007a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager$MemCachedObject.class */
    public static class MemCachedObject<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T f15009a;

        /* renamed from: b  reason: collision with root package name */
        private Date f15010b;

        /* renamed from: c  reason: collision with root package name */
        private final long f15011c;

        MemCachedObject(T t, long j) {
            this.f15009a = t;
            this.f15011c = j;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public MemCachedObject(T t, Date date, long j) {
            this.f15009a = t;
            this.f15010b = date;
            this.f15011c = j;
        }

        Date getExpirationDate() {
            return this.f15010b;
        }

        public T getObj() {
            return this.f15009a;
        }

        public long getSize() {
            return this.f15011c;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache.class */
    public static final class PhotoUrlCache {

        /* renamed from: a  reason: collision with root package name */
        private final String f15012a;

        /* renamed from: b  reason: collision with root package name */
        private final DataSource f15013b;

        /* renamed from: c  reason: collision with root package name */
        private final Integer f15014c;

        public PhotoUrlCache(String str, DataSource dataSource, Integer num) {
            this.f15012a = str;
            this.f15013b = dataSource;
            this.f15014c = num;
        }

        public final DataSource getDataSource() {
            return this.f15013b;
        }

        public final Integer getPhotoBGColor() {
            return this.f15014c;
        }

        public final String getPhotoUrl() {
            return this.f15012a;
        }
    }

    public CacheManager() {
        HandlerThread handlerThread = new HandlerThread(CacheManager.class.toString());
        this.f14995d = handlerThread;
        ActivityManager activityManager = (ActivityManager) CallAppApplication.get().getSystemService("activity");
        this.f14993b = new e<String, MemCachedObject>(Math.min((((CallAppApplication.get().getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 5, 26214400)) { // from class: com.callapp.contacts.manager.cache.CacheManager.1
            @Override // androidx.b.e
            public /* synthetic */ int sizeOf(String str, MemCachedObject memCachedObject) {
                return (int) memCachedObject.getSize();
            }
        };
        this.f14994c = new e<>(1000);
        this.e = new FileStore();
        handlerThread.start();
        AndroidUtils.a(handlerThread.getLooper());
        this.f14992a = new Handler(handlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> int a(Class<T> cls, T t) {
        if (cls == null) {
            return 0;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return 4;
        }
        if (cls == String.class) {
            String str = (String) t;
            if (StringUtils.b((CharSequence) str)) {
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
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e3 A[Catch: all -> 0x0109, TRY_ENTER, TryCatch #0 {, blocks: (B:22:0x0057, B:24:0x0067, B:26:0x0079, B:28:0x0081, B:34:0x0092, B:37:0x0095, B:39:0x00a4, B:41:0x00ac, B:50:0x00da, B:52:0x00e0, B:54:0x00e3, B:56:0x00eb, B:57:0x00f1, B:61:0x00f8, B:63:0x0105), top: B:71:0x0057 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> com.callapp.contacts.manager.cache.CacheManager.MemCachedObject<T> a(boolean r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.cache.CacheManager.a(boolean, java.lang.String):com.callapp.contacts.manager.cache.CacheManager$MemCachedObject");
    }

    private <T> void a(final Class<T> cls, String str, final T t, final Date date, boolean z) {
        if (cls != null && str != null && date != null) {
            final String c2 = c(cls, str);
            this.f14993b.put(c2, new MemCachedObject(t, date, a(cls, t)));
            if (z) {
                final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.manager.cache.CacheManager.3
                    @Override // java.lang.Runnable
                    public void run() {
                        CacheDataManager.a(CacheManager.this.e, c2, date, cls, t);
                    }
                };
                if (!CallAppApplication.get().isUnitTestMode()) {
                    this.f14992a.post(runnable);
                } else {
                    new Task() { // from class: com.callapp.contacts.manager.cache.CacheManager.4
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            runnable.run();
                        }
                    }.execute();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(Class<?> cls, String str) {
        return FileStore.a(cls, str.toLowerCase());
    }

    public static CacheManager get() {
        return Singletons.get().getCacheManager();
    }

    public final void a(Class<?> cls, String str) {
        a(cls, str, true);
    }

    public final <T> void a(Class<T> cls, String str, T t) {
        a((Class<String>) cls, str, (String) t, DateUtils.a(1, 1).getTime(), true);
    }

    public final <T> void a(Class<T> cls, String str, T t, int i) {
        a((Class<String>) cls, str, (String) t, Singletons.get().getApplication().getResources().getInteger(i), true);
    }

    public final <T> void a(Class<T> cls, String str, T t, int i, boolean z) {
        a((Class<String>) cls, str, (String) t, DateUtils.a(i, 12).getTime(), z);
    }

    public final void a(final Class<?> cls, final String str, final boolean z) {
        if (cls != null && str != null) {
            this.f14992a.post(new Runnable() { // from class: com.callapp.contacts.manager.cache.CacheManager.2
                @Override // java.lang.Runnable
                public void run() {
                    String c2 = CacheManager.c(cls, str);
                    CacheManager.this.f14993b.remove(c2);
                    if (z) {
                        FileStore unused = CacheManager.this.e;
                        CacheDataManager.setExpires$eef1da(c2);
                    }
                }
            });
        }
    }

    public final void a(String str) {
        this.f14994c.remove(str);
    }

    public final void a(String str, PhotoUrlCache photoUrlCache) {
        if (StringUtils.a((CharSequence) str)) {
            CLog.a(CacheManager.class, "not caching for empty id");
        } else {
            this.f14994c.put(str, photoUrlCache);
        }
    }

    public final <T> T b(Class<? extends T> cls, String str, boolean z) {
        CachedObject<T> c2 = c(cls, str, z);
        if (c2 == null) {
            return null;
        }
        return c2.getObj();
    }

    public final <T> void b(Class<T> cls, String str, T t, int i) {
        a((Class<String>) cls, str, (String) t, DateUtils.a(i, 12).getTime(), true);
    }

    public final <T> CachedObject<T> c(Class<? extends T> cls, String str, boolean z) {
        MemCachedObject<T> a2;
        if (cls == null || str == null || (a2 = a(z, c(cls, str))) == null) {
            return null;
        }
        return new CachedObject<>(a2.getObj(), a2.getExpirationDate());
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        Handler handler = this.f14992a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f14995d.quit();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
