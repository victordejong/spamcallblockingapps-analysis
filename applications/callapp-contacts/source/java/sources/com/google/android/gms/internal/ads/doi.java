package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doi.class */
final class doi implements doq {

    /* renamed from: a */
    private doq[] f47318a;

    public doi(doq... doqVarArr) {
        this.f47318a = doqVarArr;
    }

    @Override // com.google.android.gms.internal.ads.doq
    /* renamed from: a */
    public final boolean mo16263a(Class<?> cls) {
        for (doq doqVar : this.f47318a) {
            if (doqVar.mo16263a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.doq
    /* renamed from: b */
    public final dor mo16262b(Class<?> cls) {
        doq[] doqVarArr;
        for (doq doqVar : this.f47318a) {
            if (doqVar.mo16263a(cls)) {
                return doqVar.mo16262b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
