package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.measurement.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g.class */
public final class C13514g extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Activity f50743a;

    /* renamed from: b */
    final /* synthetic */ String f50744b;

    /* renamed from: c */
    final /* synthetic */ String f50745c;

    /* renamed from: d */
    final /* synthetic */ C13363ak f50746d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13514g(C13363ak c13363ak, Activity activity, String str, String str2) {
        super(c13363ak, true);
        this.f50746d = c13363ak;
        this.f50743a = activity;
        this.f50744b = str;
        this.f50745c = str2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        abstractC13702mz = this.f50746d.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).setCurrentScreen(BinderC12129d.m18979a(this.f50743a), this.f50744b, this.f50745c, this.f50574h);
    }
}
