package com.google.android.gms.internal.icing;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzai.class */
public final class zzai implements AppIndexApi {
    private static final String TAG = "zzai";

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzai$zza.class */
    static final class zza implements AppIndexApi.ActionResult {
        private zzai zzat;
        private PendingResult<Status> zzau;
        private Action zzav;

        zza(zzai zzaiVar, PendingResult<Status> pendingResult, Action action) {
            this.zzat = zzaiVar;
            this.zzau = pendingResult;
            this.zzav = action;
        }

        @Override // com.google.android.gms.appindexing.AppIndexApi.ActionResult
        public final PendingResult<Status> end(GoogleApiClient googleApiClient) {
            return this.zzat.zza(googleApiClient, zzah.zza(this.zzav, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), 2));
        }

        @Override // com.google.android.gms.appindexing.AppIndexApi.ActionResult
        public final PendingResult<Status> getPendingResult() {
            return this.zzau;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzai$zzb.class */
    static abstract class zzb<T extends Result> extends BaseImplementation.ApiMethodImpl<T, zzag> {
        public zzb(GoogleApiClient googleApiClient) {
            super(zze.zzg, googleApiClient);
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
        protected /* synthetic */ void doExecute(zzag zzagVar) throws RemoteException {
            zza((zzab) zzagVar.getService());
        }

        protected abstract void zza(zzab zzabVar) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzai$zzc.class */
    public static abstract class zzc<T extends Result> extends zzb<Status> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ Result createFailedResult(Status status) {
            return status;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzai$zzd.class */
    public static final class zzd extends zzaf<Status> {
        public zzd(BaseImplementation.ResultHolder<Status> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.internal.icing.zzaf, com.google.android.gms.internal.icing.zzad
        public final void zza(Status status) {
            this.zzar.setResult(status);
        }
    }

    public static Intent zza(String str, Uri uri) {
        zzb(str, uri);
        if (zza(uri)) {
            return new Intent("android.intent.action.VIEW", uri);
        }
        if (zzb(uri)) {
            List<String> pathSegments = uri.getPathSegments();
            String str2 = pathSegments.get(0);
            Uri.Builder builder = new Uri.Builder();
            builder.scheme(str2);
            if (pathSegments.size() > 1) {
                builder.authority(pathSegments.get(1));
                for (int i = 2; i < pathSegments.size(); i++) {
                    builder.appendPath(pathSegments.get(i));
                }
            } else {
                String str3 = TAG;
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 88);
                sb.append("The app URI must have the format: android-app://<package_name>/<scheme>/<path>. But got ");
                sb.append(valueOf);
                Log.e(str3, sb.toString());
            }
            builder.encodedQuery(uri.getEncodedQuery());
            builder.encodedFragment(uri.getEncodedFragment());
            return new Intent("android.intent.action.VIEW", builder.build());
        }
        String valueOf2 = String.valueOf(uri);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 70);
        sb2.append("appIndexingUri is neither an HTTP(S) URL nor an \"android-app://\" URL: ");
        sb2.append(valueOf2);
        throw new RuntimeException(sb2.toString());
    }

    private final PendingResult<Status> zza(GoogleApiClient googleApiClient, Action action, int i) {
        return zza(googleApiClient, zzah.zza(action, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), i));
    }

    private static boolean zza(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    private static void zzb(String str, Uri uri) {
        if (zza(uri)) {
            if (uri.getHost().isEmpty()) {
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 98);
                sb.append("AppIndex: The web URL must have a host (follow the format http(s)://<host>/<path>). Provided URI: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        } else if (!zzb(uri)) {
            String valueOf2 = String.valueOf(uri);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 176);
            sb2.append("AppIndex: The URI scheme must either be 'http(s)' or 'android-app'. If the latter, it must follow the format 'android-app://<package_name>/<scheme>/<host_path>'. Provided URI: ");
            sb2.append(valueOf2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (str == null || str.equals(uri.getHost())) {
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.isEmpty() || pathSegments.get(0).isEmpty()) {
                String valueOf3 = String.valueOf(uri);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 128);
                sb3.append("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/<host_path>). Provided URI: ");
                sb3.append(valueOf3);
                throw new IllegalArgumentException(sb3.toString());
            }
        } else {
            String valueOf4 = String.valueOf(uri);
            StringBuilder sb4 = new StringBuilder(String.valueOf(valueOf4).length() + 150);
            sb4.append("AppIndex: The android-app URI host must match the package name and follow the format android-app://<package_name>/<scheme>/<host_path>. Provided URI: ");
            sb4.append(valueOf4);
            throw new IllegalArgumentException(sb4.toString());
        }
    }

    private static boolean zzb(Uri uri) {
        return "android-app".equals(uri.getScheme());
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final AppIndexApi.ActionResult action(GoogleApiClient googleApiClient, Action action) {
        return new zza(this, zza(googleApiClient, action, 1), action);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final PendingResult<Status> end(GoogleApiClient googleApiClient, Action action) {
        return zza(googleApiClient, action, 2);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final PendingResult<Status> start(GoogleApiClient googleApiClient, Action action) {
        return zza(googleApiClient, action, 1);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Intent intent, String str, Uri uri, List<AppIndexApi.AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        if (list != null) {
            for (AppIndexApi.AppIndexingLink appIndexingLink : list) {
                zzb(null, appIndexingLink.appIndexingUrl);
            }
        }
        return zza(googleApiClient, new zzx(packageName, intent, str, uri, null, list, 1));
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Uri uri, String str, Uri uri2, List<AppIndexApi.AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        zzb(packageName, uri);
        return view(googleApiClient, activity, zza(packageName, uri), str, uri2, list);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Intent intent) {
        return zza(googleApiClient, new zzy().zza(zzx.zza(googleApiClient.getContext().getPackageName(), intent)).zza(System.currentTimeMillis()).zzb(0).zzc(2).zzc());
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public final PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Uri uri) {
        return viewEnd(googleApiClient, activity, zza(googleApiClient.getContext().getPackageName(), uri));
    }

    public final PendingResult<Status> zza(GoogleApiClient googleApiClient, zzx... zzxVarArr) {
        return googleApiClient.enqueue(new zzaj(this, googleApiClient, zzxVarArr));
    }
}
