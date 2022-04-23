package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.location.au;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ak.class */
public class ak extends f<h> {

    /* renamed from: a  reason: collision with root package name */
    private final String f28898a;

    /* renamed from: b  reason: collision with root package name */
    protected final u<h> f28899b = new aj(this);

    public ak(Context context, Looper looper, g.a aVar, g.b bVar, String str, e eVar) {
        super(context, looper, 23, eVar, aVar, bVar);
        this.f28898a = str;
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        IInterface iInterface;
        if (iBinder == null) {
            iInterface = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            iInterface = queryLocalInterface instanceof h ? (h) queryLocalInterface : new g(iBinder);
        }
        return iInterface;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Feature[] getApiFeatures() {
        return au.f;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.f28898a);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}
