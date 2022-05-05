package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzew.class */
final class zzew implements zzfe {

    /* renamed from: a */
    private zzfe[] f8029a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzew(zzfe... zzfeVarArr) {
        this.f8029a = zzfeVarArr;
    }

    @Override // com.google.android.gms.internal.icing.zzfe
    /* renamed from: b */
    public final boolean mo13759b(Class<?> cls) {
        for (zzfe zzfeVar : this.f8029a) {
            if (zzfeVar.mo13759b(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.icing.zzfe
    /* renamed from: c */
    public final zzff mo13758c(Class<?> cls) {
        zzfe[] zzfeVarArr;
        for (zzfe zzfeVar : this.f8029a) {
            if (zzfeVar.mo13759b(cls)) {
                return zzfeVar.mo13758c(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
