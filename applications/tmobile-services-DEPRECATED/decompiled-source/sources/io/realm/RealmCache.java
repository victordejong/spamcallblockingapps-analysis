package io.realm;

import android.os.SystemClock;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Util;
import io.realm.internal.util.Pair;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/RealmCache.class */
public final class RealmCache {

    /* renamed from: e */
    private static final List<WeakReference<RealmCache>> f19876e = new ArrayList();

    /* renamed from: f */
    private static final Collection<RealmCache> f19877f = new ConcurrentLinkedQueue();

    /* renamed from: b */
    private final String f19879b;

    /* renamed from: c */
    private RealmConfiguration f19880c;

    /* renamed from: a */
    private final Map<Pair<RealmCacheType, OsSharedRealm.VersionID>, ReferenceCounter> f19878a = new HashMap();

    /* renamed from: d */
    private final AtomicBoolean f19881d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$Callback.class */
    public interface Callback {
        /* renamed from: a */
        void mo3012a(int i);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$Callback0.class */
    interface Callback0 {
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$CreateRealmRunnable.class */
    private static class CreateRealmRunnable<T extends BaseRealm> implements Runnable {

        /* renamed from: f */
        private final RealmConfiguration f19886f;

        /* renamed from: g */
        private final BaseRealm.InstanceCallback<T> f19887g;

        /* renamed from: h */
        private final Class<T> f19888h;

        /* renamed from: i */
        private final CountDownLatch f19889i;

        /* renamed from: j */
        private final RealmNotifier f19890j;

        /* renamed from: k */
        private Future f19891k;

