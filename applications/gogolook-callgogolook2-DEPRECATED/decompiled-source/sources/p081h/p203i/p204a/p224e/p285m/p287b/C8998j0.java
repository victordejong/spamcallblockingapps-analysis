package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.MainThread;
import com.appsflyer.internal.referrer.Payload;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/j0.class */
public final class C8998j0 {

    /* renamed from: a */
    public final AbstractC9016m0 f20446a;

    public C8998j0(AbstractC9016m0 m0Var) {
        C7021t.m21290a(m0Var);
        this.f20446a = m0Var;
    }

    /* renamed from: a */
    public static boolean m16549a(Context context) {
        ActivityInfo receiverInfo;
        C7021t.m21290a(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null) {
                return false;
            }
            return receiverInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @MainThread
    /* renamed from: a */
    public final void m16548a(Context context, Intent intent) {
        C9052s0 a = C9052s0.m16298a(context, (C8997j) null);
        C9027o c = a.mo16178c();
        if (intent == null) {
            c.m16372v().m16338a("Receiver called with null intent");
            return;
        }
        a.mo16187b();
        String action = intent.getAction();
        c.m16389A().m16337a("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            c.m16389A().m16338a("Starting wakeful intent.");
            this.f20446a.mo16467a(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                a.mo16214a().m16364a(new RunnableC9004k0(this, a, c));
            } catch (Exception e) {
                c.m16372v().m16337a("Install Referrer Reporter encountered a problem", e);
            }
            BroadcastReceiver.PendingResult a2 = this.f20446a.mo16468a();
            String stringExtra = intent.getStringExtra(Payload.REFERRER);
            if (stringExtra == null) {
                c.m16389A().m16338a("Install referrer extras are null");
                if (a2 != null) {
                    a2.finish();
                    return;
                }
                return;
            }
            c.m16369y().m16337a("Install referrer extras are", stringExtra);
            String str = stringExtra;
            if (!stringExtra.contains("?")) {
                String valueOf = String.valueOf(stringExtra);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            Bundle a3 = a.m16274s().m16737a(Uri.parse(str));
            if (a3 == null) {
                c.m16389A().m16338a("No campaign defined in install referrer broadcast");
                if (a2 != null) {
                    a2.finish();
                    return;
                }
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                c.m16372v().m16338a("Install referrer is missing timestamp");
            }
            a.mo16214a().m16364a(new RunnableC9010l0(this, a, longExtra, a3, context, c, a2));
        }
    }
}
