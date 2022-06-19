package com.callapp.contacts.popup;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.RatePopup;
import com.callapp.contacts.popup.contact.DialogSimpleWithContent;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.review.AbstractC15097c;
import com.google.android.play.core.review.C15098d;
import com.google.android.play.core.review.C15104j;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.splitcompat.C15121q;
import com.google.android.play.core.tasks.AbstractC15177a;
import com.google.android.play.core.tasks.AbstractC15180d;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/RatePopup.class */
public class RatePopup extends DialogSimpleWithContent {

    /* renamed from: a */
    private final int f26916a = ThemeUtils.getColor(2131100140);

    /* renamed from: c */
    private final int f26917c = ThemeUtils.getColor(2131099930);

    /* renamed from: d */
    private Intent f26918d;

    /* renamed from: com.callapp.contacts.popup.RatePopup$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/RatePopup$2.class */
    public class C76242 implements DialogPopup.IDialogOnClickListener {
        C76242() {
            RatePopup.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m28042a(AbstractC15097c abstractC15097c, Activity activity, AbstractC15180d abstractC15180d) {
            if (abstractC15180d.mo9313b()) {
                abstractC15097c.mo9465a(activity, (ReviewInfo) abstractC15180d.mo9310c()).mo9320a(new AbstractC15177a() { // from class: com.callapp.contacts.popup._$$Lambda$RatePopup$2$X_c3FEiIWt363e0lYNLt2dtggjk
                    @Override // com.google.android.play.core.tasks.AbstractC15177a
                    public final void onComplete(AbstractC15180d abstractC15180d2) {
                        RatePopup.C76242.this.m28041a(abstractC15180d2);
                    }
                });
                return;
            }
            RatePopup.m28043a(RatePopup.this);
            RatePopup.this.dismiss();
        }

        /* renamed from: a */
        public /* synthetic */ void m28041a(AbstractC15180d abstractC15180d) {
            RatePopup.this.dismiss();
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(final Activity activity) {
            AndroidUtils.m27635a(activity);
            AnalyticsManager.get().m28450a(Constants.RATE_CALL_APP, "Rate popup clicked 5 stars");
            if ((!Activities.getString(2131887752).equals(Constants.GOOGLE_PLAY_STORE_NAME) && !Activities.getString(2131887752).equals("dev")) || !GooglePlayUtils.isGooglePlayServicesAvailable()) {
                RatePopup.m28043a(RatePopup.this);
                RatePopup.this.dismiss();
                return;
            }
            PlayCoreDialogWrapperActivity.m9635a(activity);
            final C15098d c15098d = new C15098d(new C15104j(C15121q.m9423a(activity)));
            c15098d.mo9466a().mo9320a(new AbstractC15177a() { // from class: com.callapp.contacts.popup._$$Lambda$RatePopup$2$Ki733WSg6iyMC6bQBLCS7OPmPa8
                @Override // com.google.android.play.core.tasks.AbstractC15177a
                public final void onComplete(AbstractC15180d abstractC15180d) {
                    RatePopup.C76242.this.m28042a(c15098d, activity, abstractC15180d);
                }
            });
        }
    }

    public RatePopup(Intent intent) {
        this.f26918d = intent;
    }

    /* renamed from: a */
    static /* synthetic */ void m28043a(RatePopup ratePopup) {
        Intent intent = ratePopup.f26918d;
        if (intent == null || !Activities.m27672a(intent) || !Activities.m27685a(ratePopup.getActivity(), ratePopup.f26918d)) {
            return;
        }
        Prefs.f26260ak.set(AppRater.UserRating.RATED_5STAR);
        FeedbackManager.get().m28668a(Activities.getString(2131887483), (Integer) null, 2);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean dismissOnBtnClicked() {
        return false;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleWithContent
    public int getContentResId() {
        return 2131558623;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public String getNegativeBtnText() {
        return Activities.getString(2131887314);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public DialogPopup.IDialogOnClickListener getNegativeListener() {
        return new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.RatePopup.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AndroidUtils.m27635a(activity);
                Prefs.f26260ak.set(AppRater.UserRating.RATED_4STAR_OR_LESS);
                RatePopup.this.dismiss();
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public String getPositiveBtnText() {
        return Activities.getString(2131887482);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public DialogPopup.IDialogOnClickListener getPositiveListener() {
        return new C76242();
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        TextView textView = (TextView) ovViewCreated.findViewById(2131364429);
        textView.setTextColor(this.f26916a);
        textView.setText(Activities.getString(2131887485));
        TextView textView2 = (TextView) ovViewCreated.findViewById(2131364424);
        textView2.setTextColor(this.f26916a);
        textView2.setText(Activities.getString(2131887484));
        TextView textView3 = (TextView) ovViewCreated.findViewById(2131362581);
        ViewUtils.m27327a(textView3, 2131951895);
        textView3.setTextColor(this.f26916a);
        setCancelable(false);
        return ovViewCreated;
    }
}
