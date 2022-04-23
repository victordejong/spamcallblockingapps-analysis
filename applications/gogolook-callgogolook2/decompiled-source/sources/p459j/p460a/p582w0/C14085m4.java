package p459j.p460a.p582w0;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.share.ReferralActivity;
import gogolook.callgogolook2.view.SimpleInAppDialog;
/* renamed from: j.a.w0.m4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/m4.class */
public class C14085m4 {

    /* renamed from: j.a.w0.m4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m4$a.class */
    public static final class View$OnClickListenerC14086a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31558a;

        public View$OnClickListenerC14086a(Context context) {
            this.f31558a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f31558a;
            if (!(context instanceof ReferralActivity)) {
                context.startActivity(new Intent(context, ReferralActivity.class));
            }
        }
    }

    /* renamed from: a */
    public static void m2604a(Context context) {
        SimpleInAppDialog simpleInAppDialog = new SimpleInAppDialog(context);
        simpleInAppDialog.m25868b(R$drawable.ic_referral_success);
        simpleInAppDialog.m25860d(45);
        simpleInAppDialog.setTitle(R$string.referral_success_dialog_title);
        simpleInAppDialog.m25858e(m2605a() ? R$string.referral_success_dialog_content_type2 : R$string.referral_success_dialog_content);
        simpleInAppDialog.mo2915b(R$string.referral_success_dialog_button, new View$OnClickListenerC14086a(context));
        simpleInAppDialog.m25859d(true);
        simpleInAppDialog.show();
    }

    /* renamed from: a */
    public static boolean m2605a() {
        return C13915b3.m3062a("referral_ad_free", false);
    }

    /* renamed from: b */
    public static boolean m2603b() {
        return C13915b3.m3062a("referral_premiumdb", false);
    }

    /* renamed from: c */
    public static boolean m2602c() {
        boolean z = false;
        if (C13915b3.m3062a("referral_ad_free", false) || C14017g4.m2835A() || C14017g4.m2831E()) {
            z = true;
        }
        return z;
    }
}
