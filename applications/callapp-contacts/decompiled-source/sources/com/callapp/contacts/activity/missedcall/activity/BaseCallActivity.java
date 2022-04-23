package com.callapp.contacts.activity.missedcall.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.contact.details.PresenterManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainerImpl;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.OnMissedCallReminderMenuClickListener;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.missedcall.MissedCallMoreManager;
import com.callapp.contacts.activity.missedcall.missedAnswer.MultipleMissedCallOverlayAdapter;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.SingleMissedCallData;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.BaseAdTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.common.collect.av;
import com.viewpagerindicator.CirclePageIndicator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/activity/BaseCallActivity.class */
public abstract class BaseCallActivity extends BaseAdTransparentActivity implements ViewPager.e, MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener, ContactDataChangeListener {
    private MultipleMissedCallOverlayAdapter adapter;
    private ContactData contact;
    private final EventBus eventBus;
    private CirclePageIndicator indicator;
    private int missedCallType;
    PresentersContainerImpl presenterContainer;
    private ViewPager viewPager;
    private final List<View> horizontalScrollViews = new ArrayList();
    private final List<SingleMissedCallData> dataArray = new ArrayList();
    private final Map<Integer, ContactData> dataMap = new HashMap();
    private final int NO_IM_PROTOCOL = -1;
    private final PresenterManager presenterManager = new PresenterManager(PresentersContainer.MODE.MISSED_CALL);

