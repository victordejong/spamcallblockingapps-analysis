package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.formats.AbstractC1364d;
import com.google.android.gms.ads.formats.AbstractC1367e;
import com.google.android.gms.ads.formats.C1362c;
import com.google.android.gms.ads.nativead.AbstractC1487a;
import com.google.android.gms.ads.nativead.C1491b;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.ads.AbstractC1885p;
import com.google.android.gms.internal.ads.AbstractC1930s;
import com.google.android.gms.internal.ads.C1730f8;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C1932s1;
import com.google.android.gms.internal.ads.de;
import com.google.android.gms.internal.ads.g8;
import com.google.android.gms.internal.ads.i2;
import com.google.android.gms.internal.ads.lh;
import com.google.android.gms.internal.ads.lz2;
import com.google.android.gms.internal.ads.m03;
import com.google.android.gms.internal.ads.sz2;
import com.google.android.gms.internal.ads.zzady;
import com.google.android.gms.internal.ads.zzagy;
/* renamed from: com.google.android.gms.ads.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/d.class */
public class C1354d {

    /* renamed from: a */
    private final sz2 f5446a;

    /* renamed from: b */
    private final Context f5447b;

    /* renamed from: c */
    private final AbstractC1885p f5448c;

    /* renamed from: com.google.android.gms.ads.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/d$a.class */
    public static class C1355a {

        /* renamed from: a */
        private final Context f5449a;

        /* renamed from: b */
        private final AbstractC1930s f5450b;

        public C1355a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
            C1581h.m8346i(context, "context cannot be null");
            AbstractC1930s m6891c = m03.m6635b().m6891c(context, str, new de());
            this.f5449a = context;
            this.f5450b = m6891c;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C1354d m9038a() {
            try {
                return new C1354d(this.f5449a, this.f5450b.m5843a(), sz2.f8580a);
            } catch (RemoteException e) {
                C1894po.m6182d("Failed to build AdLoader.", e);
                return new C1354d(this.f5449a, new i2().z6(), sz2.f8580a);
            }
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: b */
        public C1355a m9037b(@RecentlyNonNull String str, @RecentlyNonNull AbstractC1364d.AbstractC1366b abstractC1366b, @RecentlyNonNull AbstractC1364d.AbstractC1365a abstractC1365a) {
            C1730f8 c1730f8 = new C1730f8(abstractC1366b, abstractC1365a);
            try {
                this.f5450b.m5839p6(str, c1730f8.m7565a(), c1730f8.m7564b());
            } catch (RemoteException e) {
                C1894po.m6179g("Failed to add custom template ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C1355a m9036c(@RecentlyNonNull AbstractC1487a.AbstractC1490c abstractC1490c) {
            try {
                this.f5450b.m5848F3(new lh(abstractC1490c));
            } catch (RemoteException e) {
                C1894po.m6179g("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: d */
        public C1355a m9035d(@RecentlyNonNull AbstractC1367e.AbstractC1368a abstractC1368a) {
            try {
                this.f5450b.m5848F3(new g8(abstractC1368a));
            } catch (RemoteException e) {
                C1894po.m6179g("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C1355a m9034e(@RecentlyNonNull AbstractC1350b abstractC1350b) {
            try {
                this.f5450b.m5845R0(new lz2(abstractC1350b));
            } catch (RemoteException e) {
                C1894po.m6179g("Failed to set AdListener.", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: f */
        public C1355a m9033f(@RecentlyNonNull C1362c c1362c) {
            try {
                this.f5450b.m5849D4(new zzagy(c1362c));
            } catch (RemoteException e) {
                C1894po.m6179g("Failed to specify native ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: g */
        public C1355a m9032g(@RecentlyNonNull C1491b c1491b) {
            try {
                this.f5450b.m5849D4(new zzagy(4, c1491b.m8599e(), -1, c1491b.m8600d(), c1491b.m8603a(), c1491b.m8601c() != null ? new zzady(c1491b.m8601c()) : null, c1491b.m8598f(), c1491b.m8602b()));
            } catch (RemoteException e) {
                C1894po.m6179g("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    C1354d(Context context, AbstractC1885p abstractC1885p, sz2 sz2Var) {
        this.f5447b = context;
        this.f5448c = abstractC1885p;
        this.f5446a = sz2Var;
    }

    /* renamed from: b */
    private final void m9039b(C1932s1 c1932s1) {
        try {
            this.f5448c.m6241q0(this.f5446a.m5551a(this.f5447b, c1932s1));
        } catch (RemoteException e) {
            C1894po.m6182d("Failed to load ad.", e);
        }
    }

    /* renamed from: a */
    public void m9040a(@RecentlyNonNull C1357e c1357e) {
        m9039b(c1357e.m9031a());
    }
}
