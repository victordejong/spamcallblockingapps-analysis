package com.google.firebase.appindexing.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.firebase.FirebaseExceptionMapper;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzi.class */
final class zzi extends GoogleApi<Api.ApiOptions.NoOptions> {
    public zzi(Context context) {
        super(context, zzd.API, null, Looper.getMainLooper(), new FirebaseExceptionMapper());
    }
}
