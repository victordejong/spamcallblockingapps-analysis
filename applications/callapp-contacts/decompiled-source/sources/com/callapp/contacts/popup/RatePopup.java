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
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.c;
import com.google.android.play.core.review.j;
import com.google.android.play.core.splitcompat.q;
import com.google.android.play.core.tasks.a;
import com.google.android.play.core.tasks.d;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/RatePopup.class */
public class RatePopup extends DialogSimpleWithContent {

    /* renamed from: a  reason: collision with root package name */
    private final int f15350a = ThemeUtils.getColor(2131100140);

    /* renamed from: c  reason: collision with root package name */
    private final int f15351c = ThemeUtils.getColor(2131099930);

    /* renamed from: d  reason: collision with root package name */
    private Intent f15352d;

    /* renamed from: com.callapp.contacts.popup.RatePopup$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/RatePopup$2.class */
    class AnonymousClass2 implements DialogPopup.IDialogOnClickListener {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(c cVar, Activity activity, d dVar) {
            if (dVar.b()) {
                cVar.a(activity, (ReviewInfo) dVar.c()).a(new a() { // from class: com.callapp.contacts.popup._$$Lambda$RatePopup$2$X_c3FEiIWt363e0lYNLt2dtggjk
                    @Override // com.google.android.play.core.tasks.a
                    public final void onComplete(d dVar2) {
                        RatePopup.AnonymousClass2.this.a(dVar2);
                    }
                });
                return;
            }
            RatePopup.a(RatePopup.this);
            RatePopup.this.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(d dVar) {
            RatePopup.this.dismiss();
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(final Activity activity) {
            AndroidUtils.a(activity);
            AnalyticsManager.get().a(Constants.RATE_CALL_APP, "Rate popup clicked 5 stars");
            if ((Activities.getString(2131887752).equals(Constants.GOOGLE_PLAY_STORE_NAME) || Activities.getString(2131887752).equals("dev")) && GooglePlayUtils.isGooglePlayServicesAvailable()) {
                PlayCoreDialogWrapperActivity.a(activity);
                final com.google.android.play.core.review.d dVar = new com.google.android.play.core.review.d(new j(q.a(activity)));
                dVar.a().a(new a() { // from class: com.callapp.contacts.popup._$$Lambda$RatePopup$2$Ki733WSg6iyMC6bQBLCS7OPmPa8
                    @Override // com.google.android.play.core.tasks.a
                    public final void onComplete(d dVar2) {
                        RatePopup.AnonymousClass2.this.a(dVar, activity, dVar2);
                    }
                });
                return;
            }
            RatePopup.a(RatePopup.this);
            RatePopup.this.dismiss();
        }
    }

    public RatePopup(Intent intent) {
        this.f15352d = intent;
    }

    static /* synthetic */ void a(RatePopup ratePopup) {
        Intent intent = ratePopup.f15352d;
        if (intent != null && Activities.a(intent) && Activities.a(ratePopup.getActivity(), ratePopup.f15352d)) {
            Prefs.ak.set(AppRater.UserRating.RATED_5STAR);
            FeedbackManager.get().a(Activities.getString(2131887483), (Integer) null, 2);
        }
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
                AndroidUtils.a(activity);
                Prefs.ak.set(AppRater.UserRating.RATED_4STAR_OR_LESS);
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
        return new AnonymousClass2();
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        TextView textView = (TextView) ovViewCreated.findViewById(2131364429);
        textView.setTextColor(this.f15350a);
        textView.setText(Activities.getString(2131887485));
        TextView textView2 = (TextView) ovViewCreated.findViewById(2131364424);
        textView2.setTextColor(this.f15350a);
        textView2.setText(Activities.getString(2131887484));
        TextView textView3 = (TextView) ovViewCreated.findViewById(2131362581);
        ViewUtils.a(textView3, 2131951895);
        textView3.setTextColor(this.f15350a);
        setCancelable(false);
        return ovViewCreated;
    }
}
