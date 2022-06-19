package com.google.android.gms.common.internal.p353a;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.AbstractC11895e;
import com.google.android.gms.common.api.internal.AbstractC11904l;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12052t;
import com.google.android.gms.internal.base.C13154d;
/* renamed from: com.google.android.gms.common.internal.a.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/a/e.class */
public final class C11974e extends AbstractC12033f<C11970a> {

    /* renamed from: a */
    private final C12052t f39479a;

    public C11974e(Context context, Looper looper, C12031e c12031e, C12052t c12052t, AbstractC11895e abstractC11895e, AbstractC11904l abstractC11904l) {
        super(context, looper, 270, c12031e, abstractC11895e, abstractC11904l);
        this.f39479a = c12052t;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        C11970a c11970a;
        if (iBinder == null) {
            c11970a = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
            c11970a = queryLocalInterface instanceof C11970a ? (C11970a) queryLocalInterface : new C11970a(iBinder);
        }
        return c11970a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Feature[] getApiFeatures() {
        return C13154d.f50270b;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Bundle getGetServiceRequestExtraArgs() {
        C12052t c12052t = this.f39479a;
        Bundle bundle = new Bundle();
        String str = c12052t.f39572b;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return 203390000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final boolean getUseDynamicLookup() {
        return true;
    }
}
