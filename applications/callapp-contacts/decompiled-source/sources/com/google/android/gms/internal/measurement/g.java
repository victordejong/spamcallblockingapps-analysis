package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g.class */
public final class g extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f29043a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29044b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29045c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ak f29046d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(ak akVar, Activity activity, String str, String str2) {
        super(akVar, true);
        this.f29046d = akVar;
        this.f29043a = activity;
        this.f29044b = str;
        this.f29045c = str2;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29046d.j;
        ((mz) o.a(mzVar)).setCurrentScreen(d.a(this.f29043a), this.f29044b, this.f29045c, this.h);
    }
}
