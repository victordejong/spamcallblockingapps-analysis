package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
/* renamed from: com.google.android.gms.internal.ads.gg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gg.class */
public final class C6514gg implements AbstractC6663kg, AbstractC6626jg {

    /* renamed from: d */
    private final Uri f23331d;

    /* renamed from: e */
    private final AbstractC6849ph f23332e;

    /* renamed from: f */
    private final AbstractC6845pd f23333f;

    /* renamed from: g */
    private final int f23334g;

    /* renamed from: h */
    private final Handler f23335h;

    /* renamed from: i */
    private final AbstractC6477fg f23336i;

    /* renamed from: j */
    private final C7176yb f23337j = new C7176yb();

    /* renamed from: k */
    private final int f23338k;

    /* renamed from: l */
    private AbstractC6626jg f23339l;

    /* renamed from: m */
    private AbstractC6287ac f23340m;

    /* renamed from: n */
    private boolean f23341n;

    public C6514gg(Uri uri, AbstractC6849ph abstractC6849ph, AbstractC6845pd abstractC6845pd, int i, Handler handler, AbstractC6477fg abstractC6477fg, String str, int i2) {
        this.f23331d = uri;
        this.f23332e = abstractC6849ph;
        this.f23333f = abstractC6845pd;
        this.f23334g = i;
        this.f23335h = handler;
        this.f23336i = abstractC6477fg;
        this.f23338k = i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: a */
    public final void mo12921a(AbstractC6589ig abstractC6589ig) {
        ((C6440eg) abstractC6589ig).m15492C();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: b */
    public final void mo12920b() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: c */
    public final void mo12919c(AbstractC6583ib abstractC6583ib, boolean z, AbstractC6626jg abstractC6626jg) {
        this.f23339l = abstractC6626jg;
        C7107wg c7107wg = new C7107wg(-9223372036854775807L, false);
        this.f23340m = c7107wg;
        abstractC6626jg.mo11980f(c7107wg, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: d */
    public final AbstractC6589ig mo12918d(int i, C6960sh c6960sh) {
        C6367ci.m16042a(i == 0);
        return new C6440eg(this.f23331d, this.f23332e.zza(), this.f23333f.zza(), this.f23334g, this.f23335h, this.f23336i, this, c6960sh, null, this.f23338k, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6663kg
    /* renamed from: e */
    public final void mo12917e() {
        this.f23339l = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6626jg
    /* renamed from: f */
    public final void mo11980f(AbstractC6287ac abstractC6287ac, Object obj) {
        C7176yb c7176yb = this.f23337j;
        boolean z = false;
        abstractC6287ac.mo9297d(0, c7176yb, false);
        if (c7176yb.f32457c != -9223372036854775807L) {
            z = true;
        }
        if (!this.f23341n || z) {
            this.f23340m = abstractC6287ac;
            this.f23341n = z;
            this.f23339l.mo11980f(abstractC6287ac, null);
        }
    }
}
