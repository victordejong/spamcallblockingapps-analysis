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
import androidx.core.app.C0472h;
import androidx.fragment.app.ActivityC0664d;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.AbstractC2510af;
import com.google.android.gms.common.api.internal.AbstractC2554i;
import com.google.android.gms.common.api.internal.C2511ag;
import com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC2640f;
import com.google.android.gms.common.internal.C2639e;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.C2712i;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.internal.p137d.HandlerC3718f;
import com.google.android.gms.p117a.C2240a;
/* renamed from: com.google.android.gms.common.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/e.class */
public class C2591e extends C2593f {

    /* renamed from: e */
    private String f7269e;

    /* renamed from: c */
    private static final Object f7267c = new Object();

    /* renamed from: d */
    private static final C2591e f7268d = new C2591e();

    /* renamed from: a */
    public static final int f7266a = C2593f.f7273b;

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.gms.common.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/e$a.class */
    public final class HandlerC2592a extends HandlerC3718f {

        /* renamed from: a */
        private final Context f7270a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC2592a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            C2591e.this = r4;
            this.f7270a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int mo14170a = C2591e.this.mo14170a(this.f7270a);
                    if (!C2591e.this.mo14171a(mo14170a)) {
                        return;
                    }
                    C2591e.this.m14180a(this.f7270a, mo14170a);
                    return;
                default:
                    Log.w("GoogleApiAvailability", new StringBuilder(50).append("Don't know how to handle this message: ").append(message.what).toString());
                    return;
            }
        }
    }

    /* renamed from: a */
    public static Dialog m14182a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(C2639e.m14030c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m14183a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* renamed from: a */
    static Dialog m14179a(Context context, int i, AbstractDialogInterface$OnClickListenerC2640f abstractDialogInterface$OnClickListenerC2640f, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog create;
        AlertDialog.Builder builder = null;
        if (i == 0) {
            create = null;
        } else {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16843529, typedValue, true);
            if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new AlertDialog.Builder(context, 5);
            }
            AlertDialog.Builder builder2 = builder;
            if (builder == null) {
                builder2 = new AlertDialog.Builder(context);
            }
            builder2.setMessage(C2639e.m14030c(context, i));
            if (onCancelListener != null) {
                builder2.setOnCancelListener(onCancelListener);
            }
            String m14028e = C2639e.m14028e(context, i);
            if (m14028e != null) {
                builder2.setPositiveButton(m14028e, abstractDialogInterface$OnClickListenerC2640f);
            }
            String m14035a = C2639e.m14035a(context, i);
            if (m14035a != null) {
                builder2.setTitle(m14035a);
            }
            create = builder2.create();
        }
        return create;
    }

    /* renamed from: a */
    public static C2591e m14185a() {
        return f7268d;
    }

    /* renamed from: a */
    static void m14183a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof ActivityC0664d) {
            C2676k.m13907a(dialog, onCancelListener).mo13906a(((ActivityC0664d) activity).m19874m(), str);
            return;
        }
        DialogFragmentC2583c.m14204a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    /* renamed from: a */
    private final void m14178a(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        if (i == 18) {
            m14173b(context);
        } else if (pendingIntent == null) {
            if (i != 6) {
                return;
            }
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        } else {
            String m14031b = C2639e.m14031b(context, i);
            String m14029d = C2639e.m14029d(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            C0472h.C0475c m20777a = new C0472h.C0475c(context).m20769b(true).m20774a(true).m20776a((CharSequence) m14031b).m20777a(new C0472h.C0474b().m20785a(m14029d));
            if (C2712i.m13857a(context)) {
                C2662s.m13977a(C2716m.m13836g());
                m20777a.m20783a(context.getApplicationInfo().icon).m20772b(2);
                if (C2712i.m13856b(context)) {
                    m20777a.m20782a(C2240a.C2241a.common_full_open_on_phone, resources.getString(C2240a.C2242b.common_open_on_phone), pendingIntent);
                } else {
                    m20777a.m20779a(pendingIntent);
                }
            } else {
                m20777a.m20783a(17301642).m20768c(resources.getString(C2240a.C2242b.common_google_play_services_notification_ticker)).m20780a(System.currentTimeMillis()).m20779a(pendingIntent).m20770b(m14029d);
            }
            if (C2716m.m13832k()) {
                C2662s.m13977a(C2716m.m13832k());
                String m14172c = m14172c();
                String str2 = m14172c;
                if (m14172c == null) {
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String m14032b = C2639e.m14032b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", m14032b, 4));
                        str2 = "com.google.android.gms.availability";
                    } else {
                        str2 = "com.google.android.gms.availability";
                        if (!m14032b.contentEquals(notificationChannel.getName())) {
                            notificationChannel.setName(m14032b);
                            notificationManager.createNotificationChannel(notificationChannel);
                            str2 = "com.google.android.gms.availability";
                        }
                    }
                }
                m20777a.m20775a(str2);
            }
            Notification m20773b = m20777a.m20773b();
            switch (i) {
                case 1:
                case 2:
                case 3:
                    i2 = 10436;
                    C2595h.f7277c.set(false);
                    break;
                default:
                    i2 = 39789;
                    break;
            }
            notificationManager.notify(i2, m20773b);
        }
    }

    /* renamed from: c */
    private final String m14172c() {
        String str;
        synchronized (f7267c) {
            str = this.f7269e;
        }
        return str;
    }

    @Override // com.google.android.gms.common.C2593f
    /* renamed from: a */
    public int mo14170a(Context context) {
        return super.mo14170a(context);
    }

    /* renamed from: a */
    public Dialog m14184a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m14179a(activity, i, AbstractDialogInterface$OnClickListenerC2640f.m14027a(activity, mo14167a(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.C2593f
    /* renamed from: a */
    public PendingIntent mo14169a(Context context, int i, int i2) {
        return super.mo14169a(context, i, i2);
    }

    /* renamed from: a */
    public PendingIntent m14176a(Context context, C2579b c2579b) {
        return c2579b.m14212a() ? c2579b.m14208d() : mo14169a(context, c2579b.m14209c(), 0);
    }

    @Override // com.google.android.gms.common.C2593f
    /* renamed from: a */
    public Intent mo14167a(Context context, int i, String str) {
        return super.mo14167a(context, i, str);
    }

    /* renamed from: a */
    public final C2511ag m14177a(Context context, AbstractC2510af abstractC2510af) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        C2511ag c2511ag = new C2511ag(abstractC2510af);
        context.registerReceiver(c2511ag, intentFilter);
        c2511ag.m14394a(context);
        C2511ag c2511ag2 = c2511ag;
        if (!m14166a(context, "com.google.android.gms")) {
            abstractC2510af.mo14347a();
            c2511ag.m14395a();
            c2511ag2 = null;
        }
        return c2511ag2;
    }

    /* renamed from: a */
    public void m14180a(Context context, int i) {
        m14178a(context, i, (String) null, m14168a(context, i, 0, "n"));
    }

    @Override // com.google.android.gms.common.C2593f
    /* renamed from: a */
    public final boolean mo14171a(int i) {
        return super.mo14171a(i);
    }

    /* renamed from: a */
    public final boolean m14181a(Activity activity, AbstractC2554i abstractC2554i, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        boolean z;
        Dialog m14179a = m14179a(activity, i, AbstractDialogInterface$OnClickListenerC2640f.m14026a(abstractC2554i, mo14167a(activity, i, "d"), 2), onCancelListener);
        if (m14179a == null) {
            z = false;
        } else {
            m14183a(activity, m14179a, "GooglePlayServicesErrorDialog", onCancelListener);
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m14175a(Context context, C2579b c2579b, int i) {
        boolean z;
        PendingIntent m14176a = m14176a(context, c2579b);
        if (m14176a != null) {
            m14178a(context, c2579b.m14209c(), (String) null, GoogleApiActivity.m14465a(context, m14176a, i));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.common.C2593f
    /* renamed from: b */
    public int mo14163b(Context context, int i) {
        return super.mo14163b(context, i);
    }

    @Override // com.google.android.gms.common.C2593f
    /* renamed from: b */
    public final String mo14164b(int i) {
        return super.mo14164b(i);
    }

    /* renamed from: b */
    final void m14173b(Context context) {
        new HandlerC2592a(context).sendEmptyMessageDelayed(1, 120000L);
    }

    /* renamed from: b */
    public boolean m14174b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        boolean z;
        Dialog m14184a = m14184a(activity, i, i2, onCancelListener);
        if (m14184a == null) {
            z = false;
        } else {
            m14183a(activity, m14184a, "GooglePlayServicesErrorDialog", onCancelListener);
            z = true;
        }
        return z;
    }
}
