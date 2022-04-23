package gogolook.callgogolook2.iap;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.AbstractDialogActivity;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import gogolook.callgogolook2.view.SimpleInAppDialog;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/iap/IapRewardDialogActivity;", "Lgogolook/callgogolook2/AbstractDialogActivity;", "()V", "onCreateDialog", "Landroid/app/Dialog;", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/IapRewardDialogActivity.class */
public final class IapRewardDialogActivity extends AbstractDialogActivity {

    /* renamed from: gogolook.callgogolook2.iap.IapRewardDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/IapRewardDialogActivity$a.class */
    public static final class View$OnClickListenerC4485a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ SimpleInAppDialog f10794a;

        /* renamed from: b */
        public final /* synthetic */ IapRewardDialogActivity f10795b;

        /* renamed from: c */
        public final /* synthetic */ Activity f10796c;

        public View$OnClickListenerC4485a(SimpleInAppDialog simpleInAppDialog, IapRewardDialogActivity iapRewardDialogActivity, Activity activity) {
            this.f10794a = simpleInAppDialog;
            this.f10795b = iapRewardDialogActivity;
            this.f10796c = activity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            IapRewardDialogActivity iapRewardDialogActivity = this.f10795b;
            Activity activity = this.f10796c;
            iapRewardDialogActivity.startActivity(activity != null ? IapActivity.C4488b.m28094a(IapActivity.f10799k, activity, "from_discount_dialog_of_report_reward", null, null, 8, null) : null);
            this.f10794a.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.IapRewardDialogActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/IapRewardDialogActivity$b.class */
    public static final class View$OnClickListenerC4486b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ SimpleInAppDialog f10797a;

        public View$OnClickListenerC4486b(SimpleInAppDialog simpleInAppDialog) {
            this.f10797a = simpleInAppDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f10797a.dismiss();
        }
    }

    @Override // gogolook.callgogolook2.AbstractDialogActivity
    /* renamed from: a */
    public Dialog mo26021a(Activity activity) {
        SimpleInAppDialog simpleInAppDialog = new SimpleInAppDialog(activity);
        simpleInAppDialog.m25868b(R$drawable.image_iap_entrance_reward);
        simpleInAppDialog.setTitle(R$string.iap_discountforreportedusers_dialog_title);
        simpleInAppDialog.m25858e(R$string.iap_discountforreportedusers_dialog_content);
        simpleInAppDialog.m25859d(true);
        simpleInAppDialog.mo2915b(R$string.iap_discountforreportedusers_dialog_button, new View$OnClickListenerC4485a(simpleInAppDialog, this, activity));
        simpleInAppDialog.m25875a(new View$OnClickListenerC4486b(simpleInAppDialog));
        simpleInAppDialog.show();
        return simpleInAppDialog;
    }
}
