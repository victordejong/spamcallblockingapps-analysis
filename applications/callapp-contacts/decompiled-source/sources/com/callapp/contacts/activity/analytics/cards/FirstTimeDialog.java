package com.callapp.contacts.activity.analytics.cards;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.facebook.common.a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/FirstTimeDialog.class */
public class FirstTimeDialog extends DialogPopup {
    public FirstTimeDialog() {
        AnalyticsManager.get().a(Constants.INSIGHTS, "ViewWelcomeInsightsPopup");
    }

    protected int getLayoutResource() {
        return 2131558754;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131364130);
        TextView textView2 = (TextView) inflate.findViewById(2131364016);
        TextView textView3 = (TextView) inflate.findViewById(2131364020);
        TextView textView4 = (TextView) inflate.findViewById(2131364024);
        final TextView textView5 = (TextView) inflate.findViewById(a.d.button);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131364571);
        linearLayout.setBackgroundResource(2131230876);
        ViewUtils.c(linearLayout, 2131230876, ThemeUtils.getColor(2131099686));
        textView.setText(Activities.getString(2131887052));
        textView2.setText(Activities.getString(2131887049));
        textView3.setText(Activities.getString(2131887050));
        textView4.setText(Activities.getString(2131887051));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView3.setTextColor(ThemeUtils.getColor(2131100140));
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        if (Build.VERSION.SDK_INT >= 23) {
            textView5.setForeground(b.a(CallAppApplication.get(), 2131230873));
        }
        textView5.setText(Activities.getString(2131887048));
        textView5.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.FirstTimeDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(textView5, 1);
                AnalyticsManager.get().a(Constants.INSIGHTS, "ClickStartInsightsWelcomePopup");
                FirstTimeDialog.this.dismiss();
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean shouldCanceledOnTouchOutside() {
        return false;
    }
}
