package com.callapp.contacts.activity.analytics.cards;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityCardDialog.class */
public class CommunityCardDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10722a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f10723b;

    /* renamed from: c  reason: collision with root package name */
    private UserClickOnConfirmPhone f10724c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10725d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone.class */
    public interface UserClickOnConfirmPhone {
        void onClickConfirm();
    }

    public CommunityCardDialog(boolean z, UserClickOnConfirmPhone userClickOnConfirmPhone, boolean z2, boolean z3) {
        this.f10722a = z;
        this.f10724c = userClickOnConfirmPhone;
        this.f10723b = z2;
        this.f10725d = z3;
    }

    protected int getLayoutResource() {
        return 2131558557;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131364130);
        TextView textView2 = (TextView) inflate.findViewById(2131364013);
        TextView textView3 = (TextView) inflate.findViewById(2131362090);
        TextView textView4 = (TextView) inflate.findViewById(2131362089);
        TextView textView5 = (TextView) inflate.findViewById(2131361999);
        TextView textView6 = (TextView) inflate.findViewById(2131361998);
        TextView textView7 = (TextView) inflate.findViewById(2131363243);
        TextView textView8 = (TextView) inflate.findViewById(2131363242);
        TextView textView9 = (TextView) inflate.findViewById(2131361997);
        TextView textView10 = (TextView) inflate.findViewById(2131363241);
        final TextView textView11 = (TextView) inflate.findViewById(2131362913);
        TextView textView12 = (TextView) inflate.findViewById(2131362900);
        TextView textView13 = (TextView) inflate.findViewById(2131362553);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131364571);
        linearLayout.setBackgroundResource(2131230876);
        ViewUtils.c(linearLayout, 2131230876, ThemeUtils.getColor(2131099686));
        final TextView textView14 = (TextView) inflate.findViewById(2131361996);
        textView.setText(Activities.getString(2131886616));
        textView2.setText(Activities.getString(2131886615));
        textView3.setText(Activities.getString(2131886621));
        textView5.setText(Activities.getString(2131886620));
        textView7.setText(Activities.getString(2131886622));
        textView4.setText(Activities.getString(2131886619));
        textView8.setText(Activities.getString(2131886612));
        textView6.setText(Activities.getString(2131886612));
        textView12.setText(Activities.getString(2131887053));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        textView12.setTextColor(ThemeUtils.getColor(2131100140));
        if (this.f10722a) {
            textView14.setVisibility(0);
            textView14.setText(Activities.getString(2131886613));
            textView14.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityCardDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (CommunityCardDialog.this.f10724c != null) {
                        CommunityCardDialog.this.dismiss();
                        AndroidUtils.a(textView14, 1);
                        CommunityCardDialog.this.f10724c.onClickConfirm();
                    }
                }
            });
        } else {
            textView14.setVisibility(4);
        }
        if (this.f10723b) {
            textView13.setText(Activities.getString(2131886614));
            textView13.setTextColor(ThemeUtils.getColor(2131100140));
            textView13.setVisibility(0);
        } else {
            textView13.setVisibility(8);
        }
        textView9.setText(Activities.getString(2131886227));
        textView10.setText(Activities.getString(2131887140));
        textView11.setText(Activities.getString(2131886946));
        textView11.setTextColor(ThemeUtils.getColor(2131099784));
        textView11.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityCardDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(textView11, 1);
                AnalyticsManager.get().a(Constants.INSIGHTS, "ClickGotItInsightsCommunityPopup");
                CommunityCardDialog.this.dismiss();
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
        return this.f10725d;
    }
}