    public BaseCallActivity() {
        EventBus eventBus = new EventBus();
        this.eventBus = eventBus;
        this.presenterContainer = new PresentersContainerImpl(eventBus, PresentersContainer.MODE.MISSED_CALL) { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.1
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public View findViewById(int i) {
                return BaseCallActivity.this.findViewById(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public void finish() {
                BaseCallActivity.this.finish();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public ContactData getContact() {
                return BaseCallActivity.this.contact;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public EventBus getEventBus() {
                return BaseCallActivity.this.eventBus;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return BaseCallActivity.this;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = BaseCallActivity.this.getIntent();
                if (intent == null || !StringUtils.b((CharSequence) str)) {
                    return false;
                }
                return intent.hasExtra(str);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isFinishing() {
                return BaseCallActivity.this.isFinishing();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callBtnClick(SingleMissedCallData singleMissedCallData, ContactItemViewEvents contactItemViewEvents) {
        ListsUtils.a(this, PhoneManager.get().a(singleMissedCallData.getPhoneAsRaw()), singleMissedCallData, ContactUtils.a(PhoneManager.get().a(singleMissedCallData.getPhoneAsRaw()), singleMissedCallData.getContactId()), contactItemViewEvents);
        AnalyticsManager.get().a(getAnalyticsTag(), "ClickOverlyCallButton");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callBtnLongClick(final SingleMissedCallData singleMissedCallData, final ContactItemViewEvents contactItemViewEvents) {
        AndroidUtils.a((Activity) this);
        if (OptInWithTopImagePopup.b()) {
            OptInWithTopImagePopup.b(this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity._$$Lambda$BaseCallActivity$wNNkfv277B2uiiZ1R3W6nS_GuSk
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    BaseCallActivity.this.lambda$callBtnLongClick$0$BaseCallActivity(singleMissedCallData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity._$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    BaseCallActivity.this.lambda$callBtnLongClick$1$BaseCallActivity(singleMissedCallData, contactItemViewEvents, activity);
                }
            });
        } else {
            ListsUtils.a((Context) this, singleMissedCallData.getPhone(), (BaseAdapterItemData) singleMissedCallData, true, contactItemViewEvents);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeOverlay() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteAll() {
        Iterator it2 = new CopyOnWriteArrayList(this.dataArray).iterator();
        while (it2.hasNext()) {
            MissedCallManager.a(handleRemove((SingleMissedCallData) it2.next()), CallReminderFrequentData.FrequentType.DELETE, this.missedCallType, 0L);
        }
        if (CollectionUtils.a(this.dataArray)) {
            closeOverlay();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SingleMissedCallData getCurrentSingleMissedCallData() {
        int currentItem;
        if (!CollectionUtils.b(this.dataArray) || (currentItem = this.viewPager.getCurrentItem()) >= this.dataArray.size()) {
            return null;
        }
        return this.dataArray.get(currentItem);
    }

    private Phone handleRemove(SingleMissedCallData singleMissedCallData) {
        this.dataArray.remove(this.viewPager.getCurrentItem());
        this.adapter.c();
        EventBusManager.f14368a.a((EventType<L, EventType<OnMissedCallReminderMenuClickListener, Phone>>) OnMissedCallReminderMenuClickListener.f12954a, (EventType<OnMissedCallReminderMenuClickListener, Phone>) singleMissedCallData.getPhone(), false);
        return singleMissedCallData.getPhone();
    }

    private void initListener() {
        findViewById(2131363457).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlayClose");
                BaseCallActivity.this.removeItemFromList();
            }
        });
        setupCallButton(-1);
        findViewById(2131363460).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Phone a2;
                SingleMissedCallData currentSingleMissedCallData = BaseCallActivity.this.getCurrentSingleMissedCallData();
                if (currentSingleMissedCallData != null && (a2 = PhoneManager.get().a(currentSingleMissedCallData.getPhoneAsRaw())) != null && a2.isNotEmpty() && !CallLogUtils.b(a2.getRawNumber())) {
                    SmsUtils.c(BaseCallActivity.this, a2, null);
                    AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlySMS");
                    BaseCallActivity.this.finish();
                }
            }
        });
        findViewById(2131363459).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((AddCallReminderAction) ActionsManager.get().a(AddCallReminderAction.class)).b(CallAppApplication.get(), BaseCallActivity.this.contact, null);
                AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlySchedule");
                BaseCallActivity.this.closeOverlay();
            }
        });
        findViewById(2131362375).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlayClose");
                BaseCallActivity.this.deleteAll();
            }
        });
        final FrameLayout frameLayout = (FrameLayout) findViewById(2131363417);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlayMoreOptions");
                SingleMissedCallData currentSingleMissedCallData = BaseCallActivity.this.getCurrentSingleMissedCallData();
                if (currentSingleMissedCallData != null) {
                    boolean z = true;
                    List<CallReminderFrequentData> a2 = MissedCallFrequentManager.a(PhoneManager.get().a(currentSingleMissedCallData.getPhoneAsRaw()), av.a(Integer.valueOf(((SingleMissedCallData) BaseCallActivity.this.dataArray.get(BaseCallActivity.this.viewPager.getCurrentItem())).getMissedCallType())));
                    if (!CollectionUtils.b(a2) || !a2.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.SHOW_LESS)) {
                        z = false;
                    }
                    MissedCallMoreManager missedCallMoreManager = new MissedCallMoreManager();
                    BaseCallActivity baseCallActivity = BaseCallActivity.this;
                    missedCallMoreManager.a(baseCallActivity, frameLayout, baseCallActivity, z);
                }
            }
        });
    }

    private void initView() {
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131099891);
        ViewPager viewPager = (ViewPager) findViewById(2131364520);
        this.viewPager = viewPager;
        viewPager.setBackgroundColor(color2);
        this.viewPager.setOffscreenPageLimit(4);
        this.viewPager.addOnPageChangeListener(this);
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) findViewById(2131363088);
        this.indicator = circlePageIndicator;
        circlePageIndicator.setBackgroundColor(color2);
        this.indicator.setFillColor(color);
        this.indicator.setStrokeColor(color);
        this.indicator.setPageColor(0);
        ViewUtils.c((RelativeLayout) findViewById(2131362521), 2131232241, ThemeUtils.getColor(2131099784));
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131363174);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131363162);
        if (ThemeUtils.isThemeLight()) {
            linearLayout.setBackgroundColor(ThemeUtils.getColor(2131100228));
            relativeLayout.setBackgroundColor(ThemeUtils.getColor(2131100228));
        } else {
            linearLayout.setBackgroundColor(ThemeUtils.getColor(2131099918));
            relativeLayout.setBackgroundColor(ThemeUtils.getColor(2131099918));
        }
        this.horizontalScrollViews.add(this.viewPager);
        this.horizontalScrollViews.add(this.indicator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeItemFromList() {
        SingleMissedCallData currentSingleMissedCallData;
        if (CollectionUtils.b(this.dataArray) && (currentSingleMissedCallData = getCurrentSingleMissedCallData()) != null) {
            Phone a2 = PhoneManager.get().a(currentSingleMissedCallData.getPhoneAsRaw());
            Iterator it2 = new CopyOnWriteArrayList(this.dataArray).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                SingleMissedCallData singleMissedCallData = (SingleMissedCallData) it2.next();
                if (PhoneManager.get().a(singleMissedCallData.getPhoneAsRaw()).equals(a2)) {
                    this.dataArray.remove(singleMissedCallData);
                    this.adapter.c();
                    MissedCallManager.a(a2, CallReminderFrequentData.FrequentType.DELETE, this.missedCallType, 0L);
                    EventBusManager.f14368a.c(OnMissedCallReminderMenuClickListener.f12954a, a2);
                    break;
                }
            }
        }
        if (CollectionUtils.a(this.dataArray)) {
            closeOverlay();
        }
    }

    private void setupCallButton(final int i) {
        final ImSender imSender;
        final ImageView imageView = (ImageView) findViewById(2131363456);
        if (i == 1501) {
            Singletons.get();
            imSender = Singletons.a(Singletons.SenderType.VIBER);
        } else if (i != 1502) {
            imSender = null;
        } else {
            Singletons.get();
            imSender = Singletons.a(Singletons.SenderType.WHATSAPP);
        }
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.7
            @Override // java.lang.Runnable
            public void run() {
                ImSender imSender2 = imSender;
                if (imSender2 != null) {
                    GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(imSender2.getImIconResId()).a(imSender.getImColor(), PorterDuff.Mode.SRC_IN);
                    a2.g = null;
                    a2.q = true;
                    a2.l = true;
                    a2.f16204a = imageView;
                    a2.e = BaseCallActivity.this;
                    a2.d();
                    return;
                }
                ImageUtils.a(imageView, 2131231806);
            }
        });
        imageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.8
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                int i2 = i;
                if (i2 == 1501) {
                    ImSender imSender2 = imSender;
                    BaseCallActivity baseCallActivity = BaseCallActivity.this;
                    imSender2.openIm(baseCallActivity, baseCallActivity.contact);
                    AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlyIM", "VIBER");
                    return false;
                } else if (i2 != 1502) {
                    AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlyCallButton");
                    SingleMissedCallData currentSingleMissedCallData = BaseCallActivity.this.getCurrentSingleMissedCallData();
                    if (currentSingleMissedCallData == null) {
                        return false;
                    }
                    BaseCallActivity.this.callBtnLongClick(currentSingleMissedCallData, null);
                    return false;
                } else {
                    ImSender imSender3 = imSender;
                    BaseCallActivity baseCallActivity2 = BaseCallActivity.this;
                    imSender3.openIm(baseCallActivity2, baseCallActivity2.contact);
                    AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlyIM", "WHATSAPP");
                    return false;
                }
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i2 = i;
                if (i2 == 1501) {
                    ImSender imSender2 = imSender;
                    BaseCallActivity baseCallActivity = BaseCallActivity.this;
                    imSender2.openIm(baseCallActivity, baseCallActivity.contact);
                    AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlyIM", "VIBER");
                } else if (i2 != 1502) {
                    SingleMissedCallData currentSingleMissedCallData = BaseCallActivity.this.getCurrentSingleMissedCallData();
                    if (currentSingleMissedCallData != null) {
                        BaseCallActivity.this.callBtnClick(currentSingleMissedCallData, new ContactItemViewEvents() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseCallActivity.9.1
                            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
                            public final void a() {
                                BaseCallActivity.this.finish();
                            }

                            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
                            public final void b() {
                                BaseCallActivity.this.finish();
                            }
                        });
                    }
                } else {
                    ImSender imSender3 = imSender;
                    BaseCallActivity baseCallActivity2 = BaseCallActivity.this;
                    imSender3.openIm(baseCallActivity2, baseCallActivity2.contact);
                    AnalyticsManager.get().a(BaseCallActivity.this.getAnalyticsTag(), "ClickOverlyIM", "WHATSAPP");
                }
            }
        });
    }

    private void updateHeaderByPosition(int i) {
        Phone a2 = PhoneManager.get().a(this.dataArray.get(i).getPhoneAsRaw());
        for (ContactData contactData : this.dataMap.values()) {
            if (a2.equals(contactData.getPhone())) {
                this.contact = contactData;
                onContactChanged(contactData, ContactFieldEnumSets.ALL);
                return;
            }
        }
    }

    private void updateIndicatorsVisibility() {
        if (this.dataArray.size() > 1) {
            this.indicator.setVisibility(0);
            this.indicator.setViewPager(this.viewPager);
            return;
        }
        this.indicator.setVisibility(8);
    }

    public void addPage(SingleMissedCallData singleMissedCallData) {
        boolean z;
        Iterator<SingleMissedCallData> it2 = this.dataArray.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            SingleMissedCallData next = it2.next();
            if (singleMissedCallData.getPhone().equals(next.getPhone())) {
                next.setNumberOfMissedCalls(singleMissedCallData.getNumberOfMissedCalls());
                z = true;
                break;
            }
        }
        if (!z) {
            this.dataArray.add(singleMissedCallData);
        }
        MultipleMissedCallOverlayAdapter multipleMissedCallOverlayAdapter = this.adapter;
        if (multipleMissedCallOverlayAdapter == null) {
            MultipleMissedCallOverlayAdapter multipleMissedCallOverlayAdapter2 = new MultipleMissedCallOverlayAdapter(this.dataArray, getSubTitleId());
            this.adapter = multipleMissedCallOverlayAdapter2;
            this.viewPager.setAdapter(multipleMissedCallOverlayAdapter2);
        } else {
            multipleMissedCallOverlayAdapter.c();
        }
        updateIndicatorsVisibility();
    }

    public abstract String getAnalyticsTag();

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558826;
    }

    public abstract int getSubTitleId();

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        return ThemeUtils.getCallScreenTransparentTheme();
    }

    public /* synthetic */ void lambda$callBtnLongClick$0$BaseCallActivity(SingleMissedCallData singleMissedCallData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a((Context) this, PhoneManager.get().a(singleMissedCallData.getPhoneAsRaw()), (BaseAdapterItemData) singleMissedCallData, true, contactItemViewEvents);
    }

    public /* synthetic */ void lambda$callBtnLongClick$1$BaseCallActivity(SingleMissedCallData singleMissedCallData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a((Context) this, PhoneManager.get().a(singleMissedCallData.getPhoneAsRaw()), (BaseAdapterItemData) singleMissedCallData, false, contactItemViewEvents);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        int currentItem = this.viewPager.getCurrentItem();
        if (CollectionUtils.b(this.dataArray)) {
            if (PhoneManager.get().a(this.dataArray.get(currentItem).getPhoneAsRaw()).equals(contactData.getPhone())) {
                this.presenterContainer.onContactChanged(contactData, set);
                if (shouldUpdateCallButtion() && set.contains(ContactField.imAddresses)) {
                    Collection<JSONIMaddress> imAddresses = contactData.getImAddresses();
                    int i = -1;
                    int i2 = -1;
                    if (CollectionUtils.b(imAddresses)) {
                        Iterator<JSONIMaddress> it2 = imAddresses.iterator();
                        while (true) {
                            i2 = i;
                            if (!it2.hasNext()) {
                                break;
                            }
                            JSONIMaddress next = it2.next();
                            if (next.getProtocol() == 1502) {
                                Singletons.get();
                                if (Singletons.a(Singletons.SenderType.WHATSAPP).canUseIm(contactData)) {
                                    i2 = JSONIMaddress.IM_WHATSAPP_PROTOCOL_ID;
                                    break;
                                }
                            } else if (next.getProtocol() == 1501) {
                                Singletons.get();
                                if (Singletons.a(Singletons.SenderType.VIBER).canUseIm(contactData)) {
                                    i = JSONIMaddress.IM_VIBER_PROTOCOL_ID;
                                }
                            }
                        }
                    }
                    setupCallButton(i2);
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.presenterManager.c(this.presenterContainer);
        initListener();
        initView();
        initAd();
        onNewIntent(getIntent());
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onDeleteClick() {
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        for (ContactData contactData : this.dataMap.values()) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(contactData, this);
        }
        this.eventBus.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) this.presenterContainer, false);
        this.presenterManager.a();
        this.presenterContainer.onDestroy();
        this.eventBus.a();
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onDontShowClick() {
        SingleMissedCallData currentSingleMissedCallData = getCurrentSingleMissedCallData();
        if (currentSingleMissedCallData != null) {
            handleRemove(currentSingleMissedCallData);
            MissedCallManager.a(currentSingleMissedCallData.getPhone(), CallReminderFrequentData.FrequentType.DONT_SHOW, this.missedCallType, 0L);
            AnalyticsManager.get().a(getAnalyticsTag(), "ClickOverlayMoreOptions", "DontShow");
        }
        if (CollectionUtils.a(this.dataArray)) {
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Class<?> cls = getClass();
        CLog.a(cls, "onNewIntent: " + intent.toString());
        long longExtra = intent.getLongExtra(Constants.EXTRA_CONTACT_ID, -1L);
        Phone a2 = PhoneManager.get().a(intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER));
        long longExtra2 = intent.getLongExtra("EXTRA_MISSED_CALL_TIME", -1L);
        int intExtra = intent.getIntExtra("EXTRA_MISSED_CALL_NUMBER", 0);
        this.missedCallType = intent.getIntExtra("EXTRA_MISSED_CALL_TYPE", 0);
        addPage(new SingleMissedCallData(longExtra, a2, longExtra2, this.dataMap.size(), intExtra, this.missedCallType));
        TextView textView = (TextView) findViewById(2131363464);
        int i = this.missedCallType;
        if (i == 3) {
            textView.setText(Activities.getString(2131887193));
        } else if (i == 40) {
            textView.setText(Activities.getString(2131886377));
        }
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(a2, null, longExtra, this, ContactFieldEnumSets.ALL);
        ContactData contactData = (ContactData) registerForContactDetailsStack.first;
        if (this.contact == null) {
            this.contact = contactData;
        }
        this.dataMap.put(Integer.valueOf(this.dataArray.size() - 1), contactData);
        if (((Set) registerForContactDetailsStack.second).size() > 0) {
            onContactChanged(contactData, (Set) registerForContactDetailsStack.second);
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
        updateHeaderByPosition(i);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.eventBus.a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f14379a, (EventType<PauseListener, Object>) this.presenterContainer, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.eventBus.a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f14380d, (EventType<ResumeListener, Object>) this.presenterContainer, false);
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onShowLessClick() {
        SingleMissedCallData currentSingleMissedCallData = getCurrentSingleMissedCallData();
        if (currentSingleMissedCallData != null) {
            handleRemove(currentSingleMissedCallData);
            MissedCallManager.a(currentSingleMissedCallData.getPhone(), CallReminderFrequentData.FrequentType.SHOW_LESS, this.missedCallType, 0L);
            AnalyticsManager.get().a(getAnalyticsTag(), "ClickOverlayMoreOptions", "ShowLess");
        }
        if (CollectionUtils.a(this.dataArray)) {
            finish();
        }
    }

    protected boolean shouldUpdateCallButtion() {
        return false;
    }
}
