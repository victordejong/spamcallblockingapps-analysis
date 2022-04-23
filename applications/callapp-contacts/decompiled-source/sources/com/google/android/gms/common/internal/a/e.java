package com.google.android.gms.common.internal.a;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.l;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.internal.base.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/a/e.class */
public final class e extends f<a> {

    /* renamed from: a  reason: collision with root package name */
    private final t f22830a;

    public e(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, t tVar, com.google.android.gms.common.api.internal.e eVar2, l lVar) {
        super(context, looper, 270, eVar, eVar2, lVar);
        this.f22830a = tVar;
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        a aVar;
        if (iBinder == null) {
            aVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
            aVar = queryLocalInterface instanceof a ? (a) queryLocalInterface : new a(iBinder);
        }
        return aVar;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Feature[] getApiFeatures() {
        return d.f28672b;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Bundle getGetServiceRequestExtraArgs() {
        t tVar = this.f22830a;
        Bundle bundle = new Bundle();
        String str = tVar.f22906b;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return 203390000;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    public final boolean getUseDynamicLookup() {
        return true;
    }
}
