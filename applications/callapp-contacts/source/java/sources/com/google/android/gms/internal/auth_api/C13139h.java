package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.C11682a;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
/* renamed from: com.google.android.gms.internal.auth_api.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/h.class */
public final class C13139h extends AbstractC12033f<AbstractC13142k> {

    /* renamed from: a */
    private final C11682a.C11683a f50259a;

    public C13139h(Context context, Looper looper, C12031e c12031e, C11682a.C11683a c11683a, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
        super(context, looper, 68, c12031e, abstractC11827a, abstractC11828b);
        this.f50259a = new C11682a.C11683a.C11684a(c11683a == null ? C11682a.C11683a.f38988a : c11683a).mo19572a(C13133b.m13613a()).mo19573a();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof AbstractC13142k ? (AbstractC13142k) queryLocalInterface : new C13141j(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Bundle getGetServiceRequestExtraArgs() {
        C11682a.C11683a c11683a = this.f50259a;
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", c11683a.f38989b);
        bundle.putBoolean("force_save_dialog", c11683a.f38990c);
        bundle.putString("log_session_id", c11683a.f38991d);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
