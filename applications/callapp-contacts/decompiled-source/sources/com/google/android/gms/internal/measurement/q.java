package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q.class */
public final class q extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29287a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29288b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ boolean f29289c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ lu f29290d;
    final /* synthetic */ ak e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(ak akVar, String str, String str2, boolean z, lu luVar) {
        super(akVar, true);
        this.e = akVar;
        this.f29287a = str;
        this.f29288b = str2;
        this.f29289c = z;
        this.f29290d = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.e.j;
        ((mz) o.a(mzVar)).getUserProperties(this.f29287a, this.f29288b, this.f29289c, this.f29290d);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f29290d.a((Bundle) null);
    }
}
