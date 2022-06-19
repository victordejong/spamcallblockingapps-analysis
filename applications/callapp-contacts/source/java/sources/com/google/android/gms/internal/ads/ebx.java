package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebx.class */
public final class ebx {

    /* renamed from: a */
    public final ebi f48644a;

    /* renamed from: b */
    public final ebw f48645b;

    /* renamed from: c */
    public final Object f48646c;

    /* renamed from: d */
    public final dwb[] f48647d;

    public ebx(ebi ebiVar, ebw ebwVar, Object obj, dwb[] dwbVarArr) {
        this.f48644a = ebiVar;
        this.f48645b = ebwVar;
        this.f48646c = obj;
        this.f48647d = dwbVarArr;
    }

    /* renamed from: a */
    public final boolean m15295a(ebx ebxVar, int i) {
        return ebxVar != null && ede.m15194a(this.f48645b.f48642b[i], ebxVar.f48645b.f48642b[i]) && ede.m15194a(this.f48647d[i], ebxVar.f48647d[i]);
    }
}
