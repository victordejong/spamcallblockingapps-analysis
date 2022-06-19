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
import androidx.core.app.C0565h;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.AbstractC6031h;
import com.google.android.gms.common.api.internal.AbstractC6032h0;
import com.google.android.gms.common.api.internal.zabr;
import com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC6111c0;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.C6191z;
import com.google.android.gms.common.util.C6231i;
import com.google.android.gms.common.util.C6237o;
import p078c.p084c.p085a.p086a.p087a.C1832b;
import p078c.p084c.p085a.p086a.p087a.C1833c;
/* renamed from: com.google.android.gms.common.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b.class */
public class C6084b extends C6086c {

    /* renamed from: f */
    private String f19384f;

    /* renamed from: d */
    private static final Object f19382d = new Object();

    /* renamed from: e */
    private static final C6084b f19383e = new C6084b();

    /* renamed from: c */
    public static final int f19381c = C6086c.f19385a;

    /* renamed from: m */
    public static C6084b m17237m() {
        return f19383e;
    }

    @Override // com.google.android.gms.common.C6086c
    @RecentlyNullable
    /* renamed from: b */
    public Intent mo17225b(Context context, int i, String str) {
        return super.mo17225b(context, i, str);
    }

    @Override // com.google.android.gms.common.C6086c
    @RecentlyNullable
    /* renamed from: c */
    public PendingIntent mo17224c(@RecentlyNonNull Context context, int i, int i2) {
        return super.mo17224c(context, i, i2);
    }

    @Override // com.google.android.gms.common.C6086c
    /* renamed from: e */
    public final String mo17222e(int i) {
        return super.mo17222e(i);
    }

    @Override // com.google.android.gms.common.C6086c
    /* renamed from: g */
    public int mo17220g(@RecentlyNonNull Context context) {
        return super.mo17220g(context);
    }

    @Override // com.google.android.gms.common.C6086c
    /* renamed from: h */
    public int mo17219h(@RecentlyNonNull Context context, int i) {
        return super.mo17219h(context, i);
    }

    @Override // com.google.android.gms.common.C6086c
    /* renamed from: j */
    public final boolean mo17217j(int i) {
        return super.mo17217j(i);
    }

    @RecentlyNullable
    /* renamed from: k */
    public Dialog m17239k(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m17229u(activity, i, AbstractDialogInterface$OnClickListenerC6111c0.m17135b(activity, mo17225b(activity, i, "d"), i2), onCancelListener);
    }

    @RecentlyNullable
    /* renamed from: l */
    public PendingIntent m17238l(@RecentlyNonNull Context context, @RecentlyNonNull ConnectionResult connectionResult) {
        return connectionResult.m17503n0() ? connectionResult.m17504m0() : mo17224c(context, connectionResult.m17506k0(), 0);
    }

    /* renamed from: n */
    public boolean m17236n(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog m17239k = m17239k(activity, i, i2, onCancelListener);
        if (m17239k == null) {
            return false;
        }
        m17228v(activity, m17239k, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    /* renamed from: o */
    public void m17235o(@RecentlyNonNull Context context, int i) {
        m17233q(context, i, null, m17223d(context, i, 0, "n"));
    }

    /* renamed from: p */
    public final boolean m17234p(@RecentlyNonNull Activity activity, @RecentlyNonNull AbstractC6031h abstractC6031h, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog m17229u = m17229u(activity, i, AbstractDialogInterface$OnClickListenerC6111c0.m17134c(abstractC6031h, mo17225b(activity, i, "d"), 2), onCancelListener);
        if (m17229u == null) {
            return false;
        }
        m17228v(activity, m17229u, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @TargetApi(20)
    /* renamed from: q */
    final void m17233q(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            m17227w(context);
        } else if (pendingIntent == null) {
            if (i != 6) {
                return;
            }
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        } else {
            String m16908b = C6191z.m16908b(context, i);
            String m16906d = C6191z.m16906d(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) C6155o.m17018j(context.getSystemService("notification"));
            C0565h.C0574e m33406x = new C0565h.C0574e(context).m33413q(true).m33424f(true).m33419k(m16908b).m33406x(new C0565h.C0570c().m33435h(m16906d));
            if (C6231i.m16798f(context)) {
                C6155o.m17015m(C6237o.m16777g());
                m33406x.m33408v(context.getApplicationInfo().icon).m33410t(2);
                if (C6231i.m16796h(context)) {
                    m33406x.m33429a(C1832b.common_full_open_on_phone, resources.getString(C1833c.common_open_on_phone), pendingIntent);
                } else {
                    m33406x.m33421i(pendingIntent);
                }
            } else {
                m33406x.m33408v(17301642).m33405y(resources.getString(C1833c.common_google_play_services_notification_ticker)).m33430B(System.currentTimeMillis()).m33421i(pendingIntent).m33420j(m16906d);
            }
            if (C6237o.m16773k()) {
                C6155o.m17015m(C6237o.m16773k());
                synchronized (f19382d) {
                    str2 = this.f19384f;
                }
                String str3 = str2;
                if (str2 == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String m16903g = C6191z.m16903g(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", m16903g, 4));
                        str3 = "com.google.android.gms.availability";
                    } else {
                        str3 = "com.google.android.gms.availability";
                        if (!m16903g.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(m16903g);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str3 = "com.google.android.gms.availability";
                        }
                    }
                }
                m33406x.m33423g(str3);
            }
            Notification m33428b = m33406x.m33428b();
            if (i == 1 || i == 2 || i == 3) {
                C6094e.f19410b.set(false);
                i2 = 10436;
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, m33428b);
        }
    }

    /* renamed from: r */
    public final boolean m17232r(@RecentlyNonNull Context context, @RecentlyNonNull ConnectionResult connectionResult, int i) {
        PendingIntent m17238l = m17238l(context, connectionResult);
        if (m17238l != null) {
            m17233q(context, connectionResult.m17506k0(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.m17494a(context, m17238l, i, true), 134217728));
            return true;
        }
        return false;
    }

    @RecentlyNonNull
    /* renamed from: s */
    public final Dialog m17231s(@RecentlyNonNull Activity activity, @RecentlyNonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(C6191z.m16907c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m17228v(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* renamed from: t */
    public final zabr m17230t(Context context, AbstractC6032h0 abstractC6032h0) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabr zabrVar = new zabr(abstractC6032h0);
        context.registerReceiver(zabrVar, intentFilter);
        zabrVar.m17249a(context);
        if (!m17218i(context, "com.google.android.gms")) {
            abstractC6032h0.mo17323a();
            zabrVar.m17248b();
            return null;
        }
        return zabrVar;
    }

    /* renamed from: u */
    final Dialog m17229u(Context context, int i, AbstractDialogInterface$OnClickListenerC6111c0 abstractDialogInterface$OnClickListenerC6111c0, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(C6191z.m16907c(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String m16905e = C6191z.m16905e(context, i);
        if (m16905e != null) {
            builder2.setPositiveButton(m16905e, abstractDialogInterface$OnClickListenerC6111c0);
        }
        String m16909a = C6191z.m16909a(context, i);
        if (m16909a != null) {
            builder2.setTitle(m16909a);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder2.create();
    }

    /* renamed from: v */
    final void m17228v(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                C6098h.m17184p2(dialog, onCancelListener).mo17185o2(((FragmentActivity) activity).m32877A(), str);
                return;
            }
        } catch (NoClassDefFoundError e) {
        }
        ErrorDialogFragment.m17500a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    /* renamed from: w */
    final void m17227w(Context context) {
        new HandlerC6199l(this, context).sendEmptyMessageDelayed(1, 120000L);
    }
}
