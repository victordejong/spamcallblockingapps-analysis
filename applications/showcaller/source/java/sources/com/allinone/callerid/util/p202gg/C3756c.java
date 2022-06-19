package com.allinone.callerid.util.p202gg;

import android.content.Context;
import android.os.Bundle;
import com.allinone.callerid.util.C3718c0;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
/* renamed from: com.allinone.callerid.util.gg.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/c.class */
public class C3756c {

    /* renamed from: a */
    private static volatile C3756c f11972a;

    /* renamed from: b */
    private AbstractC5796a f11973b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.gg.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/c$a.class */
    public class C3757a implements AbstractC5796a.AbstractC5799c {

        /* renamed from: a */
        final /* synthetic */ AbstractC3759c f11974a;

        C3757a(AbstractC3759c abstractC3759c) {
            C3756c.this = r4;
            this.f11974a = abstractC3759c;
        }

        @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
        /* renamed from: a */
        public void mo17848a(AbstractC5796a abstractC5796a) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onNativeAdLoaded");
            }
            C3756c.this.f11973b = abstractC5796a;
            AbstractC3759c abstractC3759c = this.f11974a;
            if (abstractC3759c != null) {
                abstractC3759c.mo24327a(abstractC5796a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.gg.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/c$b.class */
    public class C3758b extends AbstractC5596b {

        /* renamed from: a */
        final /* synthetic */ AbstractC3759c f11976a;

        C3758b(AbstractC3759c abstractC3759c) {
            C3756c.this = r4;
            this.f11976a = abstractC3759c;
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: m */
        public void mo9080m() {
            super.mo9080m();
            AbstractC3759c abstractC3759c = this.f11976a;
            if (abstractC3759c != null) {
                abstractC3759c.mo24326b();
            }
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: n */
        public void mo9079n(C5756j c5756j) {
            super.mo9079n(c5756j);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onAdFailedToLoad:" + c5756j.toString());
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.gg.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/c$c.class */
    public interface AbstractC3759c {
        /* renamed from: a */
        void mo24327a(AbstractC5796a abstractC5796a);

        /* renamed from: b */
        void mo24326b();
    }

    private C3756c() {
    }

    /* renamed from: c */
    public static C3756c m24329c() {
        if (f11972a == null) {
            synchronized (C3756c.class) {
                try {
                    if (f11972a == null) {
                        f11972a = new C3756c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f11972a;
    }

    /* renamed from: b */
    public void m24330b() {
        this.f11973b = null;
    }

    /* renamed from: d */
    public void m24328d(Context context, String str, AbstractC3759c abstractC3759c) {
        AbstractC5796a abstractC5796a = this.f11973b;
        if (abstractC5796a != null && abstractC3759c != null) {
            abstractC3759c.mo24327a(abstractC5796a);
        }
        if (context == null || str == null) {
            return;
        }
        C5600d.C5601a c5601a = new C5600d.C5601a(context, str);
        c5601a.m18290c(new C3757a(abstractC3759c));
        c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
        c5601a.m18288e(new C3758b(abstractC3759c)).m18292a().m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
    }
}
