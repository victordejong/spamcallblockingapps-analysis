package com.flurry.sdk;

import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.kf */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kf.class */
public class C0459kf {

    /* renamed from: a */
    public static final String f3445a = "kf";

    /* renamed from: b */
    public WeakReference<C0496ls> f3446b;

    /* renamed from: g */
    private final AbstractC0471kp<lt> f3451g;

    /* renamed from: i */
    private String f3453i;

    /* renamed from: j */
    private String f3454j;

    /* renamed from: c */
    public volatile long f3447c = 0;

    /* renamed from: d */
    public volatile long f3448d = 0;

    /* renamed from: e */
    public volatile long f3449e = -1;

    /* renamed from: f */
    public volatile long f3450f = 0;

    /* renamed from: h */
    private volatile long f3452h = 0;

    /* renamed from: k */
    private Map<String, String> f3455k = new LinkedHashMap<String, String>() { // from class: com.flurry.sdk.kf.2
        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 10;
        }
    };

    /* renamed from: com.flurry.sdk.kf$4 */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/kf$4.class */
    public static final /* synthetic */ class C04614 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3457a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            int[] iArr = new int[lt$a.m4518a().length];
            f3457a = iArr;
            try {
                iArr[lt$a.f3568a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3457a[lt$a.f3570c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3457a[lt$a.f3571d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3457a[lt$a.f3572e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C0459kf() {
        AbstractC0471kp<?> abstractC0471kp = new 1<>(this);
        this.f3451g = abstractC0471kp;
        C0472kq.m4617a().m4613a("com.flurry.android.sdk.FlurrySessionEvent", abstractC0471kp);
    }

    /* renamed from: b */
    public static void m4659b() {
    }

    /* renamed from: a */
    public final void m4663a() {
        synchronized (this) {
            long j = lu.a().a;
            if (j > 0) {
                this.f3450f += System.currentTimeMillis() - j;
            }
        }
    }

    /* renamed from: a */
    public final void m4661a(String str) {
        synchronized (this) {
            this.f3453i = str;
        }
    }

    /* renamed from: a */
    public final void m4660a(String str, String str2) {
        synchronized (this) {
            this.f3455k.put(str, str2);
        }
    }

    /* renamed from: b */
    public final void m4657b(String str) {
        synchronized (this) {
            this.f3454j = str;
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: c */
    public final long m4656c() {
        long j;
        synchronized (this) {
            char elapsedRealtime = SystemClock.elapsedRealtime() - this.f3448d;
            if (elapsedRealtime <= this.f3452h) {
                elapsedRealtime = this.f3452h + 1;
                this.f3452h = elapsedRealtime;
            }
            this.f3452h = elapsedRealtime;
            j = this.f3452h;
        }
        return j;
    }

    /* renamed from: d */
    public final String m4655d() {
        String str;
        synchronized (this) {
            str = this.f3453i;
        }
        return str;
    }

    /* renamed from: e */
    public final String m4654e() {
        String str;
        synchronized (this) {
            str = this.f3454j;
        }
        return str;
    }

    /* renamed from: f */
    public final Map<String, String> m4653f() {
        Map<String, String> map;
        synchronized (this) {
            map = this.f3455k;
        }
        return map;
    }
}
