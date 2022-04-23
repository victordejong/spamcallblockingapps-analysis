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
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.app.g;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.a.a;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.util.j;
import com.google.android.gms.common.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b.class */
public final class b extends c {
    private String e;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f22785c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final b f22786d = new b();

    /* renamed from: a  reason: collision with root package name */
    public static final int f22784a = c.f22789b;

    public static Dialog a(Context context, int i, ac acVar, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(y.c(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String e = y.e(context, i);
        if (e != null) {
            builder2.setPositiveButton(e, acVar);
        }
        String a2 = y.a(context, i);
        if (a2 != null) {
            builder2.setTitle(a2);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder2.create();
    }

    public static b a() {
        return f22786d;
    }

    public static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            g.a(dialog, onCancelListener).a(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        ErrorDialogFragment.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    private void a(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        String str;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            b(context);
        } else if (pendingIntent != null) {
            String b2 = y.b(context, i);
            String d2 = y.d(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) o.a(context.getSystemService("notification"));
            g.e eVar = new g.e(context);
            eVar.x = true;
            g.e a2 = eVar.a(true).a(b2).a(new g.c().a(d2));
            if (j.a(context)) {
                o.a(n.f());
                a2.a(context.getApplicationInfo().icon).l = 2;
                if (j.b(context)) {
                    a2.a(a.b.common_full_open_on_phone, resources.getString(a.c.common_open_on_phone), pendingIntent);
                } else {
                    a2.f = pendingIntent;
                }
            } else {
                g.e a3 = a2.a(17301642).c(resources.getString(a.c.common_google_play_services_notification_ticker)).a(System.currentTimeMillis());
                a3.f = pendingIntent;
                a3.b(d2);
            }
            if (n.j()) {
                o.a(n.j());
                synchronized (f22785c) {
                    str = this.e;
                }
                String str2 = str;
                if (str == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String a4 = y.a(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", a4, 4));
                        str2 = "com.google.android.gms.availability";
                    } else {
                        str2 = "com.google.android.gms.availability";
                        if (!a4.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(a4);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str2 = "com.google.android.gms.availability";
                        }
                    }
                }
                a2.I = str2;
            }
            Notification b3 = a2.b();
            if (i == 1 || i == 2 || i == 3) {
                d.sCanceledAvailabilityNotification.set(false);
                i2 = 10436;
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, b3);
        } else if (i == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }

    @Override // com.google.android.gms.common.c
    public final int a(Context context) {
        return super.a(context);
    }

    public final Dialog a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return a(activity, i, ac.a(activity, a(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.c
    public final PendingIntent a(Context context, int i, int i2) {
        return super.a(context, i, i2);
    }

    @Override // com.google.android.gms.common.c
    public final Intent a(Context context, int i, String str) {
        return super.a(context, i, str);
    }

    public final void a(Context context, int i) {
        a(context, i, a(context, i, 0, "n"));
    }

    @Override // com.google.android.gms.common.c
    public final boolean a(int i) {
        return super.a(i);
    }

    public final boolean a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent resolution = connectionResult.hasResolution() ? connectionResult.getResolution() : super.a(context, connectionResult.getErrorCode(), 0);
        if (resolution == null) {
            return false;
        }
        a(context, connectionResult.getErrorCode(), PendingIntent.getActivity(context, 0, GoogleApiActivity.a(context, resolution, i, true), 134217728));
        return true;
    }

    @Override // com.google.android.gms.common.c
    public final int b(Context context, int i) {
        return super.b(context, i);
    }

    @Override // com.google.android.gms.common.c
    public final String b(int i) {
        return super.b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Context context) {
        new h(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a(activity, i, i2, onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }
}
