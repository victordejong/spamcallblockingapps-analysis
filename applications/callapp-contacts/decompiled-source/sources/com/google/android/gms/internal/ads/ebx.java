package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebx.class */
public final class ebx {

    /* renamed from: a  reason: collision with root package name */
    public final ebi f27602a;

    /* renamed from: b  reason: collision with root package name */
    public final ebw f27603b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f27604c;

    /* renamed from: d  reason: collision with root package name */
    public final dwb[] f27605d;

    public ebx(ebi ebiVar, ebw ebwVar, Object obj, dwb[] dwbVarArr) {
        this.f27602a = ebiVar;
        this.f27603b = ebwVar;
        this.f27604c = obj;
        this.f27605d = dwbVarArr;
    }

    public final boolean a(ebx ebxVar, int i) {
        return ebxVar != null && ede.a(this.f27603b.f27600b[i], ebxVar.f27603b.f27600b[i]) && ede.a(this.f27605d[i], ebxVar.f27605d[i]);
    }
}
