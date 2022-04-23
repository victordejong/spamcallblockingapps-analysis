package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.wearable.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/v.class */
final class v implements ak<f.a> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f30157a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ IntentFilter[] f30158b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(String str, IntentFilter[] intentFilterArr) {
        this.f30157a = str;
        this.f30158b = intentFilterArr;
    }

    @Override // com.google.android.gms.wearable.internal.ak
    public final /* synthetic */ void a(db dbVar, d.b bVar, f.a aVar, i<f.a> iVar) throws RemoteException {
        f.a aVar2 = aVar;
        String str = this.f30157a;
        IntentFilter[] intentFilterArr = this.f30158b;
        if (str == null) {
            dbVar.f30109b.a(dbVar, bVar, aVar2, de.b(iVar, intentFilterArr));
            return;
        }
        dbVar.f30109b.a(dbVar, bVar, new cj(str, aVar2), de.a(iVar, str, intentFilterArr));
    }
}
