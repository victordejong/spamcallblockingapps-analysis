package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.measurement.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/z.class */
public final class C13723z extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f51075a;

    /* renamed from: b */
    final /* synthetic */ String f51076b;

    /* renamed from: c */
    final /* synthetic */ Object f51077c;

    /* renamed from: d */
    final /* synthetic */ boolean f51078d;

    /* renamed from: e */
    final /* synthetic */ C13363ak f51079e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13723z(C13363ak c13363ak, String str, String str2, Object obj, boolean z) {
        super(c13363ak, true);
        this.f51079e = c13363ak;
        this.f51075a = str;
        this.f51076b = str2;
        this.f51077c = obj;
        this.f51078d = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f51079e.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).setUserProperty(this.f51075a, this.f51076b, BinderC12129d.m18979a(this.f51077c), this.f51078d, this.f50574h);
    }
}
