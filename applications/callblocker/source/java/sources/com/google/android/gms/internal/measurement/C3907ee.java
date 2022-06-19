package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
/* renamed from: com.google.android.gms.internal.measurement.ee */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ee.class */
final class C3907ee implements AbstractC3940fk {

    /* renamed from: a */
    private static final C3907ee f18106a = new C3907ee();

    private C3907ee() {
    }

    /* renamed from: a */
    public static C3907ee m5616a() {
        return f18106a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3940fk
    /* renamed from: a */
    public final boolean mo5550a(Class<?> cls) {
        return AbstractC3900ed.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3940fk
    /* renamed from: b */
    public final AbstractC3941fl mo5549b(Class<?> cls) {
        if (!AbstractC3900ed.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC3941fl) AbstractC3900ed.m5647a((Class<AbstractC3900ed>) cls.asSubclass(AbstractC3900ed.class)).mo5652a(AbstractC3900ed.C3905e.f18094c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
