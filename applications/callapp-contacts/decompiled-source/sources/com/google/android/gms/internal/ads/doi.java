package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doi.class */
final class doi implements doq {

    /* renamed from: a  reason: collision with root package name */
    private doq[] f27032a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public doi(doq... doqVarArr) {
        this.f27032a = doqVarArr;
    }

    @Override // com.google.android.gms.internal.ads.doq
    public final boolean a(Class<?> cls) {
        for (doq doqVar : this.f27032a) {
            if (doqVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.doq
    public final dor b(Class<?> cls) {
        doq[] doqVarArr;
        for (doq doqVar : this.f27032a) {
            if (doqVar.a(cls)) {
                return doqVar.b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
