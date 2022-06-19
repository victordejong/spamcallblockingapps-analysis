package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.t7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/t7.class */
public final class C7872t7 extends AbstractC7776l {

    /* renamed from: e */
    final /* synthetic */ C7773k8 f35704e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7872t7(C7773k8 c7773k8, AbstractC7815o5 abstractC7815o5) {
        super(abstractC7815o5);
        this.f35704e = c7773k8;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7776l
    /* renamed from: a */
    public final void mo5892a() {
        C7773k8 c7773k8 = this.f35704e;
        c7773k8.mo6113f();
        if (!c7773k8.m6285H()) {
            return;
        }
        c7773k8.f35460a.mo6047C().m6187u().m6216a("Inactivity, disconnecting from the service");
        c7773k8.m6264r();
    }
}
