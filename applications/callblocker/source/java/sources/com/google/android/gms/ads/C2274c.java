package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.p119b.AbstractC2259g;
import com.google.android.gms.ads.p119b.AbstractC2261h;
import com.google.android.gms.ads.p119b.AbstractC2263i;
import com.google.android.gms.ads.p119b.AbstractC2267k;
import com.google.android.gms.ads.p119b.C2255d;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.ads.BinderC3103ea;
import com.google.android.gms.internal.ads.BinderC3105ec;
import com.google.android.gms.internal.ads.BinderC3106ed;
import com.google.android.gms.internal.ads.BinderC3107ee;
import com.google.android.gms.internal.ads.BinderC3108ef;
import com.google.android.gms.internal.ads.BinderC3277kl;
import com.google.android.gms.internal.ads.C2835bl;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.dxw;
import com.google.android.gms.internal.ads.dyb;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.dzf;
import com.google.android.gms.internal.ads.dzg;
import com.google.android.gms.internal.ads.ebi;
/* renamed from: com.google.android.gms.ads.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c.class */
public class C2274c {

    /* renamed from: a */
    private final dyb f6569a;

    /* renamed from: b */
    private final Context f6570b;

    /* renamed from: c */
    private final dzf f6571c;

    /* renamed from: com.google.android.gms.ads.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c$a.class */
    public static class C2275a {

        /* renamed from: a */
        private final Context f6572a;

        /* renamed from: b */
        private final dzg f6573b;

        private C2275a(Context context, dzg dzgVar) {
            this.f6572a = context;
            this.f6573b = dzgVar;
        }

        public C2275a(Context context, String str) {
            this((Context) C2662s.m13980a(context, "context cannot be null"), dyx.m8161b().m8182a(context, str, new BinderC3277kl()));
        }

        /* renamed from: a */
        public C2275a m14862a(C2255d c2255d) {
            try {
                this.f6573b.mo7985a(new C2835bl(c2255d));
            } catch (RemoteException e) {
                C3645yb.m6746d("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public C2275a m14861a(AbstractC2259g.AbstractC2260a abstractC2260a) {
            try {
                this.f6573b.mo7984a(new BinderC3103ea(abstractC2260a));
            } catch (RemoteException e) {
                C3645yb.m6746d("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public C2275a m14860a(AbstractC2261h.AbstractC2262a abstractC2262a) {
            try {
                this.f6573b.mo7983a(new BinderC3106ed(abstractC2262a));
            } catch (RemoteException e) {
                C3645yb.m6746d("Failed to add content ad listener", e);
            }
            return this;
        }

        /* renamed from: a */
        public C2275a m14859a(AbstractC2267k.AbstractC2268a abstractC2268a) {
            try {
                this.f6573b.mo7981a(new BinderC3108ef(abstractC2268a));
            } catch (RemoteException e) {
                C3645yb.m6746d("Failed to add google native ad listener", e);
            }
            return this;
        }

        /* renamed from: a */
        public C2275a m14858a(C2249b c2249b) {
            try {
                this.f6573b.mo7980a(new dxw(c2249b));
            } catch (RemoteException e) {
                C3645yb.m6746d("Failed to set AdListener.", e);
            }
            return this;
        }

        /* renamed from: a */
        public C2275a m14856a(String str, AbstractC2263i.AbstractC2265b abstractC2265b, AbstractC2263i.AbstractC2264a abstractC2264a) {
            try {
                this.f6573b.mo7975a(str, new BinderC3107ee(abstractC2265b), abstractC2264a == null ? null : new BinderC3105ec(abstractC2264a));
            } catch (RemoteException e) {
                C3645yb.m6746d("Failed to add custom template ad listener", e);
            }
            return this;
        }

        /* renamed from: a */
        public C2274c m14867a() {
            C2274c c2274c;
            try {
                c2274c = new C2274c(this.f6572a, this.f6573b.mo7987a());
            } catch (RemoteException e) {
                C3645yb.m6748c("Failed to build AdLoader.", e);
                c2274c = null;
            }
            return c2274c;
        }
    }

    C2274c(Context context, dzf dzfVar) {
        this(context, dzfVar, dyb.f16089a);
    }

    private C2274c(Context context, dzf dzfVar, dyb dybVar) {
        this.f6570b = context;
        this.f6571c = dzfVar;
        this.f6569a = dybVar;
    }

    /* renamed from: a */
    private final void m14868a(ebi ebiVar) {
        try {
            this.f6571c.mo7972a(dyb.m8196a(this.f6570b, ebiVar));
        } catch (RemoteException e) {
            C3645yb.m6748c("Failed to load ad.", e);
        }
    }

    /* renamed from: a */
    public void m14869a(C2282d c2282d) {
        m14868a(c2282d.m14842a());
    }
}
