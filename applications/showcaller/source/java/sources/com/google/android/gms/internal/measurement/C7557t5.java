package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.t5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/t5.class */
final class C7557t5 implements AbstractC7597w6 {

    /* renamed from: a */
    private static final C7557t5 f34693a = new C7557t5();

    private C7557t5() {
    }

    /* renamed from: c */
    public static C7557t5 m6905c() {
        return f34693a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7597w6
    /* renamed from: a */
    public final boolean mo6795a(Class<?> cls) {
        return AbstractC7609x5.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7597w6
    /* renamed from: b */
    public final AbstractC7584v6 mo6794b(Class<?> cls) {
        if (!AbstractC7609x5.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC7584v6) AbstractC7609x5.m6760v(cls.asSubclass(AbstractC7609x5.class)).mo6745y(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
