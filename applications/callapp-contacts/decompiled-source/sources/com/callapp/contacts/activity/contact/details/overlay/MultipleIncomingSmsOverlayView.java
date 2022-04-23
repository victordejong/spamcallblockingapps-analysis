package com.callapp.contacts.activity.contact.details.overlay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.framework.log.FileLogger;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import com.callapp.contacts.receiver.ScreenUnlockReceiver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallAppDebugUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.widget.MaxHeightScrollView;
import com.callapp.contacts.widget.OnSizeChangedListener;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.a;
import com.viewpagerindicator.CirclePageIndicator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView.class */
public class MultipleIncomingSmsOverlayView extends ContactDetailsOverlayView implements TextWatcher, View.OnClickListener, ViewPager.e, SingleSmsItemView.OnSinglePageEventListener {
    public static final String TAG = "MultipleIncomingSmsOverlayView";
    private MultipleSmsOverlayAdapter adapter;
    private ImageView callButton;
    private CirclePageIndicator indicator;
    private int pageHeight;
    private MaxHeightScrollView responseContainer;
    private EditText responseSmsText;
    private ImageView sendSmsButton;
    private ViewPager viewPager;
    private int responseContainerHeight = 0;
    private List<View> horizontalScrollViews = new ArrayList();
    private List<View> verticalScrollView = new ArrayList();
    private List<SingleSmsData> dataArray = new ArrayList();
    private Map<Integer, ContactData> dataMap = new HashMap();
    private final AtomicBoolean registeredForScreenLocked = new AtomicBoolean(false);
    private InvalidateDataListener invalidateDataListener = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.1
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            if (callAppDataType == EventBusManager.CallAppDataType.OVERLAY_LINK_CLICKED) {
                MultipleIncomingSmsOverlayView.this.finishViewContainer(true);
            }
        }
    };
    protected final BroadcastReceiver screenLockedReceiver = new BroadcastReceiver() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CallAppApplication.get().getObjectBoxStore().d(SingleSmsData.class).a((Collection) MultipleIncomingSmsOverlayView.this.dataArray);
            ScreenUnlockReceiver.a();
            MultipleIncomingSmsOverlayView.this.finishViewContainer(false);
        }
    };
    private final int headerHeight = (int) CallAppApplication.get().getResources().getDimension(2131166003);
    private final int indicatorsHeight = (int) CallAppApplication.get().getResources().getDimension(2131165991);

    public MultipleIncomingSmsOverlayView(Context context) {
        super(context, null, true, true);
        int color = ThemeUtils.getColor(2131099891);
        ViewPager viewPager = (ViewPager) findViewById(2131364520);
        this.viewPager = viewPager;
        viewPager.setBackgroundColor(color);
        this.viewPager.setOffscreenPageLimit(4);
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) findViewById(2131363088);
        this.indicator = circlePageIndicator;
        circlePageIndicator.setBackgroundColor(color);
        int color2 = ThemeUtils.getColor(2131099784);
        this.indicator.setFillColor(color2);
        this.indicator.setStrokeColor(color2);
        this.indicator.setPageColor(0);
        this.viewPager.addOnPageChangeListener(this);
        this.horizontalScrollViews.add((FrameLayout) findViewById(2131361969));
        this.horizontalScrollViews.add(this.viewPager);
        this.horizontalScrollViews.add(this.indicator);
    }

    private boolean hasValidPhoneNumber(SingleSmsData singleSmsData) {
        return PhoneManager.get().a(singleSmsData.getPhone()).isValidForSearch();
    }

    private void notifyTextChange(String str) {
        boolean b2 = StringUtils.b((CharSequence) str);
        this.sendSmsButton.setEnabled(b2);
        this.sendSmsButton.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(b2 ? 2131099784 : 2131099890), PorterDuff.Mode.SRC_IN));
        this.dataArray.get(this.viewPager.getCurrentItem()).setLastText(str);
    }

    private void onCallButtonClick() {
        SingleSmsData singleSmsData = this.dataArray.get(this.viewPager.getCurrentItem());
        if (hasValidPhoneNumber(singleSmsData)) {
            ContactData contactData = this.dataMap.get(Integer.valueOf(this.viewPager.getCurrentItem()));
            AndroidUtils.a(this, 1);
            Phone a2 = PhoneManager.get().a(singleSmsData.getPhone());
            finishViewContainer(true);
            PhoneManager.a(getContext(), a2, contactData != null ? contactData.getDeviceId() : 0L, singleSmsData.getFullName(), Constants.INCOMING_SMS_OVERLAY, "Call", false, null);
        }
    }

    private void onSendMessageClick() {
        final SingleSmsData singleSmsData = this.dataArray.get(this.viewPager.getCurrentItem());
        if (hasValidPhoneNumber(singleSmsData)) {
            AndroidUtils.a(this, 1);
            AnalyticsManager.get().a(Constants.INCOMING_SMS_OVERLAY, "Reply");
            final Phone a2 = PhoneManager.get().a(singleSmsData.getPhone());
            final String charSequence = ((TextView) findViewById(2131363668)).getText().toString();
            if (StringUtils.b((CharSequence) charSequence)) {
                this.sendSmsButton.setClickable(false);
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        SmsUtils.a(CallAppApplication.get(), a2, charSequence);
                    }
                });
                this.sendSmsButton.setBackgroundResource(2131232165);
                CallappAnimationUtils.a(this.sendSmsButton, 0.5f, 0.5f, 1000, 1);
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.7
                    @Override // java.lang.Runnable
                    public void run() {
                        MultipleIncomingSmsOverlayView.this.onMessageSent(singleSmsData, false);
                    }
                }, 600L);
                return;
            }
            onMessageSent(singleSmsData, true);
        }
    }

    private void updateDataIndexes() {
        int i = 0;
        while (i < this.dataArray.size()) {
            i++;
            this.dataArray.get(i).setPagePosition(i);
        }
    }

    private void updateEditTextWithData() {
        this.responseSmsText.setText(this.dataArray.get(this.viewPager.getCurrentItem()).getLastText());
    }

    private void updateHeaderByPosition(int i) {
        Phone a2 = PhoneManager.get().a(this.dataArray.get(i).getPhone());
        for (ContactData contactData : this.dataMap.values()) {
            if (a2.equals(contactData.getPhone())) {
                setContact(contactData);
                onContactChanged(contactData, ContactFieldEnumSets.ALL);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeightByCurrentPosition() {
        ViewGroup.LayoutParams layoutParams = this.viewPager.getLayoutParams();
        layoutParams.height = this.pageHeight;
        this.viewPager.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.responseContainer.getLayoutParams();
        layoutParams2.height = this.responseContainerHeight;
        this.responseContainer.setLayoutParams(layoutParams2);
        int i = this.indicator.getVisibility() == 0 ? this.indicatorsHeight : 0;
        StringBuilder sb = new StringBuilder("HeaderHeight=");
        sb.append(this.headerHeight);
        sb.append(", PageHeight=");
        sb.append(this.pageHeight);
        sb.append(", IndicatorHeight=");
        sb.append(i);
        sb.append(", AdSize=");
        sb.append(this.adSize);
        sb.append(",  Response Height=");
        sb.append(this.responseContainerHeight);
        CLog.a(TAG);
        setWindowHeight(this.headerHeight + this.pageHeight + this.responseContainerHeight + i + this.adSize);
        repositionOverlayVertically(getWindowY());
    }

    private void updateIndicatorsVisibility() {
        if (this.dataArray.size() > 1) {
            this.indicator.setVisibility(0);
            this.indicator.setViewPager(this.viewPager);
            return;
        }
        this.indicator.setVisibility(8);
    }

    private void updateRespondLayout(boolean z) {
        this.responseSmsText.setEnabled(z);
        this.sendSmsButton.setEnabled(z);
        int i = z ? 2131099784 : 2131099890;
        this.callButton.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(i), PorterDuff.Mode.SRC_IN));
        this.sendSmsButton.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(i), PorterDuff.Mode.SRC_IN));
        if (z) {
            this.responseSmsText.addTextChangedListener(this);
        } else {
            this.responseSmsText.removeTextChangedListener(this);
        }
    }

    private void updateVerticalScrollItems() {
        this.verticalScrollView.clear();
        SingleSmsItemView viewByPosition = this.adapter.getViewByPosition(this.viewPager.getCurrentItem());
        this.verticalScrollView.add(this.viewPager);
        this.verticalScrollView.add(viewByPosition);
        this.verticalScrollView.add(viewByPosition.getTextContainer());
        this.verticalScrollView.add(this.responseContainer);
    }

    public void addPage(SingleSmsData singleSmsData) {
        this.dataArray.add(singleSmsData);
        updateDataIndexes();
        MultipleSmsOverlayAdapter multipleSmsOverlayAdapter = this.adapter;
        if (multipleSmsOverlayAdapter == null) {
            MultipleSmsOverlayAdapter multipleSmsOverlayAdapter2 = new MultipleSmsOverlayAdapter(this.dataArray, this);
            this.adapter = multipleSmsOverlayAdapter2;
            this.viewPager.setAdapter(multipleSmsOverlayAdapter2);
        } else {
            multipleSmsOverlayAdapter.c();
        }
        updateIndicatorsVisibility();
        Phone a2 = PhoneManager.get().a(singleSmsData.getPhone());
        this.extractedInfo = ExtractedInfo.Builder.getBuilderAccordingToOrigin(a2, getOrigin()).build();
        Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(a2, this.extractedInfo, singleSmsData.getContactId(), this, ContactFieldEnumSets.ALL);
        ContactData contactData = (ContactData) registerForContactDetailsStack.first;
        this.dataMap.put(Integer.valueOf(this.dataArray.size() - 1), contactData);
        if (((Set) registerForContactDetailsStack.second).size() > 0) {
            onContactChanged(contactData, (Set) registerForContactDetailsStack.second);
        }
        boolean firstTimeExperience = setFirstTimeExperience();
        if (firstTimeExperience) {
            setCloseButtonListenerInOverlay(a.C0337a.closeButton, -1, firstTimeExperience);
        }
        String fullName = singleSmsData.getFullName();
        if (StringUtils.b((CharSequence) fullName)) {
            contactData.assertIntentDataExists();
            contactData.getIntentData().setFullName(fullName);
            contactData.updateFullName();
        } else {
            contactData.fireChange(ContactField.phone);
        }
        updateRespondLayout(hasValidPhoneNumber(this.dataArray.get(this.viewPager.getCurrentItem())));
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        notifyTextChange(editable.toString());
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void finishViewContainer(boolean z) {
        if (Build.VERSION.SDK_INT < 26 && this.registeredForScreenLocked.getAndSet(false)) {
            try {
                CallAppApplication.get().unregisterReceiver(this.screenLockedReceiver);
            } catch (Exception e) {
                CrashlyticsUtils.a(e);
            }
        }
        super.finishViewContainer(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public int getAdLayoutResourceId(int i) {
        return AdUtils.getSmallCardAdLayoutResourceId(i);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected String getAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.g;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected String getBiddingRemoteConfigName() {
        return CallAppRemoteConfigManager.q;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected int getBottomLayoutAdColor() {
        return 2131099686;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected int getBottomLayoutBackgroundColor() {
        return ThemeUtils.isThemeLight() ? 2131232024 : 2131231353;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected int getBottomLayoutResId() {
        return 2131558969;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected String getExperimentRemoteConfigName() {
        return "SMSExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected List<View> getHorizontallyScrollableViews() {
        return this.horizontalScrollViews;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    IMDataExtractionUtils.RecognizedPersonOrigin getOrigin() {
        return IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected int getOverlayInitHeight() {
        return (int) CallAppApplication.get().getResources().getDimension(2131166003);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected String getPreferencesRemoteConfigName() {
        return "SMSPreferences";
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.INCOMING_SMS_OVERLAY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.INCOMING_SMS_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected List<View> getVerticallyScrollableViews() {
        if (this.verticalScrollView.isEmpty()) {
            updateVerticalScrollItems();
        }
        return this.verticalScrollView;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    protected boolean needsKeyboard() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    public void onAdLoaded(View view) {
        super.onAdLoaded(view);
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.5
            @Override // java.lang.Runnable
            public void run() {
                View findViewById = MultipleIncomingSmsOverlayView.this.findViewById(2131362611);
                findViewById.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099930));
                findViewById.setVisibility(0);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131363313) {
            onSendMessageClick();
        } else if (id == 2131362209) {
            onCallButtonClick();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (contactData.isIncognito()) {
            finishViewContainer(false);
            return;
        }
        if (PhoneManager.get().a(this.dataArray.get(this.viewPager.getCurrentItem()).getPhone()).equals(contactData.getPhone())) {
            setContact(contactData);
            super.onContactChanged(contactData, set);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onCreate() {
        super.onCreate();
        EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.invalidateDataListener);
        OverlayManager.get().a(this, Phone.f17100b);
        MaxHeightScrollView maxHeightScrollView = (MaxHeightScrollView) findViewById(2131363667);
        this.responseContainer = maxHeightScrollView;
        maxHeightScrollView.setOnSizeChangedListener(new OnSizeChangedListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.3
            @Override // com.callapp.contacts.widget.OnSizeChangedListener
            public final void a(int i) {
                MultipleIncomingSmsOverlayView.this.responseContainerHeight = i;
                MultipleIncomingSmsOverlayView.this.updateHeightByCurrentPosition();
            }
        });
        EditText editText = (EditText) findViewById(2131363668);
        this.responseSmsText = editText;
        editText.setTextColor(ThemeUtils.getColor(2131100140));
        this.responseSmsText.setHintTextColor(ThemeUtils.getColor(2131099930));
        this.responseSmsText.setHint(Activities.getString(2131887725));
        ImageView imageView = (ImageView) findViewById(2131363313);
        this.sendSmsButton = imageView;
        imageView.setOnClickListener(this);
        this.sendSmsButton.setEnabled(false);
        ImageView imageView2 = (ImageView) findViewById(2131362209);
        this.callButton = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.callButton.setOnClickListener(this);
        ImageUtils.a(this.sendSmsButton, 2131231898, new PorterDuffColorFilter(ThemeUtils.getColor(2131099890), PorterDuff.Mode.SRC_IN));
        AnalyticsManager.get().b(Constants.SMS_OVERLAY_SCREEN);
        if (Build.VERSION.SDK_INT < 26) {
            CallAppApplication.get().registerReceiver(this.screenLockedReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
            this.registeredForScreenLocked.set(true);
        }
        if (Prefs.n.get().booleanValue() && Prefs.o.get().booleanValue()) {
            for (int i = 1; i < 6; i++) {
                new Task() { // from class: com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        CallAppDebugUtils.a(FileLogger.b("sms.txt"));
                    }
                }.schedule(i * 1000);
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView, com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.invalidateDataListener);
        OverlayManager.get().a((ContactDetailsOverlayView) this);
        EditText editText = this.responseSmsText;
        if (editText != null) {
            editText.removeTextChangedListener(this);
        }
        for (ContactData contactData : this.dataMap.values()) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(contactData, this);
        }
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SMS_OVERLAY_SCREEN);
        super.onDestroy();
        CLog.a(MultipleIncomingSmsOverlayView.class, "onDestroy finished");
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.OnSinglePageEventListener
    public void onHeightChanged(int i) {
        if (i > this.pageHeight) {
            this.pageHeight = i;
        }
        updateHeightByCurrentPosition();
    }

    public void onMessageSent(SingleSmsData singleSmsData, boolean z) {
        if (z) {
            Phone a2 = PhoneManager.get().a(singleSmsData.getPhone());
            if (a2.isNotEmpty() && !CallLogUtils.b(a2.getRawNumber())) {
                SmsUtils.c(getContext(), a2, "");
            }
        }
        if (this.dataArray.size() == 1) {
            finishViewContainer(true);
            return;
        }
        this.sendSmsButton.setClickable(true);
        int indexOf = this.dataArray.indexOf(singleSmsData);
        if (indexOf != -1) {
            this.dataArray.remove(indexOf);
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.dataMap.remove(Integer.valueOf(indexOf)), this);
            updateDataIndexes();
            updateIndicatorsVisibility();
            this.adapter.c();
            updateEditTextWithData();
            updateHeightByCurrentPosition();
            updateHeaderByPosition(this.viewPager.getCurrentItem());
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView.OnSinglePageEventListener
    public void onOpenSmsClick(Phone phone) {
        if (hasValidPhoneNumber(this.dataArray.get(this.viewPager.getCurrentItem()))) {
            if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
                SmsUtils.c(getContext(), phone, "");
            }
            finishViewContainer(true);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        this.responseSmsText.setText(this.dataArray.get(i).getLastText());
        updateHeightByCurrentPosition();
        updateHeaderByPosition(i);
        updateRespondLayout(hasValidPhoneNumber(this.dataArray.get(this.viewPager.getCurrentItem())));
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected void onProfilePictureClick() {
        SingleSmsData singleSmsData = this.dataArray.get(this.viewPager.getCurrentItem());
        if (hasValidPhoneNumber(singleSmsData)) {
            Phone a2 = PhoneManager.get().a(singleSmsData.getPhone());
            long contactId = singleSmsData.getContactId();
            Intent createIntent = ContactDetailsActivity.createIntent(getContext(), contactId, a2.getRawNumber(), this.extractedInfo, true, null, getTrackEventCategory(), ENTRYPOINT.SMS);
            boolean z = true;
            int i = (contactId > 0L ? 1 : (contactId == 0L ? 0 : -1));
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, i == 0);
            if (i != 0) {
                z = false;
            }
            createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, z);
            getContext().startActivity(createIntent);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView
    protected boolean shouldShowAd() {
        long b2 = CallAppRemoteConfigManager.get().b("SMSShowInterval");
        if (AdUtils.a(AdUtils.AdsLimitForNewUsers.SMS)) {
            return false;
        }
        int intValue = Prefs.cy.b(1).get().intValue();
        if (b2 == 1 || intValue % b2 == 0) {
            Prefs.cy.set(0);
            AnalyticsManager.get().a(Constants.INCOMING_SMS_OVERLAY, "shouldShowAd", "true", b2, new String[0]);
            return true;
        }
        AnalyticsManager.get().a(Constants.INCOMING_SMS_OVERLAY, "shouldShowAd", "false", b2, new String[0]);
        return false;
    }
}
