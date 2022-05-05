package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzja.class */
final class zzja implements zzji {

    /* renamed from: a */
    private zzji[] f8549a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzja(zzji... zzjiVarArr) {
        this.f8549a = zzjiVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: a */
    public final boolean mo12329a(Class<?> cls) {
        for (zzji zzjiVar : this.f8549a) {
            if (zzjiVar.mo12329a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    /* renamed from: b */
    public final zzjf mo12328b(Class<?> cls) {
        zzji[] zzjiVarArr;
        for (zzji zzjiVar : this.f8549a) {
            if (zzjiVar.mo12329a(cls)) {
                return zzjiVar.mo12328b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
