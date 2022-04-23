package com.google.android.gms.internal.clearcut;

import android.content.Context;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.zzb;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p252g.p255c.C4383m3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zze.class */
public final class zze extends GoogleApi<Api.ApiOptions.NoOptions> implements zzb {
    @VisibleForTesting
    public zze(Context context) {
        super(context, ClearcutLogger.f22967o, (Api.ApiOptions) null, new ApiExceptionMapper());
    }

    /* renamed from: a */
    public static zzb m10674a(Context context) {
        return new zze(context);
    }

    @Override // com.google.android.gms.clearcut.zzb
    /* renamed from: a */
    public final PendingResult<Status> mo10673a(com.google.android.gms.clearcut.zze zzeVar) {
        C4383m3 m3Var = new C4383m3(zzeVar, m17769b());
        m17772a((zze) m3Var);
        return m3Var;
    }
}
