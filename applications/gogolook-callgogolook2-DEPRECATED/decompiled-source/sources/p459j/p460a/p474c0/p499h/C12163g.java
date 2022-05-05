package p459j.p460a.p474c0.p499h;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.UserManager;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.h.g */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/g.class */
public class C12163g {

    /* renamed from: j.a.c0.h.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/g$a.class */
    public static final class DialogInterface$OnClickListenerC12164a implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            System.exit(0);
        }
    }

    /* renamed from: a */
    public static boolean m6947a(Context context, Activity activity) {
        if (!C14017g4.m2805s() || !((UserManager) context.getSystemService("user")).hasUserRestriction("no_sms")) {
            return true;
        }
        new AlertDialog.Builder(activity).setMessage(R$string.requires_sms_permissions_message).setCancelable(false).setNegativeButton(R$string.requires_sms_permissions_close_button, new DialogInterface$OnClickListenerC12164a()).show();
        return false;
    }

    /* renamed from: b */
    public static boolean m6946b(Context context, Activity activity) {
        AbstractC11528g.m9259k().mo9242i();
        AbstractC11516a.m9413n().mo9397l();
        return m6947a(context, activity);
    }
}
