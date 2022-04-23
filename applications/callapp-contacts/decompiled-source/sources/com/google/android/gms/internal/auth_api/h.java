package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/h.class */
public final class h extends f<k> {

    /* renamed from: a  reason: collision with root package name */
    private final a.C0450a f28661a;

    public h(Context context, Looper looper, e eVar, a.C0450a aVar, g.a aVar2, g.b bVar) {
        super(context, looper, 68, eVar, aVar2, bVar);
        this.f28661a = new a.C0450a.C0451a(aVar == null ? a.C0450a.f22454a : aVar).a(b.a()).a();
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof k ? (k) queryLocalInterface : new j(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final Bundle getGetServiceRequestExtraArgs() {
        a.C0450a aVar = this.f28661a;
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", aVar.f22455b);
        bundle.putBoolean("force_save_dialog", aVar.f22456c);
        bundle.putString("log_session_id", aVar.f22457d);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
