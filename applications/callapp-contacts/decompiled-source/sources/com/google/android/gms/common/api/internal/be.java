package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.s;
import com.google.android.gms.tasks.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/be.class */
public final class be extends s {

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s.a f22680d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(s.a aVar, Feature[] featureArr, boolean z, int i) {
        super(featureArr, z, i);
        this.f22680d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.s
    public final void a(a.b bVar, i iVar) throws RemoteException {
        this.f22680d.f22764a.a(bVar, iVar);
    }
}