        /* JADX WARN: Not initialized variable reg: 8, insn: 0x00cd: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x00cd */
        @Override // java.lang.Runnable
        public void run() {
            AutoCloseable autoCloseable;
            BaseRealm e;
            BaseRealm baseRealm = null;
            BaseRealm baseRealm2 = null;
            try {
                try {
                    e = RealmCache.m3027e(this.f19886f, this.f19888h);
                    if (!this.f19890j.post(new Runnable() { // from class: io.realm.RealmCache.CreateRealmRunnable.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            Throwable th;
                            if (CreateRealmRunnable.this.f19891k == null || CreateRealmRunnable.this.f19891k.isCancelled()) {
                                CreateRealmRunnable.this.f19889i.countDown();
                                return;
                            }
                            BaseRealm baseRealm3 = null;
                            try {
                                baseRealm3 = RealmCache.m3027e(CreateRealmRunnable.this.f19886f, CreateRealmRunnable.this.f19888h);
                                CreateRealmRunnable.this.f19889i.countDown();
                                th = null;
                            } catch (Throwable th2) {
                                th = th2;
                                CreateRealmRunnable.this.f19889i.countDown();
                            }
                            if (baseRealm3 != null) {
                                CreateRealmRunnable.this.f19887g.mo3039b(baseRealm3);
                            } else {
                                CreateRealmRunnable.this.f19887g.mo3040a(th);
                            }
                        }
                    })) {
                        this.f19889i.countDown();
                    }
                    if (!this.f19889i.await(2L, TimeUnit.SECONDS)) {
                        baseRealm2 = e;
                        baseRealm = e;
                        RealmLog.m2529g("Timeout for creating Realm instance in foreground thread in `CreateRealmRunnable` ", new Object[0]);
                    }
                } catch (Throwable th) {
                    if (autoCloseable != null) {
                        autoCloseable.close();
                    }
                    throw th;
                }
            } catch (InterruptedException e2) {
                RealmLog.m2528h(e2, "`CreateRealmRunnable` has been interrupted.", new Object[0]);
                if (baseRealm != null) {
                    baseRealm2 = baseRealm;
                } else {
                    return;
                }
            } catch (Throwable th2) {
                if (!ObjectServerFacade.m2817e().m2811k(th2)) {
                    RealmLog.m2534b(th2, "`CreateRealmRunnable` failed.", new Object[0]);
                    this.f19890j.post(new Runnable() { // from class: io.realm.RealmCache.CreateRealmRunnable.2
                        @Override // java.lang.Runnable
                        public void run() {
                            CreateRealmRunnable.this.f19887g.mo3040a(th2);
                        }
                    });
                }
                if (baseRealm2 == null) {
                    return;
                }
            }
            if (e != null) {
                baseRealm2 = e;
                baseRealm2.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$GlobalReferenceCounter.class */
    public static class GlobalReferenceCounter extends ReferenceCounter {

        /* renamed from: c */
        private BaseRealm f19895c;

        private GlobalReferenceCounter() {
            super();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: a */
        public void mo3003a() {
            String K = this.f19895c.m3163K();
            this.f19896a.set(null);
            this.f19895c = null;
            if (this.f19897b.decrementAndGet() < 0) {
                throw new IllegalStateException("Global reference counter of Realm" + K + " not be negative.");
            }
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: c */
        BaseRealm mo3002c() {
            return this.f19895c;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: d */
        int mo3001d() {
            return this.f19897b.get();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: e */
        boolean mo3000e() {
            return this.f19895c != null;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: g */
        void mo2999g(BaseRealm baseRealm) {
            this.f19895c = baseRealm;
            this.f19896a.set(0);
            this.f19897b.incrementAndGet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$RealmCacheType.class */
    public enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        static RealmCacheType valueOf(Class<? extends BaseRealm> cls) {
            if (cls == Realm.class) {
                return TYPED_REALM;
            }
            if (cls == DynamicRealm.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$ReferenceCounter.class */
    public static abstract class ReferenceCounter {

        /* renamed from: a */
        protected final ThreadLocal<Integer> f19896a;

        /* renamed from: b */
        protected AtomicInteger f19897b;

        private ReferenceCounter() {
            this.f19896a = new ThreadLocal<>();
            this.f19897b = new AtomicInteger(0);
        }

        /* renamed from: a */
        abstract void mo3003a();

        /* renamed from: b */
        public int m3006b() {
            return this.f19897b.get();
        }

        /* renamed from: c */
        abstract BaseRealm mo3002c();

        /* renamed from: d */
        abstract int mo3001d();

        /* renamed from: e */
        abstract boolean mo3000e();

        /* renamed from: f */
        public void m3005f(int i) {
            Integer num = this.f19896a.get();
            ThreadLocal<Integer> threadLocal = this.f19896a;
            int i2 = i;
            if (num != null) {
                i2 = i + num.intValue();
            }
            threadLocal.set(Integer.valueOf(i2));
        }

        /* renamed from: g */
        abstract void mo2999g(BaseRealm baseRealm);

        /* renamed from: h */
        public void m3004h(int i) {
            this.f19896a.set(Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$ThreadConfinedReferenceCounter.class */
    public static class ThreadConfinedReferenceCounter extends ReferenceCounter {

        /* renamed from: c */
        private final ThreadLocal<BaseRealm> f19898c;

        private ThreadConfinedReferenceCounter() {
            super();
            this.f19898c = new ThreadLocal<>();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: a */
        public void mo3003a() {
            String K = this.f19898c.get().m3163K();
            this.f19896a.set(null);
            this.f19898c.set(null);
            if (this.f19897b.decrementAndGet() < 0) {
                throw new IllegalStateException("Global reference counter of Realm" + K + " can not be negative.");
            }
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: c */
        public BaseRealm mo3002c() {
            return this.f19898c.get();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: d */
        public int mo3001d() {
            Integer num = this.f19896a.get();
            return num != null ? num.intValue() : 0;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: e */
        public boolean mo3000e() {
            return this.f19898c.get() != null;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        /* renamed from: g */
        public void mo2999g(BaseRealm baseRealm) {
            this.f19898c.set(baseRealm);
            this.f19896a.set(0);
            this.f19897b.incrementAndGet();
        }
    }

    private RealmCache(String str) {
        this.f19879b = str;
    }

    /* renamed from: b */
    private static void m3030b(final RealmConfiguration realmConfiguration) {
        final File file = realmConfiguration.m2981r() ? new File(realmConfiguration.m2986m(), realmConfiguration.m2985n()) : null;
        final String f = ObjectServerFacade.m2819c(realmConfiguration.m2977v()).m2816f(realmConfiguration);
        final boolean z = !Util.m2596d(f);
        if (file != null || z) {
            OsObjectStore.m2745a(realmConfiguration, new Runnable() { // from class: io.realm.RealmCache.1
                @Override // java.lang.Runnable
                public void run() {
                    if (file != null) {
                        RealmCache.m3029c(realmConfiguration.m2996c(), file);
                    }
                    if (z) {
                        RealmCache.m3029c(f, new File(ObjectServerFacade.m2819c(realmConfiguration.m2977v()).m2815g(realmConfiguration)));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0147: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:64:0x0147 */
    /* renamed from: c */
    public static void m3029c(String str, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream2;
        IOException e2;
        if (!file.exists()) {
            try {
                try {
                    inputStream = BaseRealm.f19803m.getAssets().open(str);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
                inputStream = null;
                fileOutputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
                fileOutputStream = null;
            }
            try {
                if (inputStream != null) {
                    FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= -1) {
                                break;
                            }
                            fileOutputStream3.write(bArr, 0, read);
                        }
                        IOException e4 = null;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                                e4 = null;
                            } catch (IOException e5) {
                                e4 = e5;
                            }
                        }
                        try {
                            fileOutputStream3.close();
                            e2 = e4;
                        } catch (IOException e6) {
                            e2 = e6;
                            e2 = e4;
                            if (e4 == null) {
                            }
                        }
                        if (e2 != null) {
                            throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, e2);
                        }
                    } catch (IOException e7) {
                        e = e7;
                        fileOutputStream2 = fileOutputStream3;
                        RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Could not resolve the path to the asset file: ");
                        sb.append(str);
                        throw new RealmFileException(kind, sb.toString(), e);
                    }
                } else {
                    throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Invalid input stream to the asset file: " + str);
                }
            } catch (IOException e8) {
                e = e8;
                fileOutputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e9) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e10) {
                    }
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private <E extends BaseRealm> void m3028d(Class<E> cls, ReferenceCounter referenceCounter, boolean z, OsSharedRealm.VersionID versionID) {
        DynamicRealm dynamicRealm;
        if (cls == Realm.class) {
            Realm y0 = Realm.m3042y0(this, versionID);
            m3014r(y0, z);
            dynamicRealm = y0;
        } else if (cls == DynamicRealm.class) {
            dynamicRealm = DynamicRealm.m3130e0(this, versionID);
        } else {
            throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
        }
        referenceCounter.mo2999g(dynamicRealm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static <E extends BaseRealm> E m3027e(RealmConfiguration realmConfiguration, Class<E> cls) {
        return (E) m3022j(realmConfiguration.m2987l(), true).m3024h(realmConfiguration, cls, OsSharedRealm.VersionID.f20158h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static <E extends BaseRealm> E m3026f(RealmConfiguration realmConfiguration, Class<E> cls, OsSharedRealm.VersionID versionID) {
        return (E) m3022j(realmConfiguration.m2987l(), true).m3024h(realmConfiguration, cls, versionID);
    }

    /* renamed from: g */
    private static void m3025g(RealmConfiguration realmConfiguration) {
        int i = 5;
        boolean z = false;
        while (i > 0 && !z) {
            try {
                z = BaseRealm.m3145p(realmConfiguration);
            } catch (IllegalStateException e) {
                int i2 = i - 1;
                RealmLog.m2529g("Sync server still holds a reference to the Realm. It cannot be deleted. Retrying " + i2 + " more times", new Object[0]);
                i = i2;
                z = z;
                if (i2 > 0) {
                    SystemClock.sleep(15L);
                    i = i2;
                    z = z;
                }
            }
        }
        if (!z) {
            RealmLog.m2535a("Failed to delete the underlying Realm file: " + realmConfiguration.m2987l(), new Object[0]);
        }
    }

    /* renamed from: h */
    private <E extends BaseRealm> E m3024h(RealmConfiguration realmConfiguration, Class<E> cls, OsSharedRealm.VersionID versionID) {
        E e;
        synchronized (this) {
            ReferenceCounter l = m3020l(cls, versionID);
            boolean z = m3019m() == 0;
            boolean z2 = !realmConfiguration.m2976w();
            if (z) {
                m3030b(realmConfiguration);
                AutoCloseable autoCloseable = null;
                OsSharedRealm osSharedRealm = null;
                try {
                    if (realmConfiguration.m2977v()) {
                        osSharedRealm = null;
                        if (z2) {
                            ObjectServerFacade.m2817e().m2810l(new OsRealmConfig.Builder(realmConfiguration).m2736b());
                            if (ObjectServerFacade.m2817e().m2813i(realmConfiguration)) {
                                osSharedRealm = OsSharedRealm.getInstance(realmConfiguration, OsSharedRealm.VersionID.f20158h);
                                ObjectServerFacade.m2817e().m2821a(realmConfiguration);
                            } else {
                                ObjectServerFacade.m2817e().m2821a(realmConfiguration);
                                osSharedRealm = null;
                            }
                        }
                    }
                    if (osSharedRealm != null) {
                        osSharedRealm.close();
                    }
                    this.f19880c = realmConfiguration;
                } catch (Throwable th) {
                    if (0 != 0) {
                        autoCloseable.close();
                    }
                    throw th;
                }
            } else {
                m3013s(realmConfiguration);
            }
            if (!l.mo3000e()) {
                m3028d(cls, l, z2, versionID);
            }
            l.m3005f(1);
            e = (E) l.mo3002c();
        }
        return e;
    }

    /* renamed from: i */
    private void m3023i(Callback callback) {
        synchronized (this) {
            callback.mo3012a(m3019m());
        }
    }

    /* renamed from: j */
    private static RealmCache m3022j(String str, boolean z) {
        RealmCache realmCache;
        synchronized (f19876e) {
            Iterator<WeakReference<RealmCache>> it = f19876e.iterator();
            RealmCache realmCache2 = null;
            while (it.hasNext()) {
                RealmCache realmCache3 = it.next().get();
                if (realmCache3 == null) {
                    it.remove();
                } else if (realmCache3.f19879b.equals(str)) {
                    realmCache2 = realmCache3;
                }
            }
            realmCache = realmCache2;
            if (realmCache2 == null) {
                realmCache = realmCache2;
                if (z) {
                    realmCache = new RealmCache(str);
                    f19876e.add(new WeakReference<>(realmCache));
                }
            }
        }
        return realmCache;
    }

    /* renamed from: l */
    private <E extends BaseRealm> ReferenceCounter m3020l(Class<E> cls, OsSharedRealm.VersionID versionID) {
        Pair<RealmCacheType, OsSharedRealm.VersionID> pair = new Pair<>(RealmCacheType.valueOf(cls), versionID);
        ReferenceCounter referenceCounter = this.f19878a.get(pair);
        ReferenceCounter referenceCounter2 = referenceCounter;
        if (referenceCounter == null) {
            referenceCounter2 = versionID.equals(OsSharedRealm.VersionID.f20158h) ? new ThreadConfinedReferenceCounter() : new GlobalReferenceCounter();
            this.f19878a.put(pair, referenceCounter2);
        }
        return referenceCounter2;
    }

    /* renamed from: m */
    private int m3019m() {
        int i = 0;
        for (ReferenceCounter referenceCounter : this.f19878a.values()) {
            i += referenceCounter.m3006b();
        }
        return i;
    }

    /* renamed from: n */
    private int m3018n() {
        int i = 0;
        for (ReferenceCounter referenceCounter : this.f19878a.values()) {
            if (referenceCounter instanceof ThreadConfinedReferenceCounter) {
                i += referenceCounter.m3006b();
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static void m3017o(RealmConfiguration realmConfiguration, Callback callback) {
        synchronized (f19876e) {
            RealmCache j = m3022j(realmConfiguration.m2987l(), false);
            if (j == null) {
                callback.mo3012a(0);
            } else {
                j.m3023i(callback);
            }
        }
    }

    /* renamed from: r */
    private static void m3014r(Realm realm, boolean z) {
        if (z) {
            try {
                ObjectServerFacade.m2817e().m2820b(realm);
            } catch (Throwable th) {
                realm.close();
                m3025g(realm.m3164J());
            }
        }
    }

    /* renamed from: s */
    private void m3013s(RealmConfiguration realmConfiguration) {
        if (!this.f19880c.equals(realmConfiguration)) {
            if (Arrays.equals(this.f19880c.m2992g(), realmConfiguration.m2992g())) {
                RealmMigration j = realmConfiguration.m2989j();
                RealmMigration j2 = this.f19880c.m2989j();
                if (j2 == null || j == null || !j2.getClass().equals(j.getClass()) || j.equals(j2)) {
                    throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.f19880c + "\n\nNew configuration: \n" + realmConfiguration);
                }
                throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + realmConfiguration.m2989j().getClass().getCanonicalName());
            }
            throw new IllegalArgumentException("Wrong key used to decrypt Realm.");
        }
    }

    /* renamed from: k */
    public RealmConfiguration m3021k() {
        return this.f19880c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m3016p() {
        if (!this.f19881d.getAndSet(true)) {
            f19877f.add(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m3015q(BaseRealm baseRealm) {
        BaseRealm c;
        synchronized (this) {
            String K = baseRealm.m3163K();
            ReferenceCounter l = m3020l(baseRealm.getClass(), baseRealm.m3160W() ? baseRealm.f19809j.getVersionID() : OsSharedRealm.VersionID.f20158h);
            int d = l.mo3001d();
            if (d <= 0) {
                RealmLog.m2529g("%s has been closed already. refCount is %s", K, Integer.valueOf(d));
                return;
            }
            int i = d - 1;
            if (i == 0) {
                l.mo3003a();
                baseRealm.m3144q();
                if (m3018n() == 0) {
                    this.f19880c = null;
                    for (ReferenceCounter referenceCounter : this.f19878a.values()) {
                        if ((referenceCounter instanceof GlobalReferenceCounter) && (c = referenceCounter.mo3002c()) != null) {
                            while (!c.isClosed()) {
                                c.close();
                            }
                        }
                    }
                    ObjectServerFacade.m2819c(baseRealm.m3164J().m2977v()).m2812j(baseRealm.m3164J());
                }
            } else {
                l.m3004h(i);
            }
        }
    }
}
