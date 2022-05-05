package com.google.firebase.appindexing.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.icing.zzbq;
import com.google.firebase.FirebaseExceptionMapper;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzh.class */
final class zzh extends GoogleApi<Api.ApiOptions.NoOptions> {
    public zzh(Context context) {
        super(context, zze.API, null, Looper.getMainLooper(), new FirebaseExceptionMapper());
        zzbq.m14009e(context);
    }
}
