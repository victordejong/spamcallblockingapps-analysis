package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Build;
import android.support.v4.app.i;
import android.support.v4.app.x;
import android.util.TypedValue;
import com.google.android.gms.a;
import com.google.android.gms.common.a.f;
import com.google.android.gms.common.a.k;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.p;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/e.class */
public final class e extends l {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final int f3965a = l.f4053b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, Context context, PendingIntent pendingIntent) {
        Notification b2;
        boolean z;
        int i2;
        Resources resources = context.getResources();
        String d = d(context);
        String string = i == 6 ? context.getResources().getString(a.c.o) : o.a(context, i);
        String str = string;
        if (string == null) {
            str = resources.getString(a.c.m);
        }
        String string2 = i == 6 ? context.getResources().getString(a.c.n) : o.a(context, i, d);
        if (!f.a(context)) {
            String string3 = resources.getString(a.c.m);
            if (k.a(11)) {
                Notification.Builder autoCancel = new Notification.Builder(context).setSmallIcon(17301642).setContentTitle(str).setContentText(string2).setContentIntent(pendingIntent).setTicker(string3).setAutoCancel(true);
                if (k.a(20)) {
                    autoCancel.setLocalOnly(true);
                }
                if (k.a(16)) {
                    autoCancel.setStyle(new Notification.BigTextStyle().bigText(string2));
                    b2 = autoCancel.build();
                } else {
                    b2 = autoCancel.getNotification();
                }
                if (Build.VERSION.SDK_INT == 19) {
                    b2.extras.putBoolean("android.support.localOnly", true);
                }
            } else {
                x.d a2 = new x.d(context).a(17301642);
                a2.B.tickerText = x.d.c(string3);
                a2.B.when = System.currentTimeMillis();
                x.d a3 = a2.a();
                a3.d = pendingIntent;
                b2 = a3.a(str).b(string2).b();
            }
        } else if (!k.a(16)) {
            throw new IllegalStateException();
        } else {
            b2 = new Notification.Builder(context).setSmallIcon(a.b.f).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(string2).length()).append(str).append(" ").append(string2).toString())).addAction(a.b.f3760a, resources.getString(a.c.C), pendingIntent).build();
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 18:
            case 42:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            f.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        ((NotificationManager) context.getSystemService("notification")).notify(i2, b2);
    }

    @Deprecated
    public static boolean a(int i, Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        String string;
        boolean z;
        AlertDialog alertDialog = null;
        p a2 = p.a(activity, b.a().a(activity, i, "d"));
        if (i != 0) {
            int i2 = i;
            if (f.a(activity)) {
                i2 = i;
                if (i == 2) {
                    i2 = 42;
                }
            }
            int i3 = i2;
            if (l.a(activity, i2)) {
                i3 = 18;
            }
            AlertDialog.Builder builder = null;
            if (k.a(14)) {
                TypedValue typedValue = new TypedValue();
                activity.getTheme().resolveAttribute(16843529, typedValue, true);
                builder = null;
                if ("Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
                    builder = new AlertDialog.Builder(activity, 5);
                }
            }
            AlertDialog.Builder builder2 = builder;
            if (builder == null) {
                builder2 = new AlertDialog.Builder(activity);
            }
            builder2.setMessage(o.a(activity, i3, d(activity)));
            if (onCancelListener != null) {
                builder2.setOnCancelListener(onCancelListener);
            }
            Resources resources = activity.getResources();
            switch (i3) {
                case 1:
                    string = resources.getString(a.c.e);
                    break;
                case 2:
                    string = resources.getString(a.c.w);
                    break;
                case 3:
                    string = resources.getString(a.c.f3763b);
                    break;
                default:
                    string = resources.getString(17039370);
                    break;
            }
            if (string != null) {
                builder2.setPositiveButton(string, a2);
            }
            String a3 = o.a(activity, i3);
            if (a3 != null) {
                builder2.setTitle(a3);
            }
            alertDialog = builder2.create();
        }
        if (alertDialog == null) {
            z = false;
        } else {
            if (activity instanceof i) {
                f.a(alertDialog, onCancelListener).a(((i) activity).getSupportFragmentManager(), "GooglePlayServicesErrorDialog");
            } else if (k.a(11)) {
                a.a(alertDialog, onCancelListener).show(activity.getFragmentManager(), "GooglePlayServicesErrorDialog");
            } else {
                throw new RuntimeException("This Activity does not support Fragments.");
            }
            z = true;
        }
        return z;
    }
}
