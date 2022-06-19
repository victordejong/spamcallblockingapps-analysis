package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.r6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r6.class */
public final class C7532r6 implements AbstractC7450l7 {

    /* renamed from: a */
    private static final AbstractC7597w6 f34667a = new C7505p6();

    /* renamed from: b */
    private final AbstractC7597w6 f34668b;

    public C7532r6() {
        AbstractC7597w6 abstractC7597w6;
        C7557t5 m6905c = C7557t5.m6905c();
        try {
            abstractC7597w6 = (AbstractC7597w6) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            abstractC7597w6 = f34667a;
        }
        C7519q6 c7519q6 = new C7519q6(m6905c, abstractC7597w6);
        C7365f6.m7502b(c7519q6, "messageInfoFactory");
        this.f34668b = c7519q6;
    }

    /* renamed from: a */
    private static boolean m6963a(AbstractC7584v6 abstractC7584v6) {
        return abstractC7584v6.mo6830c() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7450l7
    /* renamed from: d */
    public final <T> AbstractC7436k7<T> mo6962d(Class<T> cls) {
        C7464m7.m7162A(cls);
        AbstractC7584v6 mo6794b = this.f34668b.mo6794b(cls);
        if (mo6794b.zza()) {
            return AbstractC7609x5.class.isAssignableFrom(cls) ? C7338d7.m7607h(C7464m7.m7132c(), C7490o5.m7043a(), mo6794b.mo6831b()) : C7338d7.m7607h(C7464m7.m7136a(), C7490o5.m7042b(), mo6794b.mo6831b());
        }
        return AbstractC7609x5.class.isAssignableFrom(cls) ? m6963a(mo6794b) ? C7310b7.m7662D(cls, mo6794b, C7366f7.m7493b(), AbstractC7477n6.m7073d(), C7464m7.m7132c(), C7490o5.m7043a(), C7571u6.m6879b()) : C7310b7.m7662D(cls, mo6794b, C7366f7.m7493b(), AbstractC7477n6.m7073d(), C7464m7.m7132c(), null, C7571u6.m6879b()) : m6963a(mo6794b) ? C7310b7.m7662D(cls, mo6794b, C7366f7.m7494a(), AbstractC7477n6.m7074c(), C7464m7.m7136a(), C7490o5.m7042b(), C7571u6.m6880a()) : C7310b7.m7662D(cls, mo6794b, C7366f7.m7494a(), AbstractC7477n6.m7074c(), C7464m7.m7134b(), null, C7571u6.m6880a());
    }
}
