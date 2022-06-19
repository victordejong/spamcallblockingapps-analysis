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

    public void collapse(final boolean z) {
        if (ViewUtils.m27329a(this.correctedInfoView)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.4
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        ((RetractableView) BaseUserCorrectedInfoPresenter.this.correctedInfoView).mo26655b();
                    } else {
                        ((RetractableView) BaseUserCorrectedInfoPresenter.this.correctedInfoView).mo26651c();
                    }
                }
            });
        }
    }

    public abstract void forceShowPresenter();

    protected abstract int getBackgroundColor(Context context);

    protected abstract int getLayoutId();

    public View getRootView() {
        return this.correctedInfoView;
    }

    public boolean isExpanded() {
        View rootView = getRootView();
        return ViewUtils.m27329a(rootView) && !((RetractableView) rootView).isCollapsed();
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.correctedInfoView = presentersContainer.findViewById(getLayoutId());
    }

    protected abstract void onNegativeBtnClicked(Phone phone);

    public void onPositiveBtnClicked(Phone phone) {
        FeedbackManager.get().m28677a();
        ((RetractableView) this.correctedInfoView).mo26655b();
    }

    public void showCorrectedInfo(String str, final Phone phone, String str2) {
        if (!ViewUtils.m27329a(this.correctedInfoView)) {
            this.correctedInfoView = ((ViewStub) this.correctedInfoView).inflate();
        }
        ((RetractableView) this.correctedInfoView).setExpandMaxHeight((int) CallAppApplication.get().getResources().getDimension(2131166126));
        ((RetractableView) this.correctedInfoView).mo26651c();
        View view = this.correctedInfoView;
        view.setBackgroundColor(getBackgroundColor(view.getContext()));
        this.textViewForCorrectedInfo = (TextView) this.correctedInfoView.findViewById(2131362149);
        ImageView imageView = (ImageView) this.correctedInfoView.findViewById(getPositiveBtnId());
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.m27630a(view2, 1);
                    BaseUserCorrectedInfoPresenter.this.onPositiveBtnClicked(phone);
                }
            });
        }
        ImageView imageView2 = (ImageView) this.correctedInfoView.findViewById(getNegativeBtnId());
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.m27630a(view2, 1);
                    BaseUserCorrectedInfoPresenter.this.onNegativeBtnClicked(phone);
                }
            });
        }
        updateText(str);
        ((RetractableView) this.correctedInfoView).mo26661a();
        if (StringUtils.m26045b((CharSequence) str2)) {
            AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, str2);
        }
        this.presentersContainer.getEventBus().m29046a((EventType<L, EventType<PresenterEvents, Object>>) PresenterEvents.f23131b, (EventType<PresenterEvents, Object>) null, false);
    }

    public void showTellUsWhoItIsPopup(ContactData contactData, Phone phone, String str) {
        if (contactData == null || phone == null || this.presentersContainer.mo30920a(contactData)) {
            collapse(true);
            return;
        }
        boolean isBusiness = contactData.isBusiness();
        UserCorrectedInfoUtil.m27340a(Constants.USER_CORRECTED_INFO, str, this.presentersContainer.getRealContext(), null, isBusiness ? 1 : 0, false, contactData, phone, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter.1
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public void popupDone(boolean z) {
                if (z) {
                    FeedbackManager.get().m28677a();
                    BaseUserCorrectedInfoPresenter.this.collapse(true);
                }
            }
        });
    }

    public void updateText(String str) {
        TextView textView = this.textViewForCorrectedInfo;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
