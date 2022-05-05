package gogolook.callgogolook2.intro;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import gogolook.callgogolook2.AbstractDialogActivity;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.view.SimpleInAppDialog;
import p081h.p119d.p120a.C5775k;
import p081h.p119d.p120a.C5776l;
import p459j.p460a.p582w0.C14036j2;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.DialogC14614e;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/SystemAlertPermissionDialogActivity.class */
public class SystemAlertPermissionDialogActivity extends AbstractDialogActivity {

    /* renamed from: gogolook.callgogolook2.intro.SystemAlertPermissionDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/SystemAlertPermissionDialogActivity$a.class */
    public class C4515a {

        /* renamed from: a */
        public int f10873a;

        /* renamed from: b */
        public int f10874b;

        /* renamed from: c */
        public int f10875c;

        /* renamed from: d */
        public String f10876d;

        /* renamed from: e */
        public String f10877e;

        /* renamed from: f */
        public String f10878f;

        /* renamed from: g */
        public String f10879g;

        public C4515a(SystemAlertPermissionDialogActivity systemAlertPermissionDialogActivity, Intent intent) {
            this.f10873a = C14036j2.m2733a(intent, "key.image", 0);
            this.f10874b = C14036j2.m2733a(intent, "key.placeholder", 0);
            this.f10875c = C14036j2.m2733a(systemAlertPermissionDialogActivity.getIntent(), "key.dialog.type", 0);
            this.f10876d = C14036j2.m2732a(intent, "key.title", (String) null);
            this.f10877e = C14036j2.m2732a(intent, "key.message", (String) null);
            this.f10878f = C14036j2.m2732a(intent, "key.positive.btn.text", C14206w4.m2225a((int) R$string.intro_cover_permission_confirm));
            this.f10879g = C14036j2.m2732a(intent, "key.lottie.file.name", (String) null);
        }
    }

    @Override // gogolook.callgogolook2.AbstractDialogActivity
    /* renamed from: a */
    public Dialog mo26021a(Activity activity) {
        C14300r.m1652b("SystemAlertPermissionDialog", getIntent());
        C4515a aVar = new C4515a(this, getIntent());
        return aVar.f10875c == 1 ? m28049a(activity, aVar) : m28046b(activity, aVar);
    }

    /* renamed from: a */
    public final DialogC14614e m28049a(Context context, C4515a aVar) {
        final DialogC14614e eVar = new DialogC14614e(context);
        eVar.setTitle(aVar.f10876d);
        eVar.m1011b(aVar.f10877e);
        eVar.m1015a(aVar.f10878f, new View.OnClickListener() { // from class: j.a.x.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogC14614e.this.dismiss();
            }
        });
        eVar.m1013a(true);
        eVar.m1010b(true);
        eVar.m1016a(aVar.f10879g);
        return eVar;
    }

    /* renamed from: b */
    public final SimpleInAppDialog m28046b(Context context, C4515a aVar) {
        final SimpleInAppDialog simpleInAppDialog = new SimpleInAppDialog(context);
        View.OnClickListener fVar = new View.OnClickListener() { // from class: j.a.x.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimpleInAppDialog.this.dismiss();
            }
        };
        simpleInAppDialog.m25879a().setAdjustViewBounds(false);
        C5775k<Integer> m = C5776l.m24470c(context).m24452a(Integer.valueOf(aVar.f10873a)).m24523m();
        m.mo24496b(aVar.f10874b);
        m.mo24491f();
        m.mo24518a(simpleInAppDialog.m25879a());
        if (!TextUtils.isEmpty(aVar.f10876d)) {
            simpleInAppDialog.m25866b(aVar.f10876d);
        }
        if (!TextUtils.isEmpty(aVar.f10877e)) {
            simpleInAppDialog.m25873a(aVar.f10877e);
        }
        simpleInAppDialog.m25870a(aVar.f10878f, fVar);
        simpleInAppDialog.m25859d(true);
        simpleInAppDialog.m25875a(fVar);
        return simpleInAppDialog;
    }
}
