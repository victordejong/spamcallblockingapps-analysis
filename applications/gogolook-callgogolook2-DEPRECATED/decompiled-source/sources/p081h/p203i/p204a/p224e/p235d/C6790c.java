package p081h.p203i.p204a.p224e.p235d;

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
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.flurry.sdk.C3478n;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.base.R$string;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.zabq;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6883i1;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractDialogInterface$OnClickListenerC6989g;
import p081h.p203i.p204a.p224e.p235d.p240n.C6987f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7078j;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
/* renamed from: h.i.a.e.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/c.class */
public class C6790c extends C6793d {

    /* renamed from: d */
    public static final Object f16682d = new Object();

    /* renamed from: e */
    public static final C6790c f16683e = new C6790c();
    @GuardedBy("mLock")

    /* renamed from: c */
    public String f16684c;

    @SuppressLint({"HandlerLeak"})
    /* renamed from: h.i.a.e.d.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/c$a.class */
    public final class HandlerC6791a extends HandlerC7537i {

        /* renamed from: a */
        public final Context f16685a;

        public HandlerC6791a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f16685a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                sb.toString();
                return;
            }
            int c = C6790c.this.mo21883c(this.f16685a);
            if (C6790c.this.mo21884c(c)) {
                C6790c.this.m21898c(this.f16685a, c);
            }
        }
    }

    /* renamed from: a */
    public static Dialog m21907a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(C6987f.m21375b(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m21908a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* renamed from: a */
    public static Dialog m21905a(Context context, int i, AbstractDialogInterface$OnClickListenerC6989g gVar, DialogInterface.OnCancelListener onCancelListener) {
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
        builder2.setMessage(C6987f.m21375b(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String a = C6987f.m21379a(context, i);
        if (a != null) {
            builder2.setPositiveButton(a, gVar);
        }
        String e = C6987f.m21372e(context, i);
        if (e != null) {
            builder2.setTitle(e);
        }
        return builder2.create();
    }

    /* renamed from: a */
    public static C6790c m21910a() {
        return f16683e;
    }

    /* renamed from: a */
    public static void m21908a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            C6803i.m21868a(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        DialogFragmentC6788b.m21911a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6793d
    /* renamed from: a */
    public int mo21893a(Context context, int i) {
        return super.mo21893a(context, i);
    }

    /* renamed from: a */
    public Dialog m21909a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m21905a(activity, i, AbstractDialogInterface$OnClickListenerC6989g.m21370a(activity, mo21890a(activity, i, "d"), i2), onCancelListener);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6793d
    @Nullable
    /* renamed from: a */
    public PendingIntent mo21892a(Context context, int i, int i2) {
        return super.mo21892a(context, i, i2);
    }

    @Nullable
    /* renamed from: a */
    public PendingIntent m21903a(Context context, ConnectionResult connectionResult) {
        return connectionResult.m32002J() ? connectionResult.m32003I() : mo21892a(context, connectionResult.m32000c(), 0);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6793d
    @Nullable
    /* renamed from: a */
    public Intent mo21890a(Context context, int i, @Nullable String str) {
        return super.mo21890a(context, i, str);
    }

    @Nullable
    /* renamed from: a */
    public final zabq m21901a(Context context, AbstractC6883i1 i1Var) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme(ApexHomeBadger.PACKAGENAME);
        zabq zabqVar = new zabq(i1Var);
        context.registerReceiver(zabqVar, intentFilter);
        zabqVar.m31967a(context);
        if (m21889a(context, "com.google.android.gms")) {
            return zabqVar;
        }
        i1Var.mo21529a();
        zabqVar.m31968a();
        return null;
    }

    @TargetApi(20)
    /* renamed from: a */
    public final void m21904a(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        if (i == 18) {
            m21897d(context);
        } else if (pendingIntent != null) {
            String d = C6987f.m21373d(context, i);
            String c = C6987f.m21374c(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(d).setStyle(new NotificationCompat.BigTextStyle().bigText(c));
            if (C7078j.m21144b(context)) {
                C7021t.m21282b(C7083o.m21125g());
                style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
                if (C7078j.m21143c(context)) {
                    style.addAction(R$drawable.common_full_open_on_phone, resources.getString(R$string.common_open_on_phone), pendingIntent);
                } else {
                    style.setContentIntent(pendingIntent);
                }
            } else {
                style.setSmallIcon(17301642).setTicker(resources.getString(R$string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(c);
            }
            if (C7083o.m21122j()) {
                C7021t.m21282b(C7083o.m21122j());
                String b = m21900b();
                String str2 = b;
                if (b == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String b2 = C6987f.m21376b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", b2, 4));
                        str2 = "com.google.android.gms.availability";
                    } else {
                        str2 = "com.google.android.gms.availability";
                        if (!b2.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(b2);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str2 = "com.google.android.gms.availability";
                        }
                    }
                }
                style.setChannelId(str2);
            }
            Notification build = style.build();
            if (i == 1 || i == 2 || i == 3) {
                i2 = C6799g.GMS_AVAILABILITY_NOTIFICATION_ID;
                C6799g.sCanceledAvailabilityNotification.set(false);
            } else {
                i2 = C6799g.GMS_GENERAL_ERROR_NOTIFICATION_ID;
            }
            notificationManager.notify(i2, build);
        }
    }

    /* renamed from: a */
    public final boolean m21906a(Activity activity, @NonNull AbstractC6874h hVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a = m21905a(activity, i, AbstractDialogInterface$OnClickListenerC6989g.m21368a(hVar, mo21890a(activity, i, "d"), 2), onCancelListener);
        if (a == null) {
            return false;
        }
        m21908a(activity, a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    /* renamed from: a */
    public final boolean m21902a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent a = m21903a(context, connectionResult);
        if (a == null) {
            return false;
        }
        m21904a(context, connectionResult.m32000c(), (String) null, GoogleApiActivity.m31996a(context, a, i));
        return true;
    }

    @VisibleForTesting(otherwise = 2)
    /* renamed from: b */
    public final String m21900b() {
        String str;
        synchronized (f16682d) {
            str = this.f16684c;
        }
        return str;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6793d
    /* renamed from: b */
    public final String mo21888b(int i) {
        return super.mo21888b(i);
    }

    /* renamed from: b */
    public boolean m21899b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a = m21909a(activity, i, i2, onCancelListener);
        if (a == null) {
            return false;
        }
        m21908a(activity, a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6793d
    /* renamed from: c */
    public int mo21883c(Context context) {
        return super.mo21883c(context);
    }

    /* renamed from: c */
    public void m21898c(Context context, int i) {
        m21904a(context, i, (String) null, m21891a(context, i, 0, C3478n.f5989a));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.C6793d
    /* renamed from: c */
    public final boolean mo21884c(int i) {
        return super.mo21884c(i);
    }

    /* renamed from: d */
    public final void m21897d(Context context) {
        new HandlerC6791a(context).sendEmptyMessageDelayed(1, 120000L);
    }
}
