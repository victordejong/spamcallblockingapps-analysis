package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgz.class */
public final class zzgz {

    /* renamed from: a */
    private final zzhg f8467a;

    /* renamed from: b */
    private final byte[] f8468b;

    private zzgz(int i) {
        byte[] bArr = new byte[i];
        this.f8468b = bArr;
        this.f8467a = zzhg.m12531f(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgz(int i, zzgq zzgqVar) {
        this(i);
    }

    /* renamed from: a */
    public final zzgr m12626a() {
        this.f8467a.m12545N();
        return new zzhb(this.f8468b);
    }

    /* renamed from: b */
    public final zzhg m12625b() {
        return this.f8467a;
    }
}
