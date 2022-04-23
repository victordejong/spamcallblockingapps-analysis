package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y.class */
public final class y extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Long f29305a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29306b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29307c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f29308d;
    final /* synthetic */ boolean e;
    final /* synthetic */ boolean f;
    final /* synthetic */ ak g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(ak akVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(akVar, true);
        this.g = akVar;
        this.f29305a = l;
        this.f29306b = str;
        this.f29307c = str2;
        this.f29308d = bundle;
        this.e = z;
        this.f = z2;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        Long l = this.f29305a;
        long longValue = l == null ? this.h : l.longValue();
        mzVar = this.g.j;
        ((mz) o.a(mzVar)).logEvent(this.f29306b, this.f29307c, this.f29308d, this.e, this.f, longValue);
    }
}
