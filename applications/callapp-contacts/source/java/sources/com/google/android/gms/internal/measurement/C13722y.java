package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.measurement.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y.class */
public final class C13722y extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ Long f51068a;

    /* renamed from: b */
    final /* synthetic */ String f51069b;

    /* renamed from: c */
    final /* synthetic */ String f51070c;

    /* renamed from: d */
    final /* synthetic */ Bundle f51071d;

    /* renamed from: e */
    final /* synthetic */ boolean f51072e;

    /* renamed from: f */
    final /* synthetic */ boolean f51073f;

    /* renamed from: g */
    final /* synthetic */ C13363ak f51074g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13722y(C13363ak c13363ak, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(c13363ak, true);
        this.f51074g = c13363ak;
        this.f51068a = l;
        this.f51069b = str;
        this.f51070c = str2;
        this.f51071d = bundle;
        this.f51072e = z;
        this.f51073f = z2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    final void mo12290a() throws RemoteException {
        AbstractC13702mz abstractC13702mz;
        Long l = this.f51068a;
        char longValue = l == null ? this.f50574h : l.longValue();
        abstractC13702mz = this.f51074g.f50605j;
        ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz)).logEvent(this.f51069b, this.f51070c, this.f51071d, this.f51072e, this.f51073f, longValue);
    }
}
