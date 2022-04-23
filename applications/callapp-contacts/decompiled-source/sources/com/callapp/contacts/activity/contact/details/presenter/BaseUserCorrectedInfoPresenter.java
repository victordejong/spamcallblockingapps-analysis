package com.callapp.contacts.activity.contact.details.presenter;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.PresenterEvents;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.RetractableView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter.class */
public abstract class BaseUserCorrectedInfoPresenter extends BasePresenter {
    private View correctedInfoView;
    final Object expandSyncObject = new Object();
    private TextView textViewForCorrectedInfo;

    private int getNegativeBtnId() {
        return 2131364491;
    }

    private int getPositiveBtnId() {
        return 2131364492;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void collapse(final boolean z) {
        if (ViewUtils.a(this.correctedInfoView)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.4
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        ((RetractableView) BaseUserCorrectedInfoPresenter.this.correctedInfoView).b();
                    } else {
                        ((RetractableView) BaseUserCorrectedInfoPresenter.this.correctedInfoView).c();
                    }
                }
            });
        }
    }

    public abstract void forceShowPresenter();

    protected abstract int getBackgroundColor(Context context);

    protected abstract int getLayoutId();

    /* JADX INFO: Access modifiers changed from: protected */
    public View getRootView() {
        return this.correctedInfoView;
    }

    public boolean isExpanded() {
        View rootView = getRootView();
        return ViewUtils.a(rootView) && !((RetractableView) rootView).isCollapsed();
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.correctedInfoView = presentersContainer.findViewById(getLayoutId());
    }

    protected abstract void onNegativeBtnClicked(Phone phone);

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPositiveBtnClicked(Phone phone) {
        FeedbackManager.get().a();
        ((RetractableView) this.correctedInfoView).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showCorrectedInfo(String str, final Phone phone, String str2) {
        if (!ViewUtils.a(this.correctedInfoView)) {
            this.correctedInfoView = ((ViewStub) this.correctedInfoView).inflate();
        }
        ((RetractableView) this.correctedInfoView).setExpandMaxHeight((int) CallAppApplication.get().getResources().getDimension(2131166126));
        ((RetractableView) this.correctedInfoView).c();
        View view = this.correctedInfoView;
        view.setBackgroundColor(getBackgroundColor(view.getContext()));
        this.textViewForCorrectedInfo = (TextView) this.correctedInfoView.findViewById(2131362149);
        ImageView imageView = (ImageView) this.correctedInfoView.findViewById(getPositiveBtnId());
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    BaseUserCorrectedInfoPresenter.this.onPositiveBtnClicked(phone);
                }
            });
        }
        ImageView imageView2 = (ImageView) this.correctedInfoView.findViewById(getNegativeBtnId());
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    BaseUserCorrectedInfoPresenter.this.onNegativeBtnClicked(phone);
                }
            });
        }
        updateText(str);
        ((RetractableView) this.correctedInfoView).a();
        if (StringUtils.b((CharSequence) str2)) {
            AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, str2);
        }
        this.presentersContainer.getEventBus().a((EventType<L, EventType<PresenterEvents, Object>>) PresenterEvents.f12957b, (EventType<PresenterEvents, Object>) null, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showTellUsWhoItIsPopup(ContactData contactData, Phone phone, String str) {
        if (contactData == null || phone == null || this.presentersContainer.a(contactData)) {
            collapse(true);
            return;
        }
        boolean isBusiness = contactData.isBusiness();
        UserCorrectedInfoUtil.a(Constants.USER_CORRECTED_INFO, str, this.presentersContainer.getRealContext(), null, isBusiness ? 1 : 0, false, contactData, phone, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.1
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public void popupDone(boolean z) {
                if (z) {
                    FeedbackManager.get().a();
                    BaseUserCorrectedInfoPresenter.this.collapse(true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateText(String str) {
        TextView textView = this.textViewForCorrectedInfo;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
