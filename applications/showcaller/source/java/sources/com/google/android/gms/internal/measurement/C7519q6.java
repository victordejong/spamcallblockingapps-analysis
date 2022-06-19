package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.q6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q6.class */
final class C7519q6 implements AbstractC7597w6 {

    /* renamed from: a */
    private final AbstractC7597w6[] f34644a;

    public C7519q6(AbstractC7597w6... abstractC7597w6Arr) {
        this.f34644a = abstractC7597w6Arr;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7597w6
    /* renamed from: a */
    public final boolean mo6795a(Class<?> cls) {
        AbstractC7597w6[] abstractC7597w6Arr = this.f34644a;
        for (int i = 0; i < 2; i++) {
            if (abstractC7597w6Arr[i].mo6795a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7597w6
    /* renamed from: b */
    public final AbstractC7584v6 mo6794b(Class<?> cls) {
        AbstractC7597w6[] abstractC7597w6Arr = this.f34644a;
        for (int i = 0; i < 2; i++) {
            AbstractC7597w6 abstractC7597w6 = abstractC7597w6Arr[i];
            if (abstractC7597w6.mo6795a(cls)) {
                return abstractC7597w6.mo6794b(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
