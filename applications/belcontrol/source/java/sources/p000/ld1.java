package p000;

import android.app.AlertDialog;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import java.util.Arrays;
import java.util.EnumSet;
import p000.md1;
import p000.r71;
import p000.w91;
import z7;
/* renamed from: ld1 */
/* loaded from: classes3-dex2jar.jar:ld1.class */
public class ld1 extends md1 {

    /* renamed from: k */
    public static final String f6949k = ld1.class.getCanonicalName() + ".EXTRA_NOTIFICATION_ID";

    /* renamed from: ld1$a */
    /* loaded from: classes3-dex2jar.jar:ld1$a.class */
    public class DialogInterface$OnClickListenerC1463a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC1463a() {
            ld1.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Bundle bundle = new Bundle();
            bundle.putString("Payload Type", "" + ld1.this.f7001c);
            w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_ACTED, bundle);
            dialogInterface.cancel();
        }
    }

    /* renamed from: ld1$b */
    /* loaded from: classes3-dex2jar.jar:ld1$b.class */
    public class DialogInterface$OnClickListenerC1464b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f6951a;

        /* renamed from: b */
        public final /* synthetic */ Intent f6952b;

        /* renamed from: ld1$b$a */
        /* loaded from: classes3-dex2jar.jar:ld1$b$a.class */
        public class RunnableC1465a implements Runnable {
            public RunnableC1465a() {
                DialogInterface$OnClickListenerC1464b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogInterface$OnClickListenerC1464b dialogInterface$OnClickListenerC1464b = DialogInterface$OnClickListenerC1464b.this;
                Context context = dialogInterface$OnClickListenerC1464b.f6951a;
                if (context != null) {
                    context.startActivity(dialogInterface$OnClickListenerC1464b.f6952b);
                }
            }
        }

        public DialogInterface$OnClickListenerC1464b(Context context, Intent intent) {
            ld1.this = r4;
            this.f6951a = context;
            this.f6952b = intent;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC1465a(), 0L);
            Bundle bundle = new Bundle();
            bundle.putString("Payload Type", "" + ld1.this.f7001c);
            w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_ACTED, bundle);
            dialogInterface.cancel();
        }
    }

    /* renamed from: ld1$c */
    /* loaded from: classes3-dex2jar.jar:ld1$c.class */
    public class DialogInterface$OnClickListenerC1466c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC1466c() {
            ld1.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Bundle bundle = new Bundle();
            bundle.putString("Payload Type", "" + ld1.this.f7001c);
            w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_ACTED, bundle);
            dialogInterface.cancel();
        }
    }

    /* renamed from: ld1$d */
    /* loaded from: classes3-dex2jar.jar:ld1$d.class */
    public class RunnableC1467d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AlertDialog.Builder f6956a;

        public RunnableC1467d(AlertDialog.Builder builder) {
            ld1.this = r4;
            this.f6956a = builder;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f6956a.create().show();
                Bundle bundle = new Bundle();
                bundle.putString("Payload Type", "" + ld1.this.f7001c);
                w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_SHOWN, bundle);
            } catch (Throwable th) {
                j91.m1504l(this, "Cannot show Alert message", th);
            }
        }
    }

    /* renamed from: j */
    public static void m1307j(Intent intent) {
        intent.removeExtra(f6949k);
    }

    @Override // p000.md1
    /* renamed from: b */
    public boolean mo928b(md1.EnumC1473b enumC1473b, Context context) {
        if ((r71.EnumC1638a.f7978p1.m695a() || !Arrays.asList(m1303n()).contains(this.f7001c)) && this.f7002d.contains(md1.EnumC1472a.FLAG_NTENABLE)) {
            EnumSet<md1.EnumC1472a> enumSet = this.f7002d;
            md1.EnumC1472a enumC1472a = md1.EnumC1472a.FLAG_NTMOMENT_APP_OPEN;
            if (enumSet.contains(enumC1472a) && enumC1473b != md1.EnumC1473b.PUSH_CONTEXT_APP_OPEN) {
                return false;
            }
            return (!this.f7002d.contains(enumC1472a) || !this.f7002d.contains(md1.EnumC1472a.FLAG_NTTYPE_ALERT)) ? m1304m() : m1305l(context);
        }
        return true;
    }

    /* renamed from: k */
    public void m1306k(Context context, Intent intent) {
        if (TextUtils.isEmpty(this.f7005h)) {
            String str = f6949k;
            if (!intent.hasExtra(str) || intent.getIntExtra(str, -1) != this.f7001c.intValue()) {
                return;
            }
            m1305l(context);
        }
    }

    /* renamed from: l */
    public final boolean m1305l(Context context) {
        if (!r71.EnumC1638a.f7988t.m695a()) {
            return false;
        }
        Application application = context;
        if (context == null) {
            application = fa1.m1840j();
        }
        AlertDialog.Builder m1081i = oe1.m1081i(application);
        m1081i.setMessage(this.f7003f).setCancelable(true);
        Uri uri = null;
        try {
            if (!TextUtils.isEmpty(this.f7005h)) {
                uri = Uri.parse(this.f7005h);
            }
        } catch (Throwable th) {
            uri = null;
        }
        if (uri == null) {
            m1081i.setNegativeButton(2131821909, new DialogInterface$OnClickListenerC1463a());
        } else {
            Intent intent = uri.getScheme().equals("callcontrol") ? new Intent(application, MainActivity.class) : new Intent("android.intent.action.VIEW", uri);
            intent.setData(uri);
            intent.addFlags(268435456);
            m1081i.setPositiveButton(2131821909, new DialogInterface$OnClickListenerC1464b(application, intent));
            m1081i.setNegativeButton(2131820976, new DialogInterface$OnClickListenerC1466c());
        }
        if (!TextUtils.isEmpty(this.f7004g)) {
            m1081i.setTitle(this.f7004g);
        }
        new Handler(Looper.getMainLooper()).post(new RunnableC1467d(m1081i));
        return true;
    }

    /* renamed from: m */
    public final boolean m1304m() {
        Intent intent;
        if (!r71.EnumC1638a.f7988t.m695a()) {
            return false;
        }
        try {
            Application m1840j = fa1.m1840j();
            Uri uri = null;
            try {
                if (!TextUtils.isEmpty(this.f7005h)) {
                    uri = Uri.parse(this.f7005h);
                }
            } catch (Throwable th) {
                uri = null;
            }
            if (uri == null) {
                intent = new Intent(m1840j, MainActivity.class);
                intent.putExtra(f6949k, this.f7001c);
            } else {
                intent = uri.getScheme().equals("callcontrol") ? new Intent(m1840j, MainActivity.class) : new Intent("android.intent.action.VIEW", uri);
                intent.setData(uri);
                intent.setFlags(268435456);
            }
            PendingIntent activity = PendingIntent.getActivity(m1840j, 0, intent, 134217728);
            z7.e eVar = new z7.e(m1840j, "cca_service");
            eVar.p(activity);
            eVar.j(true);
            eVar.F(2131231608);
            eVar.q(this.f7003f);
            z7.c cVar = new z7.c();
            cVar.l(this.f7003f);
            eVar.H(cVar);
            if (!TextUtils.isEmpty(this.f7004g)) {
                eVar.r(this.f7004g);
            }
            Notification c = eVar.c();
            NotificationManager notificationManager = (NotificationManager) m1840j.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.notify(this.f7001c.intValue(), c);
            }
            Bundle bundle = new Bundle();
            bundle.putString("Payload Type", "" + this.f7001c);
            w91.m275c(this, w91.EnumC1708a.PUSH_NOTIFICATION_SHOWN, bundle);
            return true;
        } catch (Throwable th2) {
            j91.m1504l(this, "Error handling notification", th2);
            return false;
        }
    }

    /* renamed from: n */
    public final Integer[] m1303n() {
        return new Integer[]{10051, 10050, 10002, 10003, 10004, 10005, 10006, 10007, 10008, 10009, 10010, 10011, 10001};
    }
}
