package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.BizMenuAndReservationDuoCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.AffiliationUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.EditContactPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter.class */
public class CategoriesPresenter extends TextViewPresenter implements OnIncognitoCallStartedListener, DestroyListener, CallStateListener {
    private View.OnClickListener affiliationClickListener;
    private View.OnLongClickListener affiliationLongClickListener;
    private CallData lastCallData;
    private View presenterLayout;
    private final ImageView[] ratingStars = new ImageView[5];
    private View ratingStarsLayout;

    private String getAffiliationInfo(ContactData contactData) {
        String a2 = AffiliationUtils.a(contactData, AffiliationUtils.a(contactData));
        return StringUtils.b((CharSequence) a2) ? StringUtils.a(a2, ' ', ',', '@') : null;
    }

    private static String getCategoriesText(ContactData contactData) {
        Collection<JSONCategory> categories = contactData.getCategories();
        if (categories.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (JSONCategory jSONCategory : categories) {
            String name = jSONCategory.getName();
            if (sb.indexOf(name.split("\\s")[0]) < 0) {
                sb.append(", ");
                sb.append(name);
            }
        }
        return sb.substring(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getRootView() {
        if (this.presenterLayout instanceof ViewStub) {
            this.presenterLayout = ViewUtils.b(this.presentersContainer.findViewById(2131362298));
            initViews();
        }
        return this.presenterLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRating(ContactData contactData, double d2) {
        View view = this.ratingStarsLayout;
        if (view != null && this.ratingStars != null) {
            if (d2 == -1.0d) {
                view.setVisibility(8);
                return;
            }
            int round = (int) Math.round(d2);
            boolean isContainsContactHeader = isContainsContactHeader();
            int a2 = isContainsContactHeader ? ThemeUtils.a(this.presentersContainer.getRealContext(), 2131100228) : UserCorrectedInfoUtil.a(contactData) ? ThemeUtils.a(this.presentersContainer.getRealContext(), 2131099675) : ThemeUtils.a(this.presentersContainer.getRealContext(), 2131099784);
            int i = -1;
            if (round != d2) {
                int floor = (int) Math.floor(d2);
                ImageUtils.a(this.ratingStars[floor], 2131231909, (ColorFilter) null);
                this.ratingStars[floor].setVisibility(0);
                i = floor;
                if (isContainsContactHeader) {
                    this.ratingStars[floor].setColorFilter(new PorterDuffColorFilter(a2, PorterDuff.Mode.SRC_IN));
                    i = floor;
                }
            }
            int i2 = 0;
            while (true) {
                ImageView[] imageViewArr = this.ratingStars;
                if (i2 < imageViewArr.length) {
                    if (i2 != i) {
                        if (i2 < round) {
                            ImageUtils.a(imageViewArr[i2], 2131231908, (ColorFilter) null);
                        } else {
                            ImageUtils.a(imageViewArr[i2], 2131231907, (ColorFilter) null);
                        }
                        if (isContainsContactHeader) {
                            this.ratingStars[i2].setColorFilter(new PorterDuffColorFilter(a2, PorterDuff.Mode.SRC_IN));
                        }
                    }
                    i2++;
                } else {
                    this.ratingStarsLayout.setVisibility(0);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isClickEnabled(PresentersContainer presentersContainer) {
        return presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditTextSize() {
        if (this.presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.CategoriesPresenter.4
                @Override // java.lang.Runnable
                public void run() {
                    if (!StringUtils.b((CharSequence) CategoriesPresenter.this.text) || CategoriesPresenter.this.lastCallData == null || !CategoriesPresenter.this.lastCallData.getState().isIncoming()) {
                        CategoriesPresenter.this.getTextView().setMaxLines(1);
                    } else {
                        CategoriesPresenter.this.getTextView().setMaxLines(2);
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter
    protected int getInitialTextColor() {
        return isContainsContactHeader() ? 2131100228 : 2131100108;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter
    protected int getTextViewId() {
        return 2131362299;
    }

    protected void initViews() {
        View rootView = getRootView();
        this.ratingStarsLayout = rootView.findViewById(2131363617);
        this.ratingStars[0] = (ImageView) rootView.findViewById(2131363612);
        this.ratingStars[1] = (ImageView) rootView.findViewById(2131363613);
        this.ratingStars[2] = (ImageView) rootView.findViewById(2131363614);
        this.ratingStars[3] = (ImageView) rootView.findViewById(2131363615);
        this.ratingStars[4] = (ImageView) rootView.findViewById(2131363616);
        if ((this.presentersContainer.getRealContext() instanceof FragmentActivity) && this.presentersContainer.getContainerMode() != PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
            this.affiliationClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.CategoriesPresenter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    AnalyticsManager.get().a("Affiliation", false, CategoriesPresenter.this.presentersContainer);
                    if (HttpUtils.a()) {
                        AffiliationUtils.a(CategoriesPresenter.this.presentersContainer.getRealContext(), CategoriesPresenter.this.getPresentersContainer().getContact());
                    } else {
                        FeedbackManager.a(CategoriesPresenter.this.presentersContainer.getRealContext());
                    }
                }
            };
            this.affiliationLongClickListener = new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.CategoriesPresenter.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    AnalyticsManager.get().a("Affiliation", true, CategoriesPresenter.this.presentersContainer);
                    ContactData contact = CategoriesPresenter.this.getPresentersContainer().getContact();
                    PopupManager.get().a(CategoriesPresenter.this.presentersContainer.getRealContext(), new EditContactPopup(contact));
                    FeedbackManager.get().a(Activities.a(2131888113, contact.getFirstName()), (Integer) null);
                    return true;
                }
            };
        }
    }

    public /* synthetic */ void lambda$onCallStateChanged$4$CategoriesPresenter() {
        setVisibility(8);
    }

    public /* synthetic */ void lambda$onContactChanged$0$CategoriesPresenter() {
        this.presenterLayout.setVisibility(8);
    }

    public /* synthetic */ void lambda$onContactChanged$1$CategoriesPresenter() {
        this.presenterLayout.setVisibility(8);
    }

    public /* synthetic */ void lambda$onContactChanged$2$CategoriesPresenter() {
        this.presenterLayout.setVisibility(0);
    }

    public /* synthetic */ void lambda$onIncognitoCallStarted$3$CategoriesPresenter() {
        this.presenterLayout.setVisibility(8);
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (this.presentersContainer.a(getPresentersContainer().getContact())) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple._$$Lambda$CategoriesPresenter$m2kp3_jq0bf0H2tFpQ8ZekbOphw
                @Override // java.lang.Runnable
                public final void run() {
                    CategoriesPresenter.this.lambda$onCallStateChanged$4$CategoriesPresenter();
                }
            });
        }
        this.lastCallData = callData;
        updateEditTextSize();
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        if (contactData.isVoiceMail()) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple._$$Lambda$CategoriesPresenter$YfUvFJ4P2AsCwSf1kIu1i2RBK48
                @Override // java.lang.Runnable
                public final void run() {
                    CategoriesPresenter.this.lambda$onContactChanged$0$CategoriesPresenter();
                }
            });
            return;
        }
        if (set.contains(ContactField.isIncognito)) {
            if (this.presentersContainer.a(contactData)) {
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple._$$Lambda$CategoriesPresenter$pgh50cIVuGPUJybaSk4zUVEo5us
                    @Override // java.lang.Runnable
                    public final void run() {
                        CategoriesPresenter.this.lambda$onContactChanged$1$CategoriesPresenter();
                    }
                });
                return;
            }
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple._$$Lambda$CategoriesPresenter$fnsaLRiT_afLkcx_cUm_3G7ogJ8
                @Override // java.lang.Runnable
                public final void run() {
                    CategoriesPresenter.this.lambda$onContactChanged$2$CategoriesPresenter();
                }
            });
        }
        final String[] strArr = new String[6];
        strArr[0] = contactData.getCallReason();
        if (StringUtils.a((CharSequence) strArr[0])) {
            strArr[1] = contactData.getUserDefinition();
            if (StringUtils.a((CharSequence) contactData.getUserDefinition())) {
                strArr[2] = getCategoriesText(contactData);
                if (StringUtils.a((CharSequence) strArr[2])) {
                    strArr[3] = getAffiliationInfo(contactData);
                    if (StringUtils.a((CharSequence) strArr[3])) {
                        strArr[4] = contactData.getDescription();
                        if (StringUtils.a((CharSequence) strArr[4])) {
                            String e = contactData.getPhone().e();
                            if (this.presentersContainer.getContainerMode() != PresentersContainer.MODE.CONTACT_DETAILS_SCREEN && StringUtils.b((CharSequence) e) && contactData.isRecognized() && !contactData.isUnknownNumber()) {
                                strArr[5] = e;
                            }
                        }
                    }
                }
            }
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.CategoriesPresenter.3
            @Override // java.lang.Runnable
            public void run() {
                View rootView = CategoriesPresenter.this.getRootView();
                CategoriesPresenter categoriesPresenter = CategoriesPresenter.this;
                if (categoriesPresenter.isClickEnabled(categoriesPresenter.presentersContainer)) {
                    rootView.setOnClickListener(null);
                }
                CategoriesPresenter categoriesPresenter2 = CategoriesPresenter.this;
                if (categoriesPresenter2.isClickEnabled(categoriesPresenter2.presentersContainer)) {
                    rootView.setOnLongClickListener(null);
                }
                rootView.setOnClickListener(null);
                CategoriesPresenter.this.text = null;
                CategoriesPresenter.this.presenterLayout.setVisibility(0);
                if (StringUtils.b((CharSequence) strArr[0])) {
                    CategoriesPresenter.this.text = strArr[0];
                    if (CategoriesPresenter.this.ratingStarsLayout != null) {
                        CategoriesPresenter.this.ratingStarsLayout.setVisibility(8);
                    }
                } else if (StringUtils.b((CharSequence) strArr[1])) {
                    CategoriesPresenter.this.text = strArr[1];
                } else if (StringUtils.b((CharSequence) strArr[2])) {
                    CategoriesPresenter.this.text = strArr[2];
                    CategoriesPresenter categoriesPresenter3 = CategoriesPresenter.this;
                    ContactData contactData2 = contactData;
                    categoriesPresenter3.handleRating(contactData2, contactData2.getAvgRating());
                } else {
                    if (CategoriesPresenter.this.ratingStarsLayout != null) {
                        CategoriesPresenter.this.ratingStarsLayout.setVisibility(8);
                    }
                    if (StringUtils.b((CharSequence) strArr[3])) {
                        CategoriesPresenter.this.text = strArr[3];
                        CategoriesPresenter categoriesPresenter4 = CategoriesPresenter.this;
                        if (categoriesPresenter4.isClickEnabled(categoriesPresenter4.presentersContainer)) {
                            rootView.setOnClickListener(CategoriesPresenter.this.affiliationClickListener);
                        }
                        CategoriesPresenter categoriesPresenter5 = CategoriesPresenter.this;
                        if (categoriesPresenter5.isClickEnabled(categoriesPresenter5.presentersContainer)) {
                            rootView.setOnLongClickListener(CategoriesPresenter.this.affiliationLongClickListener);
                        }
                    } else if (StringUtils.b((CharSequence) strArr[4]) && !BizMenuAndReservationDuoCard.shouldShowDescrptionAsBizMenu(contactData.getMenuUrl(), contactData.getPriceRange())) {
                        CategoriesPresenter.this.text = strArr[4];
                    } else if (StringUtils.b((CharSequence) strArr[5])) {
                        CategoriesPresenter.this.text = strArr[5];
                    } else {
                        CategoriesPresenter.this.presenterLayout.setVisibility(8);
                    }
                }
                CategoriesPresenter.this.updateEditTextSize();
                CategoriesPresenter categoriesPresenter6 = CategoriesPresenter.this;
                categoriesPresenter6.setText(categoriesPresenter6.text);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        presentersContainer.addContactChangedListener(this, EnumSet.of(ContactField.categories, ContactField.rating, ContactField.websites, ContactField.emails, ContactField.fullName, ContactField.organizations, ContactField.genomeData, ContactField.isIncognito, ContactField.callReason, ContactField.userDefinition));
        presentersContainer.addCallStateListener(this);
        presentersContainer.addDestroyListener(this);
        if (presentersContainer.getEventBus() != null) {
            presentersContainer.getEventBus().a(OnIncognitoCallStartedListener.f12952a, this);
        }
        View findViewById = presentersContainer.findViewById(2131362298);
        this.presenterLayout = findViewById;
        if (ViewUtils.a(findViewById)) {
            initViews();
        }
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        if (this.presentersContainer.getEventBus() != null) {
            this.presentersContainer.getEventBus().b(OnIncognitoCallStartedListener.f12952a, this);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener
    public void onIncognitoCallStarted(ContactData contactData) {
        if (this.presentersContainer.a(contactData)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple._$$Lambda$CategoriesPresenter$qKjNQweCCS_PxJHTwHj_GcOHfFU
                @Override // java.lang.Runnable
                public final void run() {
                    CategoriesPresenter.this.lambda$onIncognitoCallStarted$3$CategoriesPresenter();
                }
            });
        }
    }
}
