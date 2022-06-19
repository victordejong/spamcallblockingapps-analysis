package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.availableupdate.q */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/q.class */
public abstract class AbstractC2266q {

    /* renamed from: a */
    public AlertDialog f7338a;

    /* renamed from: b */
    public p f7339b;

    /* renamed from: com.huawei.hms.availableupdate.q$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/q$a.class */
    public class DialogInterface$OnCancelListenerC2267a implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC2267a() {
            AbstractC2266q.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractC2266q.this.m38126c();
        }
    }

    /* renamed from: com.huawei.hms.availableupdate.q$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/q$b.class */
    public class DialogInterface$OnCancelListenerC2268b implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC2268b() {
            AbstractC2266q.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractC2266q.this.m38126c();
        }
    }

    /* renamed from: a */
    public static int m38129a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    /* renamed from: a */
    public void m38131a() {
        AlertDialog alertDialog = this.f7338a;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }

    /* renamed from: a */
    public void m38130a(AlertDialog alertDialog) {
        this.f7338a.setOnCancelListener(null);
        this.f7338a.cancel();
        this.f7338a = alertDialog;
        alertDialog.setCanceledOnTouchOutside(false);
        alertDialog.setOnCancelListener(new DialogInterface$OnCancelListenerC2268b());
        alertDialog.show();
    }

    /* renamed from: a */
    public void m38128a(p pVar) {
        this.f7339b = pVar;
        if (m38124e() == null || m38124e().isFinishing()) {
            HMSLog.m37195e("AbstractDialog", "In show, The activity is null or finishing.");
            return;
        }
        AlertDialog m38122g = m38122g();
        this.f7338a = m38122g;
        m38122g.setCanceledOnTouchOutside(false);
        this.f7338a.setOnCancelListener(new DialogInterface$OnCancelListenerC2267a());
        this.f7338a.show();
    }

    /* renamed from: b */
    public void m38127b() {
        AlertDialog alertDialog = this.f7338a;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: c */
    public void m38126c() {
        p pVar = this.f7339b;
        if (pVar != null) {
            pVar.a(this);
        }
    }

    /* renamed from: d */
    public void m38125d() {
        p pVar = this.f7339b;
        if (pVar != null) {
            pVar.b(this);
        }
    }

    /* renamed from: e */
    public Activity m38124e() {
        p pVar = this.f7339b;
        if (pVar != null) {
            return pVar.b();
        }
        return null;
    }

    /* renamed from: f */
    public int m38123f() {
        return m38129a(m38124e()) != 0 ? 0 : 3;
    }

    /* renamed from: g */
    public abstract AlertDialog m38122g();
}
