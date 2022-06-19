package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.fc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fc.class */
final class C3932fc implements AbstractC3940fk {

    /* renamed from: a */
    private AbstractC3940fk[] f18150a;

    public C3932fc(AbstractC3940fk... abstractC3940fkArr) {
        this.f18150a = abstractC3940fkArr;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3940fk
    /* renamed from: a */
    public final boolean mo5550a(Class<?> cls) {
        boolean z;
        AbstractC3940fk[] abstractC3940fkArr = this.f18150a;
        int length = abstractC3940fkArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            } else if (abstractC3940fkArr[i].mo5550a(cls)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3940fk
    /* renamed from: b */
    public final AbstractC3941fl mo5549b(Class<?> cls) {
        AbstractC3940fk[] abstractC3940fkArr;
        for (AbstractC3940fk abstractC3940fk : this.f18150a) {
            if (abstractC3940fk.mo5550a(cls)) {
                return abstractC3940fk.mo5549b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
