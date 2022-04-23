package com.callapp.contacts.activity.analytics.cards;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.activity.analytics.cards.InsightsPremuimDialog;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.RoundedCornersImageView;
import com.facebook.common.a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog.class */
public class CommunityFreeGiftDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    InsightsPremuimDialog.InsightsPremuimDialogType f10730a;

    public CommunityFreeGiftDialog(InsightsPremuimDialog.InsightsPremuimDialogType insightsPremuimDialogType) {
        this.f10730a = insightsPremuimDialogType;
    }

    protected int getLayoutResource() {
        return 2131558751;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131364571);
        linearLayout.setBackgroundResource(2131230876);
        ViewUtils.c(linearLayout, 2131230876, ThemeUtils.getColor(2131099686));
        TextView textView = (TextView) inflate.findViewById(2131364130);
        TextView textView2 = (TextView) inflate.findViewById(2131364013);
        TextView textView3 = (TextView) inflate.findViewById(2131362553);
        TextView textView4 = (TextView) inflate.findViewById(2131363274);
        TextView textView5 = (TextView) inflate.findViewById(2131362404);
        TextView textView6 = (TextView) inflate.findViewById(2131362595);
        final TextView textView7 = (TextView) inflate.findViewById(a.d.button);
        RoundedCornersImageView roundedCornersImageView = (RoundedCornersImageView) inflate.findViewById(2131363000);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131363024);
        TextView textView8 = (TextView) inflate.findViewById(2131363027);
        TextView textView9 = (TextView) inflate.findViewById(2131363026);
        TextView textView10 = (TextView) inflate.findViewById(2131363025);
        textView.setText(Activities.getString(2131886616));
        textView9.setText(Activities.getString(2131886612));
        textView5.setText(Activities.getString(2131886628));
        textView6.setText(Activities.getString(2131886767));
        textView7.setText(Activities.getString(2131886946));
        textView3.setText(Activities.getString(2131886660));
        textView4.setText(Activities.getString(2131886661));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        textView5.setTextColor(ThemeUtils.getColor(2131100140));
        textView6.setTextColor(ThemeUtils.getColor(2131100140));
        textView3.setTextColor(ThemeUtils.getColor(2131099784));
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView7.setTextColor(ThemeUtils.getColor(2131099784));
        if (this.f10730a == InsightsPremuimDialog.InsightsPremuimDialogType.ADVANCED) {
            textView2.setText(Activities.getString(2131886229));
            relativeLayout.setBackgroundResource(2131230876);
            ViewUtils.c(relativeLayout, 2131230876, ThemeUtils.getColor(2131099811));
            roundedCornersImageView.setImageResource(2131230823);
            textView8.setText(Activities.getString(2131886620));
            textView10.setText(Activities.getString(2131886227));
            textView3.setVisibility(8);
            textView4.setVisibility(8);
        } else {
            textView2.setText(Activities.getString(2131887142));
            relativeLayout.setBackgroundResource(2131230876);
            ViewUtils.c(relativeLayout, 2131230876, ThemeUtils.getColor(2131099813));
            roundedCornersImageView.setImageResource(2131232054);
            textView8.setText(Activities.getString(2131886622));
            textView10.setText(Activities.getString(2131887140));
        }
        textView7.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityFreeGiftDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(textView7, 1);
                CommunityFreeGiftDialog.this.dismiss();
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
