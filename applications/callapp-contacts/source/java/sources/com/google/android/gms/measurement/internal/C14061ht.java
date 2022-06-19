package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ht */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ht.class */
public final class C14061ht extends AbstractC14134l {

    /* renamed from: a */
    final /* synthetic */ C14079ik f51827a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14061ht(C14079ik c14079ik, AbstractC14002fo abstractC14002fo) {
        super(abstractC14002fo);
        this.f51827a = c14079ik;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14134l
    /* renamed from: a */
    public final void mo11526a() {
        C14079ik c14079ik = this.f51827a;
        c14079ik.mo11884S_();
        if (!c14079ik.m11740e()) {
            return;
        }
        c14079ik.f51637t.mo11661c().f51403k.m12092a("Inactivity, disconnecting from the service");
        c14079ik.m11733p();
    }
}
