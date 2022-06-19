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
import androidx.core.app.C0745g;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC11977ac;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.C12058y;
import com.google.android.gms.common.util.C12106j;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.p348a.C11673a;
/* renamed from: com.google.android.gms.common.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/b.class */
public final class C11937b extends C11941c {

    /* renamed from: e */
    private String f39425e;

    /* renamed from: c */
    private static final Object f39423c = new Object();

    /* renamed from: d */
    private static final C11937b f39424d = new C11937b();

    /* renamed from: a */
    public static final int f39422a = C11941c.f39428b;

    /* renamed from: a */
    public static Dialog m19282a(Context context, int i, AbstractDialogInterface$OnClickListenerC11977ac abstractDialogInterface$OnClickListenerC11977ac, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(C12058y.m19082c(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String m19080e = C12058y.m19080e(context, i);
        if (m19080e != null) {
            builder2.setPositiveButton(m19080e, abstractDialogInterface$OnClickListenerC11977ac);
        }
        String m19087a = C12058y.m19087a(context, i);
        if (m19087a != null) {
            builder2.setTitle(m19087a);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder2.create();
    }

    /* renamed from: a */
    public static C11937b m19287a() {
        return f39424d;
    }

    /* renamed from: a */
    public static void m19285a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            C11959g.m19243a(dialog, onCancelListener).mo19242a(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        ErrorDialogFragment.m19478a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    /* renamed from: a */
    private void m19283a(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        String str;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            m19279b(context);
        } else if (pendingIntent == null) {
            if (i != 6) {
                return;
            }
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        } else {
            String m19083b = C12058y.m19083b(context, i);
            String m19081d = C12058y.m19081d(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) C12045o.m19162a(context.getSystemService("notification"));
            C0745g.C0751e c0751e = new C0745g.C0751e(context);
            c0751e.f3353x = true;
            C0745g.C0751e m44572a = c0751e.m44570a(true).m44571a(m19083b).m44572a(new C0745g.C0749c().m44583a(m19081d));
            if (C12106j.m19035a(context)) {
                C12045o.m19158a(C12110n.m19016f());
                m44572a.m44581a(context.getApplicationInfo().icon).f3341l = 2;
                if (C12106j.m19033b(context)) {
                    m44572a.m44580a(C11673a.C11675b.common_full_open_on_phone, resources.getString(C11673a.C11676c.common_open_on_phone), pendingIntent);
                } else {
                    m44572a.f3335f = pendingIntent;
                }
            } else {
                C0745g.C0751e m44578a = m44572a.m44581a(17301642).m44566c(resources.getString(C11673a.C11676c.common_google_play_services_notification_ticker)).m44578a(System.currentTimeMillis());
                m44578a.f3335f = pendingIntent;
                m44578a.m44567b(m19081d);
            }
            if (C12110n.m19012j()) {
                C12045o.m19158a(C12110n.m19012j());
                synchronized (f39423c) {
                    str = this.f39425e;
                }
                String str2 = str;
                if (str == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String m19088a = C12058y.m19088a(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", m19088a, 4));
                        str2 = "com.google.android.gms.availability";
                    } else {
                        str2 = "com.google.android.gms.availability";
                        if (!m19088a.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(m19088a);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str2 = "com.google.android.gms.availability";
                        }
                    }
                }
                m44572a.f3320I = str2;
            }
            Notification m44569b = m44572a.m44569b();
            if (i == 1 || i == 2 || i == 3) {
                C11943d.sCanceledAvailabilityNotification.set(false);
                i2 = 10436;
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, m44569b);
        }
    }

    @Override // com.google.android.gms.common.C11941c
    /* renamed from: a */
    public final int mo19275a(Context context) {
        return super.mo19275a(context);
    }

    /* renamed from: a */
    public final Dialog m19286a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m19282a(activity, i, AbstractDialogInterface$OnClickListenerC11977ac.m19227a(activity, mo19272a(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.C11941c
    /* renamed from: a */
    public final PendingIntent mo19274a(Context context, int i, int i2) {
        return super.mo19274a(context, i, i2);
    }

    @Override // com.google.android.gms.common.C11941c
    /* renamed from: a */
    public final Intent mo19272a(Context context, int i, String str) {
        return super.mo19272a(context, i, str);
    }

    /* renamed from: a */
    public final void m19284a(Context context, int i) {
        m19283a(context, i, m19273a(context, i, 0, "n"));
    }

    @Override // com.google.android.gms.common.C11941c
    /* renamed from: a */
    public final boolean mo19276a(int i) {
        return super.mo19276a(i);
    }

    /* renamed from: a */
    public final boolean m19281a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent resolution = connectionResult.hasResolution() ? connectionResult.getResolution() : super.mo19274a(context, connectionResult.getErrorCode(), 0);
        if (resolution != null) {
            m19283a(context, connectionResult.getErrorCode(), PendingIntent.getActivity(context, 0, GoogleApiActivity.m19465a(context, resolution, i, true), 134217728));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.C11941c
    /* renamed from: b */
    public final int mo19269b(Context context, int i) {
        return super.mo19269b(context, i);
    }

    @Override // com.google.android.gms.common.C11941c
    /* renamed from: b */
    public final String mo19270b(int i) {
        return super.mo19270b(i);
    }

    /* renamed from: b */
    public final void m19279b(Context context) {
        new HandlerC11960h(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    /* renamed from: b */
    public final boolean m19280b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog m19286a = m19286a(activity, i, i2, onCancelListener);
        if (m19286a == null) {
            return false;
        }
        m19285a(activity, m19286a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }
}
