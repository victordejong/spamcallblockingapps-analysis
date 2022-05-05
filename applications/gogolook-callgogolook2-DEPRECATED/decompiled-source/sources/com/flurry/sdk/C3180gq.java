package com.flurry.sdk;

import android.content.Context;
import com.flurry.android.FlurryEventRecordStatus;
import com.flurry.sdk.C3423kp;
import com.flurry.sdk.C3425kq;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
/* renamed from: com.flurry.sdk.gq */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gq.class */
public class C3180gq implements AbstractC3360ju {

    /* renamed from: e */
    public static final String f5242e = "gq";

    /* renamed from: a */
    public C3207hl f5243a;

    /* renamed from: b */
    public C3263id f5244b;

    /* renamed from: c */
    public C3221hn f5245c;

    /* renamed from: d */
    public boolean f5246d = false;

    /* renamed from: f */
    public final Object f5247f = new Object();

    /* renamed from: g */
    public Queue<C3179gp> f5248g = new LinkedList();

    /* renamed from: h */
    public Queue<C3179gp> f5249h = new LinkedList();

    /* renamed from: i */
    public Queue<C3178go> f5250i = new LinkedList();

    /* renamed from: j */
    public final AbstractC3344jl<C3425kq> f5251j = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.sdk.gq.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3425kq kqVar) {
            if (C31822.f5253a[kqVar.f5861c - 1] == 1) {
                C3180gq.m32931a(C3180gq.this);
            }
        }
    };

    /* renamed from: com.flurry.sdk.gq$2 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gq$2.class */
    public static final /* synthetic */ class C31822 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5253a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f5254b = new int[C3423kp.EnumC3424a.m32519a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003b -> B:16:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003f -> B:22:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0043 -> B:8:0x0027). Please submit an issue!!! */
        static {
            try {
                f5254b[C3423kp.EnumC3424a.f5855a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5254b[C3423kp.EnumC3424a.f5856b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5254b[C3423kp.EnumC3424a.f5857c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            f5253a = new int[C3425kq.EnumC3426a.m32518a().length];
            try {
                f5253a[C3425kq.EnumC3426a.f5868f - 1] = 1;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static C3180gq m32933a() {
        C3180gq gqVar;
        synchronized (C3180gq.class) {
            try {
                gqVar = (C3180gq) C3331jb.m32681a().m32679a(C3180gq.class);
            } catch (Throwable th) {
                throw th;
            }
        }
        return gqVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m32931a(C3180gq gqVar) {
        C3356jq.m32613a(f5242e, "Flushing deferred events queues.");
        synchronized (gqVar.f5247f) {
            while (gqVar.f5248g.peek() != null) {
                m32924b(gqVar.f5248g.poll());
            }
            while (gqVar.f5250i.peek() != null) {
                m32925b(gqVar.f5250i.poll());
            }
            while (gqVar.f5249h.peek() != null) {
                m32922c(gqVar.f5249h.poll());
            }
        }
    }

    /* renamed from: b */
    public static FlurryEventRecordStatus m32924b(C3179gp gpVar) {
        C3272ih b = m32926b();
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (b != null) {
            flurryEventRecordStatus = b.m32772a(gpVar.f5238a, gpVar.f5239b, gpVar.f5240c, gpVar.f5241d);
        }
        return flurryEventRecordStatus;
    }

    /* renamed from: b */
    public static C3272ih m32926b() {
        C3423kp e = C3427kr.m32517a().m32505e();
        if (e == null) {
            return null;
        }
        return (C3272ih) e.m32520b(C3272ih.class);
    }

    /* renamed from: b */
    public static void m32925b(C3178go goVar) {
        C3272ih b = m32926b();
        if (b != null) {
            b.m32777a(goVar);
        }
    }

    /* renamed from: c */
    public static void m32922c(C3179gp gpVar) {
        C3272ih b = m32926b();
        if (b != null) {
            b.m32773a(gpVar.f5238a, gpVar.f5239b);
        }
    }

    /* renamed from: a */
    public final FlurryEventRecordStatus m32929a(String str, Map<String, String> map, int i) {
        return m32927a(str, map, false, i);
    }

    /* renamed from: a */
    public final FlurryEventRecordStatus m32928a(String str, Map<String, String> map, boolean z) {
        return m32927a(str, map, z, 0);
    }

    /* renamed from: a */
    public final FlurryEventRecordStatus m32927a(String str, Map<String, String> map, boolean z, int i) {
        C3179gp gpVar = new C3179gp(str, map, z, i);
        synchronized (this.f5247f) {
            int i2 = C31822.f5254b[m32923c() - 1];
            if (i2 == 1) {
                String str2 = f5242e;
                C3356jq.m32609b(str2, "Must start a Flurry session before logging event: " + gpVar.f5238a);
                return FlurryEventRecordStatus.kFlurryEventFailed;
            } else if (i2 == 2) {
                String str3 = f5242e;
                C3356jq.m32613a(str3, "Waiting for Flurry session to initialize before logging event: " + gpVar.f5238a);
                this.f5248g.add(gpVar);
                return FlurryEventRecordStatus.kFlurryEventLoggingDelayed;
            } else if (i2 != 3) {
                return FlurryEventRecordStatus.kFlurryEventFailed;
            } else {
                return m32924b(gpVar);
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3360ju
    /* renamed from: a */
    public final void mo32356a(Context context) {
        C3423kp.m32522a(C3272ih.class);
        this.f5244b = new C3263id();
        this.f5243a = new C3207hl();
        this.f5245c = new C3221hn();
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", this.f5251j);
        if (!C3445la.m32467a(context, "android.permission.INTERNET")) {
            C3356jq.m32609b(f5242e, "Application must declare permission: android.permission.INTERNET");
        }
        if (!C3445la.m32467a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            C3356jq.m32602e(f5242e, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE");
        }
        int identifier = context.getResources().getIdentifier("FLURRY_IS_YAHOO_APP", "bool", context.getPackageName());
        if (identifier != 0) {
            this.f5246d = context.getResources().getBoolean(identifier);
            String str = f5242e;
            C3356jq.m32606c(str, "Found FLURRY_IS_YAHOO_APP resource id. Value: " + this.f5246d);
        }
    }

    /* renamed from: a */
    public final void m32932a(C3178go goVar) {
        synchronized (this.f5247f) {
            int i = C31822.f5254b[m32923c() - 1];
            if (i == 1) {
                String str = f5242e;
                C3356jq.m32609b(str, "Must start a Flurry session before logging error: " + goVar.f5232a);
            } else if (i == 2) {
                String str2 = f5242e;
                C3356jq.m32613a(str2, "Waiting for Flurry session to initialize before logging error: " + goVar.f5232a);
                this.f5250i.add(goVar);
            } else if (i == 3) {
                m32925b(goVar);
            }
        }
    }

    /* renamed from: a */
    public final void m32930a(String str, String str2, Throwable th) {
        m32932a(new C3178go(str, str2, th.getClass().getName(), th, C3453lg.m32427a(str != null && "uncaught".equals(str))));
    }

    /* renamed from: c */
    public final int m32923c() {
        int d;
        synchronized (this) {
            d = C3427kr.m32517a().m32507d();
        }
        return d;
    }
}
