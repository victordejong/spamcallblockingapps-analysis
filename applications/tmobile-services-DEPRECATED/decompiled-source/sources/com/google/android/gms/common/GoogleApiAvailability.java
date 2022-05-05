package com.google.android.gms.common;

import android.annotation.SuppressLint;
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
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.C1012R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabp;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.internal.ConnectionErrorMessages;
import com.google.android.gms.common.internal.DialogRedirect;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.base.zar;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability.class */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {

    /* renamed from: d */
    private static final Object f6975d = new Object();

    /* renamed from: e */
    private static final GoogleApiAvailability f6976e = new GoogleApiAvailability();
    @GuardedBy

    /* renamed from: c */
    private String f6977c;

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability$zaa.class */
    public final class zaa extends zar {

        /* renamed from: a */
        private final Context f6978a;

        public zaa(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f6978a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                Log.w("GoogleApiAvailability", sb.toString());
                return;
            }
            int i2 = GoogleApiAvailability.this.mo15063i(this.f6978a);
            if (GoogleApiAvailability.this.mo15059m(i2)) {
                GoogleApiAvailability.this.m15078t(this.f6978a, i2);
            }
        }
    }

    @TargetApi(20)
    /* renamed from: A */
    private final void m15086A(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        if (i == 18) {
            m15072z(context);
        } else if (pendingIntent != null) {
            String f = ConnectionErrorMessages.m14561f(context, i);
            String e = ConnectionErrorMessages.m14562e(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
            builder.setLocalOnly(true);
            builder.setAutoCancel(true);
            builder.setContentTitle(f);
            NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
            bigTextStyle.m19787q(e);
            builder.setStyle(bigTextStyle);
            if (DeviceProperties.m14330c(context)) {
                Preconditions.m14520n(PlatformVersion.m14317f());
                builder.setSmallIcon(context.getApplicationInfo().icon);
                builder.setPriority(2);
                if (DeviceProperties.m14329d(context)) {
                    builder.addAction(C1012R.C1014drawable.common_full_open_on_phone, resources.getString(C1012R.string.common_open_on_phone), pendingIntent);
                } else {
                    builder.setContentIntent(pendingIntent);
                }
            } else {
                builder.setSmallIcon(17301642);
                builder.setTicker(resources.getString(C1012R.string.common_google_play_services_notification_ticker));
                builder.setWhen(System.currentTimeMillis());
                builder.setContentIntent(pendingIntent);
                builder.setContentText(e);
            }
            if (PlatformVersion.m14314i()) {
                Preconditions.m14520n(PlatformVersion.m14314i());
                String D = m15083D();
                String str2 = D;
                if (D == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String b = ConnectionErrorMessages.m14565b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", b, 4));
                        str2 = "com.google.android.gms.availability";
                    } else {
                        str2 = "com.google.android.gms.availability";
                        if (!b.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(b);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str2 = "com.google.android.gms.availability";
                        }
                    }
                }
                builder.setChannelId(str2);
            }
            Notification build = builder.build();
            if (i == 1 || i == 2 || i == 3) {
                i2 = 10436;
                GooglePlayServicesUtilLight.f6987d.set(false);
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, build);
        } else if (i == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }

    @VisibleForTesting
    /* renamed from: D */
    private final String m15083D() {
        String str;
        synchronized (f6975d) {
            str = this.f6977c;
        }
        return str;
    }

    /* renamed from: r */
    public static GoogleApiAvailability m15080r() {
        return f6976e;
    }

    /* renamed from: u */
    public static Dialog m15077u(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(ConnectionErrorMessages.m14563d(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m15073y(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* renamed from: v */
    static Dialog m15076v(Context context, int i, DialogRedirect dialogRedirect, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(ConnectionErrorMessages.m14563d(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String c = ConnectionErrorMessages.m14564c(context, i);
        if (c != null) {
            builder2.setPositiveButton(c, dialogRedirect);
        }
        String g = ConnectionErrorMessages.m14560g(context, i);
        if (g != null) {
            builder2.setTitle(g);
        }
        return builder2.create();
    }

    /* renamed from: y */
    static void m15073y(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            SupportErrorDialogFragment.m15034G0(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        ErrorDialogFragment.m15088a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    /* renamed from: B */
    public final boolean m15085B(Activity activity, @NonNull LifecycleFragment lifecycleFragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog v = m15076v(activity, i, DialogRedirect.m14556b(lifecycleFragment, mo15068d(activity, i, "d"), 2), onCancelListener);
        if (v == null) {
            return false;
        }
        m15073y(activity, v, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    /* renamed from: C */
    public final boolean m15084C(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent q = m15081q(context, connectionResult);
        if (q == null) {
            return false;
        }
        m15086A(context, connectionResult.m15094B(), null, GoogleApiActivity.m15010a(context, q, i));
        return true;
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @Nullable
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: d */
    public Intent mo15068d(Context context, int i, @Nullable String str) {
        return super.mo15068d(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @Nullable
    /* renamed from: e */
    public PendingIntent mo15067e(Context context, int i, int i2) {
        return super.mo15067e(context, i, i2);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    /* renamed from: g */
    public final String mo15065g(int i) {
        return super.mo15065g(i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @HideFirstParty
    /* renamed from: i */
    public int mo15063i(Context context) {
        return super.mo15063i(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: j */
    public int mo15062j(Context context, int i) {
        return super.mo15062j(context, i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    /* renamed from: m */
    public final boolean mo15059m(int i) {
        return super.mo15059m(i);
    }

    /* renamed from: p */
    public Dialog m15082p(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m15076v(activity, i, DialogRedirect.m14557a(activity, mo15068d(activity, i, "d"), i2), onCancelListener);
    }

    @Nullable
    /* renamed from: q */
    public PendingIntent m15081q(Context context, ConnectionResult connectionResult) {
        return connectionResult.m15091Y() ? connectionResult.m15092W() : mo15067e(context, connectionResult.m15094B(), 0);
    }

    /* renamed from: s */
    public boolean m15079s(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog p = m15082p(activity, i, i2, onCancelListener);
        if (p == null) {
            return false;
        }
        m15073y(activity, p, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    /* renamed from: t */
    public void m15078t(Context context, int i) {
        m15086A(context, i, null, m15066f(context, i, 0, "n"));
    }

    @Nullable
    /* renamed from: w */
    public final zabq m15075w(Context context, zabp zabpVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabq zabqVar = new zabq(zabpVar);
        context.registerReceiver(zabqVar, intentFilter);
        zabqVar.m14780b(context);
        if (m15060l(context, "com.google.android.gms")) {
            return zabqVar;
        }
        zabpVar.mo14716a();
        zabqVar.m14781a();
        return null;
    }

    /* renamed from: z */
    final void m15072z(Context context) {
        new zaa(context).sendEmptyMessageDelayed(1, 120000L);
    }
}
