package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2299a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahf.class */
public class ahf {

    /* renamed from: a */
    private AbstractC2770a f9611a;

    /* renamed from: com.google.android.gms.internal.ads.ahf$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahf$a.class */
    public static abstract class AbstractC2770a {
        /* renamed from: a */
        public abstract acb mo13115a();

        /* renamed from: b */
        public abstract AbstractC3684zn mo13114b();

        /* renamed from: c */
        public abstract dwn mo13113c();

        /* renamed from: d */
        public abstract AbstractC3503sv mo13112d();

        /* renamed from: e */
        public abstract AbstractC3379of mo13111e();

        /* renamed from: f */
        public abstract AbstractC3267kb mo13110f();
    }

    public ahf(AbstractC2770a abstractC2770a) {
        this.f9611a = abstractC2770a;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.sw, com.google.android.gms.internal.ads.sq] */
    /* renamed from: a */
    public final C2299a m13119a() {
        AbstractC2770a abstractC2770a = this.f9611a;
        return new C2299a(abstractC2770a.mo13115a(), abstractC2770a.mo13114b(), new C3498sq(abstractC2770a.mo13112d()), abstractC2770a.mo13113c(), abstractC2770a.mo13111e());
    }

    /* renamed from: b */
    public final AbstractC3503sv m13118b() {
        return this.f9611a.mo13112d();
    }

    /* renamed from: c */
    public final AbstractC3379of m13117c() {
        return this.f9611a.mo13111e();
    }

    /* renamed from: d */
    public final AbstractC3267kb m13116d() {
        return this.f9611a.mo13110f();
    }
}
