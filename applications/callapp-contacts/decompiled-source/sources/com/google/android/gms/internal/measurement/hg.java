package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hg.class */
final class hg implements hm {

    /* renamed from: a  reason: collision with root package name */
    private final hm[] f29083a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hg(hm... hmVarArr) {
        this.f29083a = hmVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.hm
    public final boolean a(Class<?> cls) {
        hm[] hmVarArr = this.f29083a;
        for (int i = 0; i < 2; i++) {
            if (hmVarArr[i].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.hm
    public final hl b(Class<?> cls) {
        hm[] hmVarArr = this.f29083a;
        for (int i = 0; i < 2; i++) {
            hm hmVar = hmVarArr[i];
            if (hmVar.a(cls)) {
                return hmVar.b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
