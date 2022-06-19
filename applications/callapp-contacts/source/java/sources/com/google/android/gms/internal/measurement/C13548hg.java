package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hg.class */
final class C13548hg implements AbstractC13554hm {

    /* renamed from: a */
    private final AbstractC13554hm[] f50784a;

    public C13548hg(AbstractC13554hm... abstractC13554hmArr) {
        this.f50784a = abstractC13554hmArr;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13554hm
    /* renamed from: a */
    public final boolean mo12715a(Class<?> cls) {
        AbstractC13554hm[] abstractC13554hmArr = this.f50784a;
        for (int i = 0; i < 2; i++) {
            if (abstractC13554hmArr[i].mo12715a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13554hm
    /* renamed from: b */
    public final AbstractC13553hl mo12714b(Class<?> cls) {
        AbstractC13554hm[] abstractC13554hmArr = this.f50784a;
        for (int i = 0; i < 2; i++) {
            AbstractC13554hm abstractC13554hm = abstractC13554hmArr[i];
            if (abstractC13554hm.mo12715a(cls)) {
                return abstractC13554hm.mo12714b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
