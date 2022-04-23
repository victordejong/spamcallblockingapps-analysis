package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e.class */
public final class e extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f28974a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f28975b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ lu f28976c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ak f28977d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ak akVar, String str, String str2, lu luVar) {
        super(akVar, true);
        this.f28977d = akVar;
        this.f28974a = str;
        this.f28975b = str2;
        this.f28976c = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f28977d.j;
        ((mz) o.a(mzVar)).getConditionalUserProperties(this.f28974a, this.f28975b, this.f28976c);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f28976c.a((Bundle) null);
    }
}
