package com.google.firebase.appindexing.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.firebase.appindexing.FirebaseAppIndex;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzh.class */
public final class zzh extends FirebaseAppIndex {
    private static String[] zzcm = {"com.google.android.googlequicksearchbox", "com.google.android.gms"};
    @NonNull
    private final GoogleApi<?> zzcn;
    @VisibleForTesting
    private final zzj zzco;
    @NonNull
    private final Context zzcp;

    public zzh(@NonNull Context context) {
        this(context, new zzi(context));
    }

    @VisibleForTesting
    private zzh(@NonNull Context context, @NonNull GoogleApi<Api.ApiOptions.NoOptions> googleApi) {
        this.zzcn = googleApi;
        this.zzcp = context;
        this.zzco = new zzj(googleApi);
    }

    private final Task<Void> zza(@NonNull zzx zzxVar) {
        return this.zzco.zzb(zzxVar);
    }

    @Override // com.google.firebase.appindexing.FirebaseAppIndex
    public final Task<Void> remove(String... strArr) {
        return zza(new zzx(3, null, strArr, null));
    }

    @Override // com.google.firebase.appindexing.FirebaseAppIndex
    public final Task<Void> removeAll() {
        return zza(new zzx(4, null, null, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a9 A[SYNTHETIC] */
    @Override // com.google.firebase.appindexing.FirebaseAppIndex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.tasks.Task<java.lang.Void> update(com.google.firebase.appindexing.Indexable... r9) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.appindexing.internal.zzh.update(com.google.firebase.appindexing.Indexable[]):com.google.android.gms.tasks.Task");
    }
}
