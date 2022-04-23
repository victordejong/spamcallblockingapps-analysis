package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzp.class */
final class dzp {

    /* renamed from: a  reason: collision with root package name */
    public dzb f27489a;

    /* renamed from: b  reason: collision with root package name */
    public long f27490b;

    /* renamed from: c  reason: collision with root package name */
    public long f27491c;

    /* renamed from: d  reason: collision with root package name */
    public long f27492d;
    public int e;
    public int f;
    public long[] g;
    public int[] h;
    public int[] i;
    public int[] j;
    public long[] k;
    public boolean[] l;
    public boolean m;
    public boolean[] n;
    public dzm o;
    public int p;
    public ecy q;
    public boolean r;
    public long s;

    public final void a(int i) {
        ecy ecyVar = this.q;
        if (ecyVar == null || ecyVar.f27651c < i) {
            this.q = new ecy(i);
        }
        this.p = i;
        this.m = true;
        this.r = true;
    }

    public final long b(int i) {
        return this.k[i] + this.j[i];
    }
}
