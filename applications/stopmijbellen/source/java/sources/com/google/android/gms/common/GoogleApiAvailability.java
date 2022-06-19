package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import androidx.fragment.app.ActivityC0455o;
import androidx.fragment.app.Fragment;
import com.google.android.gms.base.C1671R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zabr;
import com.google.android.gms.common.api.internal.zabw;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zac;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import p026c0.C0803k;
import p026c0.C0804l;
import p026c0.C0805m;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability.class */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    private String zac;
    private static final Object zaa = new Object();
    private static final GoogleApiAvailability zab = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    public static GoogleApiAvailability getInstance() {
        return zab;
    }

    public static final Task<Map<ApiKey<?>, String>> zai(@RecentlyNonNull HasApiKey<?> hasApiKey, @RecentlyNonNull HasApiKey<?>... hasApiKeyArr) {
        Preconditions.checkNotNull(hasApiKey, "Requested API must not be null.");
        for (HasApiKey<?> hasApiKey2 : hasApiKeyArr) {
            Preconditions.checkNotNull(hasApiKey2, "Requested API must not be null.");
        }
        ArrayList arrayList = new ArrayList(hasApiKeyArr.length + 1);
        arrayList.add(hasApiKey);
        arrayList.addAll(Arrays.asList(hasApiKeyArr));
        return GoogleApiManager.zab().zah(arrayList);
    }

    public Task<Void> checkApiAvailability(@RecentlyNonNull GoogleApi<?> googleApi, @RecentlyNonNull GoogleApi<?>... googleApiArr) {
        return zai(googleApi, googleApiArr).onSuccessTask(zab.zaa);
    }

    public Task<Void> checkApiAvailability(@RecentlyNonNull HasApiKey<?> hasApiKey, @RecentlyNonNull HasApiKey<?>... hasApiKeyArr) {
        return zai(hasApiKey, hasApiKeyArr).onSuccessTask(zaa.zaa);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    public int getClientVersion(@RecentlyNonNull Context context) {
        return super.getClientVersion(context);
    }

    @RecentlyNullable
    public Dialog getErrorDialog(@RecentlyNonNull Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, (DialogInterface.OnCancelListener) null);
    }

    @RecentlyNullable
    public Dialog getErrorDialog(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zaf(activity, i, zag.zab(activity, getErrorResolutionIntent(activity, i, GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG), i2), onCancelListener);
    }

    @RecentlyNullable
    public Dialog getErrorDialog(@RecentlyNonNull Fragment fragment, int i, int i2) {
        return getErrorDialog(fragment, i, i2, (DialogInterface.OnCancelListener) null);
    }

    @RecentlyNullable
    public Dialog getErrorDialog(@RecentlyNonNull Fragment fragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zaf(fragment.requireContext(), i, zag.zac(fragment, getErrorResolutionIntent(fragment.requireContext(), i, GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @RecentlyNullable
    @ShowFirstParty
    @KeepForSdk
    public Intent getErrorResolutionIntent(Context context, int i, String str) {
        return super.getErrorResolutionIntent(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @RecentlyNullable
    public PendingIntent getErrorResolutionPendingIntent(@RecentlyNonNull Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    @RecentlyNullable
    public PendingIntent getErrorResolutionPendingIntent(@RecentlyNonNull Context context, @RecentlyNonNull ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @HideFirstParty
    public int isGooglePlayServicesAvailable(@RecentlyNonNull Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    public int isGooglePlayServicesAvailable(@RecentlyNonNull Context context, int i) {
        return super.isGooglePlayServicesAvailable(context, i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    public Task<Void> makeGooglePlayServicesAvailable(@RecentlyNonNull Activity activity) {
        Task<Void> task;
        int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Preconditions.checkMainThread("makeGooglePlayServicesAvailable must be called from the main thread");
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity, i);
        if (isGooglePlayServicesAvailable == 0) {
            task = Tasks.forResult(null);
        } else {
            zabw zaa2 = zabw.zaa(activity);
            zaa2.zaf(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
            task = zaa2.zab();
        }
        return task;
    }

    @TargetApi(26)
    public void setDefaultNotificationChannelId(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        if (PlatformVersion.isAtLeastO()) {
            Preconditions.checkNotNull(((NotificationManager) Preconditions.checkNotNull(context.getSystemService("notification"))).getNotificationChannel(str));
        }
        synchronized (zaa) {
            this.zac = str;
        }
    }

    public boolean showErrorDialogFragment(@RecentlyNonNull Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public boolean showErrorDialogFragment(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zag(activity, errorDialog, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public void showErrorNotification(@RecentlyNonNull Context context, int i) {
        zab(context, i, null, getErrorResolutionPendingIntent(context, i, 0, GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION));
    }

    public void showErrorNotification(@RecentlyNonNull Context context, @RecentlyNonNull ConnectionResult connectionResult) {
        zab(context, connectionResult.getErrorCode(), null, getErrorResolutionPendingIntent(context, connectionResult));
    }

    public final boolean zaa(@RecentlyNonNull Activity activity, @RecentlyNonNull LifecycleFragment lifecycleFragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog zaf = zaf(activity, i, zag.zad(lifecycleFragment, getErrorResolutionIntent(activity, i, GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG), 2), onCancelListener);
        if (zaf == null) {
            return false;
        }
        zag(activity, zaf, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @TargetApi(20)
    public final void zab(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            zah(context);
        } else if (pendingIntent == null) {
            if (i != 6) {
                return;
            }
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        } else {
            String zab2 = zac.zab(context, i);
            String zad = zac.zad(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) Preconditions.checkNotNull(context.getSystemService("notification"));
            C0805m c0805m = new C0805m(context, null);
            c0805m.f2975l = true;
            c0805m.m7355e(16, true);
            c0805m.m7356d(zab2);
            C0804l c0804l = new C0804l();
            c0804l.f2963b = C0805m.m7358b(zad);
            if (c0805m.f2974k != c0804l) {
                c0805m.f2974k = c0804l;
                if (c0804l.f2982a != c0805m) {
                    c0804l.f2982a = c0805m;
                    c0805m.m7353g(c0804l);
                }
            }
            if (DeviceProperties.isWearable(context)) {
                Preconditions.checkState(PlatformVersion.isAtLeastKitKatWatch());
                c0805m.f2980q.icon = context.getApplicationInfo().icon;
                c0805m.f2972i = 2;
                if (DeviceProperties.isWearableWithoutPlayStore(context)) {
                    c0805m.f2965b.add(new C0803k(C1671R.C1673drawable.common_full_open_on_phone, resources.getString(C1671R.string.common_open_on_phone), pendingIntent));
                } else {
                    c0805m.f2970g = pendingIntent;
                }
            } else {
                c0805m.f2980q.icon = 17301642;
                c0805m.f2980q.tickerText = C0805m.m7358b(resources.getString(C1671R.string.common_google_play_services_notification_ticker));
                c0805m.f2980q.when = System.currentTimeMillis();
                c0805m.f2970g = pendingIntent;
                c0805m.m7357c(zad);
            }
            if (PlatformVersion.isAtLeastO()) {
                Preconditions.checkState(PlatformVersion.isAtLeastO());
                synchronized (zaa) {
                    str2 = this.zac;
                }
                String str3 = str2;
                if (str2 == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String zag = zac.zag(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", zag, 4));
                        str3 = "com.google.android.gms.availability";
                    } else {
                        str3 = "com.google.android.gms.availability";
                        if (!zag.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(zag);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str3 = "com.google.android.gms.availability";
                        }
                    }
                }
                c0805m.f2978o = str3;
            }
            Notification m7359a = c0805m.m7359a();
            if (i == 1 || i == 2 || i == 3) {
                GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
                i2 = 10436;
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, m7359a);
        }
    }

    public final boolean zac(@RecentlyNonNull Context context, @RecentlyNonNull ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent != null) {
            zab(context, connectionResult.getErrorCode(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.zaa(context, errorResolutionPendingIntent, i, true), 134217728));
            return true;
        }
        return false;
    }

    @RecentlyNonNull
    public final Dialog zad(@RecentlyNonNull Activity activity, @RecentlyNonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(zac.zac(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        zag(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    public final zabr zae(Context context, zabq zabqVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabr zabrVar = new zabr(zabqVar);
        context.registerReceiver(zabrVar, intentFilter);
        zabrVar.zaa(context);
        if (!isUninstalledAppPossiblyUpdating(context, "com.google.android.gms")) {
            zabqVar.zaa();
            zabrVar.zab();
            return null;
        }
        return zabrVar;
    }

    public final Dialog zaf(Context context, int i, zag zagVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        AlertDialog.Builder builder2 = builder;
        if (builder == null) {
            builder2 = new AlertDialog.Builder(context);
        }
        builder2.setMessage(zac.zac(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String zae = zac.zae(context, i);
        if (zae != null) {
            builder2.setPositiveButton(zae, zagVar);
        }
        String zaa2 = zac.zaa(context, i);
        if (zaa2 != null) {
            builder2.setTitle(zaa2);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder2.create();
    }

    public final void zag(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof ActivityC0455o) {
                SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((ActivityC0455o) activity).m8094o(), str);
                return;
            }
        } catch (NoClassDefFoundError e) {
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    public final void zah(Context context) {
        new zac(this, context).sendEmptyMessageDelayed(1, 120000L);
    }
}
