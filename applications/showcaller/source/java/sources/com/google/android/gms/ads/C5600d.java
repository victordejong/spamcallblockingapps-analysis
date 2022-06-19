package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.formats.AbstractC5610d;
import com.google.android.gms.ads.formats.AbstractC5613e;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.C5800b;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.ads.AbstractC6749ms;
import com.google.android.gms.internal.ads.AbstractC6860ps;
import com.google.android.gms.internal.ads.BinderC6492fv;
import com.google.android.gms.internal.ads.BinderC6858pq;
import com.google.android.gms.internal.ads.C6862pu;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7154xq;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.j10;
import com.google.android.gms.internal.ads.k10;
import com.google.android.gms.internal.ads.p70;
import com.google.android.gms.internal.ads.xa0;
import com.google.android.gms.internal.ads.zzbis;
import com.google.android.gms.internal.ads.zzblv;
/* renamed from: com.google.android.gms.ads.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/d.class */
public class C5600d {

    /* renamed from: a */
    private final C7154xq f18220a;

    /* renamed from: b */
    private final Context f18221b;

    /* renamed from: c */
    private final AbstractC6749ms f18222c;

    /* renamed from: com.google.android.gms.ads.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/d$a.class */
    public static class C5601a {

        /* renamed from: a */
        private final Context f18223a;

        /* renamed from: b */
        private final AbstractC6860ps f18224b;

        public C5601a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
            Context context2 = (Context) C6155o.m17017k(context, "context cannot be null");
            AbstractC6860ps m10189k = C7118wr.m9484b().m10189k(context, str, new p70());
            this.f18223a = context2;
            this.f18224b = m10189k;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C5600d m18292a() {
            try {
                return new C5600d(this.f18223a, this.f18224b.mo12164a(), C7154xq.f32156a);
            } catch (RemoteException e) {
                ei0.m15466d("Failed to build AdLoader.", e);
                return new C5600d(this.f18223a, new BinderC6492fv().m15044F6(), C7154xq.f32156a);
            }
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: b */
        public C5601a m18291b(@RecentlyNonNull String str, @RecentlyNonNull AbstractC5610d.AbstractC5612b abstractC5612b, AbstractC5610d.AbstractC5611a abstractC5611a) {
            j10 j10Var = new j10(abstractC5612b, abstractC5611a);
            try {
                this.f18224b.mo12172A5(str, j10Var.m14246c(), j10Var.m14245d());
            } catch (RemoteException e) {
                ei0.m15463g("Failed to add custom template ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C5601a m18290c(@RecentlyNonNull AbstractC5796a.AbstractC5799c abstractC5799c) {
            try {
                this.f18224b.mo12168H3(new xa0(abstractC5799c));
            } catch (RemoteException e) {
                ei0.m15463g("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: d */
        public C5601a m18289d(@RecentlyNonNull AbstractC5613e.AbstractC5614a abstractC5614a) {
            try {
                this.f18224b.mo12168H3(new k10(abstractC5614a));
            } catch (RemoteException e) {
                ei0.m15463g("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C5601a m18288e(@RecentlyNonNull AbstractC5596b abstractC5596b) {
            try {
                this.f18224b.mo12165T5(new BinderC6858pq(abstractC5596b));
            } catch (RemoteException e) {
                ei0.m15463g("Failed to set AdListener.", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: f */
        public C5601a m18287f(@RecentlyNonNull C5608c c5608c) {
            try {
                this.f18224b.mo12171B1(new zzblv(c5608c));
            } catch (RemoteException e) {
                ei0.m15463g("Failed to specify native ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C5601a m18286g(@RecentlyNonNull C5800b c5800b) {
            try {
                this.f18224b.mo12171B1(new zzblv(4, c5800b.m17843e(), -1, c5800b.m17844d(), c5800b.m17847a(), c5800b.m17845c() != null ? new zzbis(c5800b.m17845c()) : null, c5800b.m17842f(), c5800b.m17846b()));
            } catch (RemoteException e) {
                ei0.m15463g("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    C5600d(Context context, AbstractC6749ms abstractC6749ms, C7154xq c7154xq) {
        this.f18221b = context;
        this.f18222c = abstractC6749ms;
        this.f18220a = c7154xq;
    }

    /* renamed from: c */
    private final void m18293c(C6862pu c6862pu) {
        try {
            this.f18222c.mo13093R4(this.f18220a.m9085a(this.f18221b, c6862pu));
        } catch (RemoteException e) {
            ei0.m15466d("Failed to load ad.", e);
        }
    }

    /* renamed from: a */
    public boolean m18295a() {
        try {
            return this.f18222c.zzg();
        } catch (RemoteException e) {
            ei0.m15463g("Failed to check if ad is loading.", e);
            return false;
        }
    }

    /* renamed from: b */
    public void m18294b(@RecentlyNonNull C5603e c5603e) {
        m18293c(c5603e.m18285a());
    }
}
