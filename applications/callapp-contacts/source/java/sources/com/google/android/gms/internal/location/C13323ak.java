package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.location.C13749au;
/* renamed from: com.google.android.gms.internal.location.ak */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ak.class */
public class C13323ak extends AbstractC12033f<AbstractC13333h> {

    /* renamed from: a */
    private final String f50558a;

    /* renamed from: b */
    protected final AbstractC13346u<AbstractC13333h> f50559b = new C13322aj(this);

    public C13323ak(Context context, Looper looper, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b, String str, C12031e c12031e) {
        super(context, looper, 23, c12031e, abstractC11827a, abstractC11828b);
        this.f50558a = str;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        AbstractC13333h abstractC13333h;
        if (iBinder == null) {
            abstractC13333h = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            abstractC13333h = queryLocalInterface instanceof AbstractC13333h ? (AbstractC13333h) queryLocalInterface : new C13332g(iBinder);
        }
        return abstractC13333h;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Feature[] getApiFeatures() {
        return C13749au.f51089f;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.f50558a);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return 11717000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}
