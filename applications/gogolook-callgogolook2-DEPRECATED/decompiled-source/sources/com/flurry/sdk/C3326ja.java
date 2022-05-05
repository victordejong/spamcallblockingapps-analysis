package com.flurry.sdk;

import android.os.SystemClock;
import com.flurry.sdk.C3425kq;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.ja */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ja.class */
public class C3326ja {

    /* renamed from: a */
    public WeakReference<C3423kp> f5664a;

    /* renamed from: i */
    public String f5671i;

    /* renamed from: j */
    public String f5672j;

    /* renamed from: b */
    public volatile long f5665b = 0;

    /* renamed from: c */
    public volatile long f5666c = 0;

    /* renamed from: d */
    public volatile long f5667d = -1;

    /* renamed from: e */
    public volatile long f5668e = 0;

    /* renamed from: g */
    public final AbstractC3344jl<C3425kq> f5669g = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.sdk.ja.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3425kq kqVar) {
            C3425kq kqVar2 = kqVar;
            if (C3326ja.this.f5664a == null || kqVar2.f5860b == C3326ja.this.f5664a.get()) {
                int i = C33304.f5675a[kqVar2.f5861c - 1];
                if (i == 1) {
                    C3326ja jaVar = C3326ja.this;
                    C3423kp kpVar = kqVar2.f5860b;
                    kqVar2.f5859a.get();
                    jaVar.f5664a = new WeakReference<>(kpVar);
                    jaVar.f5665b = System.currentTimeMillis();
                    jaVar.f5666c = SystemClock.elapsedRealtime();
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(jaVar) { // from class: com.flurry.sdk.ja.3
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3306ip.m32731a().m32720e();
                        }
                    });
                } else if (i == 2) {
                    C3326ja jaVar2 = C3326ja.this;
                    kqVar2.f5859a.get();
                    jaVar2.m32689a();
                } else if (i == 3) {
                    C3326ja jaVar3 = C3326ja.this;
                    kqVar2.f5859a.get();
                    jaVar3.f5667d = SystemClock.elapsedRealtime() - jaVar3.f5666c;
                } else if (i == 4) {
                    C3345jm.m32636a().m32630b("com.flurry.android.sdk.FlurrySessionEvent", C3326ja.this.f5669g);
                    C3326ja.m32687b();
                }
            }
        }
    };

    /* renamed from: h */
    public volatile long f5670h = 0;

    /* renamed from: k */
    public Map<String, String> f5673k = new LinkedHashMap<String, String>(this) { // from class: com.flurry.sdk.ja.2
        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 10;
        }
    };

    /* renamed from: com.flurry.sdk.ja$4 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ja$4.class */
    public static final /* synthetic */ class C33304 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5675a = new int[C3425kq.EnumC3426a.m32518a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            try {
                f5675a[C3425kq.EnumC3426a.f5863a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5675a[C3425kq.EnumC3426a.f5865c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5675a[C3425kq.EnumC3426a.f5866d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5675a[C3425kq.EnumC3426a.f5867e - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C3326ja() {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", this.f5669g);
    }

    /* renamed from: b */
    public static void m32687b() {
    }

    /* renamed from: a */
    public final void m32689a() {
        synchronized (this) {
            long j = C3427kr.m32517a().f5872a;
            if (j > 0) {
                this.f5668e += System.currentTimeMillis() - j;
            }
        }
    }

    /* renamed from: c */
    public final long m32685c() {
        long j;
        synchronized (this) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f5666c;
            if (elapsedRealtime <= this.f5670h) {
                elapsedRealtime = this.f5670h + 1;
                this.f5670h = elapsedRealtime;
            }
            this.f5670h = elapsedRealtime;
            j = this.f5670h;
        }
        return j;
    }

    /* renamed from: d */
    public final String m32684d() {
        String str;
        synchronized (this) {
            str = this.f5671i;
        }
        return str;
    }

    /* renamed from: e */
    public final String m32683e() {
        String str;
        synchronized (this) {
            str = this.f5672j;
        }
        return str;
    }

    /* renamed from: f */
    public final Map<String, String> m32682f() {
        Map<String, String> map;
        synchronized (this) {
            map = this.f5673k;
        }
        return map;
    }
}
