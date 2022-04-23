package com.google.firebase.appindexing.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.icing.zzf;
import com.google.firebase.FirebaseExceptionMapper;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzp.class */
final class zzp extends GoogleApi<Api.ApiOptions.NoOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(Context context) {
        super(context, zzf.f8034c, (Api.ApiOptions) null, new FirebaseExceptionMapper());
    }
}
