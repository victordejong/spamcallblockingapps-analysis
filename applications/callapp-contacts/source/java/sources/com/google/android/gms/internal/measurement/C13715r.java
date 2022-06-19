package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.measurement.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r.class */
public final class C13715r extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f51054a;

    /* renamed from: b */
    final /* synthetic */ Object f51055b;

    /* renamed from: c */
    final /* synthetic */ C13363ak f51056c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13715r(C13363ak c13363ak, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(c13363ak, false);
        this.f51056c = c13363ak;
        this.f51054a = str;
        this.f51055b = obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51056c.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).logHealthData(5, this.f51054a, BinderC12129d.m18979a(this.f51055b), BinderC12129d.m18979a((Object) null), BinderC12129d.m18979a((Object) null));
    }
}
