package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.wearable.k;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bs.class */
final class bs extends Cdo<k.b> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f30094a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f30095b;
    private final /* synthetic */ byte[] g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bs(br brVar, g gVar, String str, String str2, byte[] bArr) {
        super(gVar);
        this.f30094a = str;
        this.f30095b = str2;
        this.g = bArr;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return new bt(status, -1);
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        ((bm) dbVar.getService()).a(new cz(this), this.f30094a, this.f30095b, this.g);
    }
}
