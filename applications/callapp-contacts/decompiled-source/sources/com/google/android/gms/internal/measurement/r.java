package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r.class */
public final class r extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29291a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Object f29292b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ak f29293c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(ak akVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(akVar, false);
        this.f29293c = akVar;
        this.f29291a = str;
        this.f29292b = obj;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29293c.j;
        ((mz) o.a(mzVar)).logHealthData(5, this.f29291a, d.a(this.f29292b), d.a((Object) null), d.a((Object) null));
    }
}
