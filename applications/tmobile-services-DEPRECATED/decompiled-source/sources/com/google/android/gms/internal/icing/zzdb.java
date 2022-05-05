package com.google.android.gms.internal.icing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdb.class */
public final class zzdb {

    /* renamed from: a */
    private final zzdk f7964a;

    /* renamed from: b */
    private final byte[] f7965b;

    private zzdb(int i) {
        byte[] bArr = new byte[i];
        this.f7965b = bArr;
        this.f7964a = zzdk.m13947E(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdb(int i, zzcw zzcwVar) {
        this(i);
    }

    /* renamed from: a */
    public final zzct m13969a() {
        this.f7964a.m13907s();
        return new zzdd(this.f7965b);
    }

    /* renamed from: b */
    public final zzdk m13968b() {
        return this.f7964a;
    }
}
