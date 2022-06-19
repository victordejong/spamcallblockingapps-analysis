package com.callapp.contacts.activity.analytics.cards;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.activity.analytics.cards.CommunityCardDialog;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.RoundedCornersImageView;
import com.facebook.common.C10165a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog.class */
public class InsightsPremuimDialog extends DialogPopup {

    /* renamed from: a */
    InsightsPremuimDialogType f19619a;

    /* renamed from: b */
    CommunityCardDialog.UserClickOnConfirmPhone f19620b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType.class */
    public enum InsightsPremuimDialogType {
        ADVANCED,
        MASTER,
        CONFIRM
    }

    public InsightsPremuimDialog(InsightsPremuimDialogType insightsPremuimDialogType, CommunityCardDialog.UserClickOnConfirmPhone userClickOnConfirmPhone) {
        this.f19619a = insightsPremuimDialogType;
        this.f19620b = userClickOnConfirmPhone;
    }

    protected int getLayoutResource() {
        return 2131558752;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131364571);
        linearLayout.setBackgroundResource(2131230876);
        ViewUtils.m27294c(linearLayout, 2131230876, ThemeUtils.getColor(2131099686));
        TextView textView = (TextView) inflate.findViewById(2131364130);
        TextView textView2 = (TextView) inflate.findViewById(2131364013);
        TextView textView3 = (TextView) inflate.findViewById(2131362553);
        TextView textView4 = (TextView) inflate.findViewById(2131363274);
        TextView textView5 = (TextView) inflate.findViewById(2131362900);
        final TextView textView6 = (TextView) inflate.findViewById(C10165a.C10169d.button);
        RoundedCornersImageView roundedCornersImageView = (RoundedCornersImageView) inflate.findViewById(2131363000);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131363024);
        TextView textView7 = (TextView) inflate.findViewById(2131363027);
        TextView textView8 = (TextView) inflate.findViewById(2131363026);
        TextView textView9 = (TextView) inflate.findViewById(2131363025);
        textView.setText(Activities.getString(2131886616));
        textView3.setText(Activities.getString(2131887354));
        textView5.setText(Activities.getString(2131887053));
        textView8.setText(Activities.getString(2131886612));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        textView3.setTextColor(ThemeUtils.getColor(2131099784));
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView5.setTextColor(ThemeUtils.getColor(2131100140));
        textView6.setTextColor(ThemeUtils.getColor(2131099784));
        if (this.f19619a == InsightsPremuimDialogType.ADVANCED) {
            textView2.setText(Activities.getString(2131886229));
            textView4.setText(Activities.m27697a(2131887055, UserProfileManager.get().getUserFirstName()));
            textView6.setText(Activities.getString(2131886946));
            relativeLayout.setBackgroundResource(2131230876);
            ViewUtils.m27294c(relativeLayout, 2131230876, ThemeUtils.getColor(2131099811));
            roundedCornersImageView.setImageResource(2131230823);
            textView7.setText(Activities.getString(2131886620));
            textView9.setText(Activities.getString(2131886227));
        } else if (this.f19619a == InsightsPremuimDialogType.CONFIRM) {
            textView2.setText(Activities.getString(2131886229));
            textView4.setText(Activities.m27697a(2131887054, UserProfileManager.get().getUserFirstName()));
            textView6.setText(Activities.getString(2131886627));
            relativeLayout.setBackgroundResource(2131230876);
            ViewUtils.m27294c(relativeLayout, 2131230876, ThemeUtils.getColor(2131099811));
            roundedCornersImageView.setImageResource(2131230823);
            textView7.setText(Activities.getString(2131886620));
            textView9.setText(Activities.getString(2131886227));
            textView3.setVisibility(8);
        } else {
            textView2.setText(Activities.getString(2131887142));
            textView4.setText(Activities.m27697a(2131887055, UserProfileManager.get().getUserFirstName()));
            textView6.setText(Activities.getString(2131886946));
            relativeLayout.setBackgroundResource(2131230876);
            ViewUtils.m27294c(relativeLayout, 2131230876, ThemeUtils.getColor(2131099813));
            roundedCornersImageView.setImageResource(2131232054);
            textView7.setText(Activities.getString(2131886622));
            textView9.setText(Activities.getString(2131887140));
        }
        textView6.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.InsightsPremuimDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InsightsPremuimDialog.this.dismiss();
                AndroidUtils.m27630a(textView6, 1);
                if (InsightsPremuimDialog.this.f19619a != InsightsPremuimDialogType.CONFIRM || InsightsPremuimDialog.this.f19620b == null) {
                    return;
                }
                InsightsPremuimDialog.this.f19620b.onClickConfirm();
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
