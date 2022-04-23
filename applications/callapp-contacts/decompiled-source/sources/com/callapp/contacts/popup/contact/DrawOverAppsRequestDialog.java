package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DrawOverAppsRequestDialog.class */
public class DrawOverAppsRequestDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private DialogPopup.IDialogOnClickListener f15535a;

    public DrawOverAppsRequestDialog(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "ViewDrawOverAfterOnboardingDialog");
        this.f15535a = iDialogOnClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickDrawOverAfterOnboardingDialogLater");
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickDrawOverAfterOnboardingDialogAllow");
        DialogPopup.IDialogOnClickListener iDialogOnClickListener = this.f15535a;
        if (iDialogOnClickListener != null) {
            iDialogOnClickListener.onClickListener(getActivity());
        }
        dismiss();
    }

    protected int getLayoutResource() {
        return 2131558611;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(2131363705);
        constraintLayout.setBackgroundResource(2131230876);
        ViewUtils.c(constraintLayout, 2131230876, ThemeUtils.getColor(2131099686));
        TextView textView = (TextView) inflate.findViewById(2131364130);
        textView.setText(Activities.getString(2131886781));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) inflate.findViewById(2131364030);
        textView2.setText(HtmlUtils.c(Activities.getString(2131886780)));
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView3 = (TextView) inflate.findViewById(2131363537);
        ViewUtils.b(textView3, 2131230874, ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099784), 0);
        textView3.setText(Activities.getString(2131886933));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DrawOverAppsRequestDialog$k4U43RccCXEJ0Ikey5Y21EMzhlA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawOverAppsRequestDialog.this.b(view);
            }
        });
        TextView textView4 = (TextView) inflate.findViewById(2131363364);
        textView4.setText(Activities.getString(2131887104));
        textView4.setTextColor(ThemeUtils.getColor(2131099890));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DrawOverAppsRequestDialog$AwXd6Uwc_XQQKStsoRYNnxxeGL8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawOverAppsRequestDialog.this.a(view);
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setBackgroundDrawableResource(17170445);
        window.setDimAmount(DialogPopup.BACKGROUND_DARKNESS.DARK.getValue());
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean shouldCanceledOnTouchOutside() {
        return false;
    }
}
