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
import android.util.TypedValue;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.base.C2047R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zabr;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zac;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Objects;
import n3.r.a.l;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1577m.p1578a.p1642f.p1653e.HandlerC24982d;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24965b;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24967d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GoogleApiAvailability.class */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {

    /* renamed from: c */
    public static final Object f5672c = new Object();

    /* renamed from: d */
    public static final GoogleApiAvailability f5673d = new GoogleApiAvailability();

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @RecentlyNullable
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public Intent mo39066a(Context context, int i, String str) {
        return super.mo39066a(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @RecentlyNullable
    /* renamed from: b */
    public PendingIntent mo39065b(@RecentlyNonNull Context context, int i, int i2) {
        return m39064c(context, i, i2, null);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @HideFirstParty
    /* renamed from: d */
    public int mo39063d(@RecentlyNonNull Context context) {
        return mo39062e(context, GoogleApiAvailabilityLight.f5674a);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: e */
    public int mo39062e(@RecentlyNonNull Context context, int i) {
        return super.mo39062e(context, i);
    }

    @RecentlyNullable
    /* renamed from: f */
    public Dialog m39072f(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m39068j(activity, i, new C24965b(super.mo39066a(activity, i, "d"), activity, i2), onCancelListener);
    }

    /* renamed from: g */
    public final boolean m39071g(@RecentlyNonNull Activity activity, @RecentlyNonNull LifecycleFragment lifecycleFragment, int i, DialogInterface.OnCancelListener onCancelListener) {
        Dialog m39068j = m39068j(activity, i, new C24967d(super.mo39066a(activity, i, "d"), lifecycleFragment), onCancelListener);
        if (m39068j == null) {
            return false;
        }
        m39067k(activity, m39068j, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    /* renamed from: h */
    public final void m39070h(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null);
        new IllegalArgumentException();
        if (i == 18) {
            new HandlerC24982d(this, context).sendEmptyMessageDelayed(1, 120000L);
        } else if (pendingIntent == null) {
        } else {
            String m38829f = i == 6 ? zac.m38829f(context, "common_google_play_services_resolution_required_title") : zac.m38834a(context, i);
            String str2 = m38829f;
            if (m38829f == null) {
                str2 = context.getResources().getString(C2047R.string.common_google_play_services_notification_ticker);
            }
            String m38830e = (i == 6 || i == 19) ? zac.m38830e(context, "common_google_play_services_resolution_required_text", zac.m38831d(context)) : zac.m38833b(context, i);
            Resources resources = context.getResources();
            Object systemService = context.getSystemService(RemoteMessageConst.NOTIFICATION);
            Objects.requireNonNull(systemService, "null reference");
            NotificationManager notificationManager = (NotificationManager) systemService;
            C26450q c26450q = new C26450q(context, (String) null);
            c26450q.f74165y = true;
            c26450q.m1853p(16, true);
            c26450q.m1855n(str2);
            C26447o c26447o = new C26447o();
            c26447o.m1873k(m38830e);
            c26450q.m1845x(c26447o);
            if (DeviceProperties.m38785b(context)) {
                Preconditions.m38896l(true);
                c26450q.f74137R.icon = context.getApplicationInfo().icon;
                c26450q.f74152l = 2;
                if (DeviceProperties.m38784c(context)) {
                    c26450q.m1868a(C2047R.C2048drawable.common_full_open_on_phone, resources.getString(C2047R.string.common_open_on_phone), pendingIntent);
                } else {
                    c26450q.f74147g = pendingIntent;
                }
            } else {
                c26450q.f74137R.icon = 17301642;
                c26450q.m1843z(resources.getString(C2047R.string.common_google_play_services_notification_ticker));
                c26450q.f74137R.when = System.currentTimeMillis();
                c26450q.f74147g = pendingIntent;
                c26450q.m1856m(m38830e);
            }
            if (PlatformVersion.m38776a()) {
                Preconditions.m38896l(PlatformVersion.m38776a());
                synchronized (f5672c) {
                }
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                C26187h<String, String> c26187h = zac.f6013a;
                String string = context.getResources().getString(C2047R.string.common_google_play_services_notification_channel_name);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
                } else if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
                c26450q.f74129J = "com.google.android.gms.availability";
            }
            Notification m1865d = c26450q.m1865d();
            if (i == 1 || i == 2 || i == 3) {
                GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
                i2 = 10436;
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, m1865d);
        }
    }

    /* renamed from: i */
    public final zabr m39069i(Context context, zabq zabqVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabr zabrVar = new zabr(zabqVar);
        context.registerReceiver(zabrVar, intentFilter);
        zabrVar.f5863a = context;
        if (!GooglePlayServicesUtilLight.zza(context, "com.google.android.gms")) {
            zabqVar.mo4281a();
            zabrVar.m38951a();
            return null;
        }
        return zabrVar;
    }

    /* renamed from: j */
    public final Dialog m39068j(Context context, int i, zag zagVar, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(zac.m38833b(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String m38832c = zac.m38832c(context, i);
        if (m38832c != null) {
            builder2.setPositiveButton(m38832c, zagVar);
        }
        String m38834a = zac.m38834a(context, i);
        if (m38834a != null) {
            builder2.setTitle(m38834a);
        }
        String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i));
        new IllegalArgumentException();
        return builder2.create();
    }

    /* renamed from: k */
    public final void m39067k(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof l) {
                FragmentManager supportFragmentManager = ((l) activity).getSupportFragmentManager();
                SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
                Preconditions.m38897k(dialog, "Cannot display null dialog");
                dialog.setOnCancelListener(null);
                dialog.setOnDismissListener(null);
                supportErrorDialogFragment.f5685a = dialog;
                if (onCancelListener != null) {
                    supportErrorDialogFragment.f5686b = onCancelListener;
                }
                supportErrorDialogFragment.show(supportFragmentManager, str);
                return;
            }
        } catch (NoClassDefFoundError e) {
        }
        android.app.FragmentManager fragmentManager = activity.getFragmentManager();
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Preconditions.m38897k(dialog, "Cannot display null dialog");
        dialog.setOnCancelListener(null);
        dialog.setOnDismissListener(null);
        errorDialogFragment.f5666a = dialog;
        if (onCancelListener != null) {
            errorDialogFragment.f5667b = onCancelListener;
        }
        errorDialogFragment.show(fragmentManager, str);
    }
}
