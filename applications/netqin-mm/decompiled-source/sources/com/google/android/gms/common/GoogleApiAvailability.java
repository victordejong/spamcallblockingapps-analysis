package com.google.android.gms.common;

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
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.C7223R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.api.internal.zabl;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zab;
import com.google.android.gms.common.internal.zad;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.base.zap;
import p012b.p042i.p043h.C0857h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability.class */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {

    /* renamed from: d */
    public static final Object f23016d = new Object();

    /* renamed from: e */
    public static final GoogleApiAvailability f23017e = new GoogleApiAvailability();

    /* renamed from: c */
    public String f23018c;

    /* renamed from: com.google.android.gms.common.GoogleApiAvailability$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability$a.class */
    public final class HandlerC7227a extends zap {

        /* renamed from: a */
        public final Context f23019a;

        public HandlerC7227a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f23019a = context.getApplicationContext();
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
            int c = GoogleApiAvailability.this.mo17799c(this.f23019a);
            if (GoogleApiAvailability.this.mo17800c(c)) {
                GoogleApiAvailability.this.m17813d(this.f23019a, c);
            }
        }
    }

    /* renamed from: a */
    public static Dialog m17823a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(zab.m17199c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m17824a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* renamed from: a */
    public static Dialog m17821a(Context context, int i, zad zadVar, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(zab.m17199c(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String e = zab.m17197e(context, i);
        if (e != null) {
            builder2.setPositiveButton(e, zadVar);
        }
        String a = zab.m17204a(context, i);
        if (a != null) {
            builder2.setTitle(a);
        }
        return builder2.create();
    }

    /* renamed from: a */
    public static GoogleApiAvailability m17826a() {
        return f23017e;
    }

    /* renamed from: a */
    public static void m17824a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            SupportErrorDialogFragment.m17790a(dialog, onCancelListener).mo17789a(((FragmentActivity) activity).m38334g(), str);
            return;
        }
        ErrorDialogFragment.m17829a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public int mo17809a(Context context, int i) {
        return super.mo17809a(context, i);
    }

    /* renamed from: a */
    public Dialog m17825a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m17821a(activity, i, zad.m17195a(activity, mo17806a(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    /* renamed from: a */
    public PendingIntent mo17808a(Context context, int i, int i2) {
        return super.mo17808a(context, i, i2);
    }

    /* renamed from: a */
    public PendingIntent m17819a(Context context, ConnectionResult connectionResult) {
        return connectionResult.m17831v() ? connectionResult.m17832u() : mo17808a(context, connectionResult.m17834f(), 0);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public Intent mo17806a(Context context, int i, String str) {
        return super.mo17806a(context, i, str);
    }

    /* renamed from: a */
    public final zabl m17817a(Context context, zabk zabkVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabl zablVar = new zabl(zabkVar);
        context.registerReceiver(zablVar, intentFilter);
        zablVar.m17520a(context);
        if (m17805a(context, "com.google.android.gms")) {
            return zablVar;
        }
        zabkVar.mo17522a();
        zablVar.m17521a();
        return null;
    }

    /* renamed from: a */
    public final void m17820a(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            m17814d(context);
        } else if (pendingIntent != null) {
            String b = zab.m17200b(context, i);
            String d = zab.m17198d(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            C0857h.C0861d dVar = new C0857h.C0861d(context);
            dVar.m35736b(true);
            dVar.m35742a(true);
            dVar.m35737b(b);
            C0857h.C0859b bVar = new C0857h.C0859b();
            bVar.m35756a(d);
            dVar.m35745a(bVar);
            if (DeviceProperties.m17082d(context)) {
                Preconditions.m17280b(PlatformVersion.m17061g());
                dVar.m35734c(context.getApplicationInfo().icon);
                dVar.m35740b(2);
                if (DeviceProperties.m17081e(context)) {
                    dVar.m35751a(C7223R.C7224drawable.common_full_open_on_phone, resources.getString(C7223R.string.common_open_on_phone), pendingIntent);
                } else {
                    dVar.m35748a(pendingIntent);
                }
            } else {
                dVar.m35734c(17301642);
                dVar.m35733c(resources.getString(C7223R.string.common_google_play_services_notification_ticker));
                dVar.m35749a(System.currentTimeMillis());
                dVar.m35748a(pendingIntent);
                dVar.m35744a((CharSequence) d);
            }
            if (PlatformVersion.m17057k()) {
                Preconditions.m17280b(PlatformVersion.m17057k());
                String b2 = m17816b();
                String str2 = b2;
                if (b2 == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String a = zab.m17205a(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", a, 4));
                        str2 = "com.google.android.gms.availability";
                    } else {
                        str2 = "com.google.android.gms.availability";
                        if (!a.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(a);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str2 = "com.google.android.gms.availability";
                        }
                    }
                }
                dVar.m35743a(str2);
            }
            Notification a2 = dVar.m35753a();
            if (i == 1 || i == 2 || i == 3) {
                i2 = GooglePlayServicesUtilLight.GMS_AVAILABILITY_NOTIFICATION_ID;
                GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
            } else {
                i2 = GooglePlayServicesUtilLight.GMS_GENERAL_ERROR_NOTIFICATION_ID;
            }
            notificationManager.notify(i2, a2);
        } else if (i == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }

    /* renamed from: a */
    public final boolean m17822a(Activity activity, LifecycleFragment lifecycleFragment, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a = m17821a(activity, i, zad.m17193a(lifecycleFragment, mo17806a(activity, i, "d"), 2), onCancelListener);
        if (a == null) {
            return false;
        }
        m17824a(activity, a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    /* renamed from: a */
    public final boolean m17818a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent a = m17819a(context, connectionResult);
        if (a == null) {
            return false;
        }
        m17820a(context, connectionResult.m17834f(), (String) null, GoogleApiActivity.m17763a(context, a, i));
        return true;
    }

    /* renamed from: b */
    public final String m17816b() {
        String str;
        synchronized (f23016d) {
            str = this.f23018c;
        }
        return str;
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    /* renamed from: b */
    public final String mo17804b(int i) {
        return super.mo17804b(i);
    }

    /* renamed from: b */
    public boolean m17815b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a = m17825a(activity, i, i2, onCancelListener);
        if (a == null) {
            return false;
        }
        m17824a(activity, a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @HideFirstParty
    /* renamed from: c */
    public int mo17799c(Context context) {
        return super.mo17799c(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    /* renamed from: c */
    public final boolean mo17800c(int i) {
        return super.mo17800c(i);
    }

    /* renamed from: d */
    public final void m17814d(Context context) {
        new HandlerC7227a(context).sendEmptyMessageDelayed(1, 120000L);
    }

    /* renamed from: d */
    public void m17813d(Context context, int i) {
        m17820a(context, i, (String) null, m17807a(context, i, 0, "n"));
    }
}
