package com.callapp.contacts.activity.analytics.p236ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C2690g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.AnalyticsLargeAdCard;
import com.callapp.contacts.activity.analytics.cards.AnalyticsSmallAdCard;
import com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent;
import com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager;
import com.callapp.contacts.activity.base.BaseFragment;
import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.PresenterManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainerImpl;
import com.callapp.contacts.activity.interfaces.CardShowingAdEvent;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.shehabic.droppy.C17097b;
import com.shehabic.droppy.DroppyMenuPopup;
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment */
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/BaseInsightsFragment.class */
public abstract class BaseInsightsFragment extends BaseFragment implements AnalyticsDatePickerManager.OnAnalyticsDatePickerDialogItemClickListener, OnNewTabSelected, CardShowingAdEvent, ContactDataChangeListener {
    protected CardLoaded cardLoadedListener;
    protected CardArrayRecyclerViewAdapterWithPriority cardsAdapter;
    protected ContactData contact;
    private FrameLayout datePickerButton;
    private TextView datePickerDates;
    private TextView datePickerYear;
    protected boolean enterFromBottomBar = true;
    protected EventBus eventBus;
    protected PresentersContainerImpl presenterContainer;
    protected PresenterManager presenterManager;
    private CardRecyclerView recyclerView;
    private LinearLayout rootLayout;
    protected String sourceForEvent;
    private boolean stopAutoScroll;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment$CardLoaded */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded.class */
    public interface CardLoaded {
        /* renamed from: a */
        void mo31521a();
    }

    /* renamed from: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment$DateTexts */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts.class */
    public static class DateTexts {

        /* renamed from: a */
        String f20217a;

        /* renamed from: b */
        String f20218b;

        /* renamed from: c */
        String f20219c;

        public DateTexts(String str, String str2, String str3) {
            this.f20217a = str;
            this.f20218b = str2;
            this.f20219c = str3;
        }

        public String getStartDay() {
            return this.f20218b;
        }

        public String getToday() {
            return this.f20217a;
        }

        public String getYear() {
            return this.f20219c;
        }
    }

    private void loadSelfContact() {
        new Task() { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (BaseInsightsFragment.this.contact != null) {
                    BaseInsightsFragment.this.contact.removeListener(BaseInsightsFragment.this.presenterContainer);
                }
                Phone userPhoneOrFallbackPhone = UserProfileManager.get().getUserPhoneOrFallbackPhone();
                BaseInsightsFragment.this.presenterManager.m30927a(BaseInsightsFragment.this.presenterContainer);
                ContactLoader createSelfContactStackLoader = Singletons.get().getContactLoaderManager().createSelfContactStackLoader();
                final BaseInsightsFragment baseInsightsFragment = BaseInsightsFragment.this;
                createSelfContactStackLoader.setListener(new ContactDataChangeListener() { // from class: com.callapp.contacts.activity.analytics.ui._$$Lambda$Ix9so7gnimPcodv3fFd9WwdgnP8
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public final void onContactChanged(ContactData contactData, Set set) {
                        BaseInsightsFragment.this.onContactChanged(contactData, set);
                    }
                }, ContactFieldEnumSets.ALL);
                BaseInsightsFragment.this.contact = createSelfContactStackLoader.loadSelfContact(userPhoneOrFallbackPhone);
                if (BaseInsightsFragment.this.cardLoadedListener != null) {
                    BaseInsightsFragment.this.cardLoadedListener.mo31521a();
                }
                if (BaseInsightsFragment.this.contact != null) {
                    Set<ContactField> pastChangedFields = BaseInsightsFragment.this.contact.getPastChangedFields();
                    pastChangedFields.add(ContactField.newContact);
                    BaseInsightsFragment baseInsightsFragment2 = BaseInsightsFragment.this;
                    baseInsightsFragment2.onContactChanged(baseInsightsFragment2.contact, pastChangedFields);
                }
            }
        }.execute();
    }

    private boolean shouldAutoScroll() {
        CardRecyclerView cardRecyclerView;
        return isAdded() && (cardRecyclerView = this.recyclerView) != null && !cardRecyclerView.isUserTouchedItOrItsChildrenOnce() && !this.stopAutoScroll;
    }

    private void updateDateText(AnalyticsDatePickerManager.DatePicker datePicker) {
        if (this.datePickerDates == null || this.datePickerYear == null) {
            return;
        }
        if (datePicker == AnalyticsDatePickerManager.DatePicker.WEEK) {
            DateTexts dateText = AnalyticsDatePickerManager.getDateText(7);
            TextView textView = this.datePickerDates;
            textView.setText(dateText.getStartDay() + " - " + dateText.getToday());
            this.datePickerYear.setText(dateText.getYear());
        } else if (datePicker != AnalyticsDatePickerManager.DatePicker.MONTH) {
            this.datePickerDates.setText(Activities.getString(2131886707));
            this.datePickerYear.setText("");
        } else {
            DateTexts dateText2 = AnalyticsDatePickerManager.getDateText(30);
            TextView textView2 = this.datePickerDates;
            textView2.setText(dateText2.getStartDay() + " - " + dateText2.getToday());
            this.datePickerYear.setText(dateText2.getYear());
        }
    }

    public void addCardShowingAdEvent() {
        this.eventBus.m29048a(CardShowingAdEvent.f23112a, this);
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558753;
    }

    protected abstract PresentersContainer.MODE getPresenterContainerMode();

    public /* synthetic */ void lambda$null$0$BaseInsightsFragment() {
        if (shouldAutoScroll()) {
            this.recyclerView.m40449d(0);
        }
    }

    public /* synthetic */ void lambda$onCardShowingAd$1$BaseInsightsFragment() {
        if (shouldAutoScroll()) {
            this.recyclerView.m40449d(this.cardsAdapter.getItemCount());
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.analytics.ui._$$Lambda$BaseInsightsFragment$yKNx4zhiXSp_rwN6iRjSbRFBPL4
                @Override // java.lang.Runnable
                public final void run() {
                    BaseInsightsFragment.this.lambda$null$0$BaseInsightsFragment();
                }
            }, 9000L);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.CardShowingAdEvent
    public void onCardShowingAd(AdCard adCard) {
        if ((adCard instanceof AnalyticsSmallAdCard) || (adCard instanceof AnalyticsLargeAdCard)) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.ui._$$Lambda$BaseInsightsFragment$0ATtQ8ENAotzUp6CzivFmMdtAKs
                @Override // java.lang.Runnable
                public final void run() {
                    BaseInsightsFragment.this.lambda$onCardShowingAd$1$BaseInsightsFragment();
                }
            });
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        this.presenterContainer.onContactChanged(contactData, set);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus eventBus = ((InsightActivity) getActivity()).getEventBus();
        this.eventBus = eventBus;
        this.presenterContainer = new PresentersContainerImpl(eventBus, getPresenterContainerMode()) { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.1
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public Fragment findFragment(int i) {
                return BaseInsightsFragment.this.requireActivity().getSupportFragmentManager().m43719c(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public View findViewById(int i) {
                return BaseInsightsFragment.this.requireActivity().findViewById(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public void finish() {
                BaseInsightsFragment.this.requireActivity().finish();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public CardArrayRecyclerViewAdapterWithPriority getCardsAdapter() {
                return BaseInsightsFragment.this.cardsAdapter;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public ContactData getContact() {
                return BaseInsightsFragment.this.contact;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public EventBus getEventBus() {
                return BaseInsightsFragment.this.eventBus;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return BaseInsightsFragment.this.getActivity();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = BaseInsightsFragment.this.requireActivity().getIntent();
                if (intent == null || !StringUtils.m26045b((CharSequence) str)) {
                    return false;
                }
                return intent.hasExtra(str);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isClickValid(View view) {
                return true;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isFinishing() {
                return BaseInsightsFragment.this.requireActivity().isFinishing();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public void openNotificationAccsess() {
                Activities.m27658b(BaseInsightsFragment.this.getActivity(), (PopupDoneListener) null);
                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ClickPermissionToNotificationInsights", Constants.CALLAPP_PLUS);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public void scrollToPosition(int i) {
                CardRecyclerView cardRecyclerView = BaseInsightsFragment.this.recyclerView;
                if (cardRecyclerView != null) {
                    cardRecyclerView.m40449d(i);
                }
            }
        };
        this.eventBus.m29048a(OnNewTabSelected.f20228b, this);
        this.cardsAdapter = new CardArrayRecyclerViewAdapterWithPriority(getActivity(), new ArrayList(), new CardArrayRecyclerViewAdapterWithPriority.CardEventsListener() { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.2
            @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
            /* renamed from: a */
            public final void mo30941a() {
            }

            @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
            /* renamed from: b */
            public final void mo30940b() {
            }
        });
        this.presenterManager = new PresenterManager(this.presenterContainer.getContainerMode());
        this.cardLoadedListener = ((InsightActivity) getActivity()).getCardLoadedListener();
        loadSelfContact();
        addCardShowingAdEvent();
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        LinearLayout linearLayout = (LinearLayout) onCreateView.findViewById(2131363115);
        this.rootLayout = linearLayout;
        linearLayout.setBackgroundColor(ThemeUtils.getColor(2131099891));
        CardRecyclerView cardRecyclerView = (CardRecyclerView) onCreateView.findViewById(2131362293);
        this.recyclerView = cardRecyclerView;
        cardRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()) { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
            /* renamed from: a */
            public final void mo10800a(final RecyclerView recyclerView, RecyclerView.C2654s c2654s, int i) {
                C2690g c2690g = new C2690g(recyclerView.getContext()) { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.4.1
                    @Override // androidx.recyclerview.widget.C2690g
                    /* renamed from: a */
                    public final float mo10799a(DisplayMetrics displayMetrics) {
                        return 250.0f / displayMetrics.densityDpi;
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2651r
                    /* renamed from: c */
                    public final PointF mo27811c(int i2) {
                        return ((LinearLayoutManager) recyclerView.getLayoutManager()).mo40248c(i2);
                    }

                    @Override // androidx.recyclerview.widget.C2690g
                    public int getVerticalSnapPreference() {
                        return -1;
                    }
                };
                c2690g.setTargetPosition(i);
                m40378a(c2690g);
            }
        });
        this.recyclerView.setAdapter((AbstractC18112a) this.cardsAdapter);
        this.datePickerDates = (TextView) onCreateView.findViewById(2131362009);
        this.datePickerYear = (TextView) onCreateView.findViewById(2131362010);
        this.datePickerDates.setTextColor(ThemeUtils.getColor(2131100140));
        this.datePickerYear.setTextColor(ThemeUtils.getColor(2131100108));
        FrameLayout frameLayout = (FrameLayout) onCreateView.findViewById(2131362530);
        this.datePickerButton = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28449a(Constants.INSIGHTS, "ClickInsightsCalendar", (String) null);
                AndroidUtils.m27630a(BaseInsightsFragment.this.datePickerButton, 1);
                final AnalyticsDatePickerManager analyticsDatePickerManager = new AnalyticsDatePickerManager();
                Context realContext = BaseInsightsFragment.this.presenterContainer.getRealContext();
                FrameLayout frameLayout2 = BaseInsightsFragment.this.datePickerButton;
                final BaseInsightsFragment baseInsightsFragment = BaseInsightsFragment.this;
                DroppyMenuPopup.C17093a c17093a = new DroppyMenuPopup.C17093a(frameLayout2.getContext(), frameLayout2);
                C17097b c17097b = new C17097b(2131558490);
                View mo5867a = c17097b.mo5867a(realContext);
                ((LinearLayout) mo5867a.findViewById(2131362526)).setBackgroundColor(ThemeUtils.getColor(2131099686));
                TextView textView = (TextView) mo5867a.findViewById(2131363824);
                textView.setText(Activities.getString(2131886709));
                TextView textView2 = (TextView) mo5867a.findViewById(2131363292);
                textView2.setText(Activities.getString(2131886708));
                TextView textView3 = (TextView) mo5867a.findViewById(2131363196);
                textView3.setText(Activities.getString(2131886707));
                TextView textView4 = (TextView) mo5867a.findViewById(2131363827);
                TextView textView5 = (TextView) mo5867a.findViewById(2131363300);
                LinearLayout linearLayout2 = (LinearLayout) mo5867a.findViewById(2131363826);
                LinearLayout linearLayout3 = (LinearLayout) mo5867a.findViewById(2131363295);
                LinearLayout linearLayout4 = (LinearLayout) mo5867a.findViewById(2131363198);
                DateTexts dateText = AnalyticsDatePickerManager.getDateText(7);
                DateTexts dateText2 = AnalyticsDatePickerManager.getDateText(30);
                textView4.setText(dateText.getStartDay() + " - " + dateText.getToday() + " / " + dateText.getYear());
                textView5.setText(dateText2.getStartDay() + " - " + dateText2.getToday() + " / " + dateText2.getYear());
                textView.setTextColor(ThemeUtils.getColor(2131100140));
                textView2.setTextColor(ThemeUtils.getColor(2131100140));
                textView3.setTextColor(ThemeUtils.getColor(2131100140));
                textView4.setTextColor(ThemeUtils.getColor(2131100108));
                textView5.setTextColor(ThemeUtils.getColor(2131100108));
                final ImageView imageView = (ImageView) mo5867a.findViewById(2131363825);
                final ImageView imageView2 = (ImageView) mo5867a.findViewById(2131363294);
                final ImageView imageView3 = (ImageView) mo5867a.findViewById(2131363197);
                AnalyticsDatePickerManager.DatePicker datePicker = (AnalyticsDatePickerManager.DatePicker) Prefs.f26548gG.get();
                if (datePicker == AnalyticsDatePickerManager.DatePicker.WEEK) {
                    AnalyticsDatePickerManager.m31524a(imageView, imageView2, imageView3);
                } else if (datePicker == AnalyticsDatePickerManager.DatePicker.MONTH) {
                    AnalyticsDatePickerManager.m31524a(imageView2, imageView, imageView3);
                } else {
                    AnalyticsDatePickerManager.m31524a(imageView3, imageView2, imageView);
                }
                linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        AnalyticsDatePickerManager.m31523a(AnalyticsDatePickerManager.this);
                        AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ClickInsightsCalendar7days");
                        Prefs.f26548gG.set(DatePicker.WEEK);
                        AnalyticsDatePickerManager.m31524a(imageView, imageView2, imageView3);
                        OnAnalyticsDatePickerDialogItemClickListener onAnalyticsDatePickerDialogItemClickListener = baseInsightsFragment;
                        if (onAnalyticsDatePickerDialogItemClickListener != null) {
                            onAnalyticsDatePickerDialogItemClickListener.onDatePick(DatePicker.WEEK);
                        }
                    }
                });
                linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        AnalyticsDatePickerManager.m31523a(AnalyticsDatePickerManager.this);
                        AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ClickInsightsCalendar30days");
                        Prefs.f26548gG.set(DatePicker.MONTH);
                        AnalyticsDatePickerManager.m31524a(imageView2, imageView, imageView3);
                        OnAnalyticsDatePickerDialogItemClickListener onAnalyticsDatePickerDialogItemClickListener = baseInsightsFragment;
                        if (onAnalyticsDatePickerDialogItemClickListener != null) {
                            onAnalyticsDatePickerDialogItemClickListener.onDatePick(DatePicker.MONTH);
                        }
                    }
                });
                linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        AnalyticsDatePickerManager.m31523a(AnalyticsDatePickerManager.this);
                        AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ClickInsightsCalendarLifetime");
                        Prefs.f26548gG.set(DatePicker.LIFE);
                        AnalyticsDatePickerManager.m31524a(imageView3, imageView2, imageView);
                        OnAnalyticsDatePickerDialogItemClickListener onAnalyticsDatePickerDialogItemClickListener = baseInsightsFragment;
                        if (onAnalyticsDatePickerDialogItemClickListener != null) {
                            onAnalyticsDatePickerDialogItemClickListener.onDatePick(DatePicker.LIFE);
                        }
                    }
                });
                analyticsDatePickerManager.f20194a = c17093a.m5873a(c17097b).m5871c();
                analyticsDatePickerManager.f20194a.m5878b();
            }
        });
        updateDateText((AnalyticsDatePickerManager.DatePicker) Prefs.f26548gG.get());
        new Task() { // from class: com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.6
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                BaseInsightsFragment.this.presenterManager.m30923b(BaseInsightsFragment.this.presenterContainer);
            }
        }.execute();
        this.presenterManager.m30921c(this.presenterContainer);
        return onCreateView;
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.OnAnalyticsDatePickerDialogItemClickListener
    public void onDatePick(AnalyticsDatePickerManager.DatePicker datePicker) {
        updateDateText(datePicker);
        this.presenterContainer.getEventBus().m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) getPresenterContainerMode(), false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.eventBus.m29045b(CardShowingAdEvent.f23112a, this);
        this.eventBus.m29045b(OnNewTabSelected.f20228b, this);
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.OnNewTabSelected
    public void onNewSelected() {
        updateDateText((AnalyticsDatePickerManager.DatePicker) Prefs.f26548gG.get());
        CardRecyclerView cardRecyclerView = this.recyclerView;
        if (cardRecyclerView != null) {
            cardRecyclerView.m40445e();
            this.stopAutoScroll = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        CardRecyclerView cardRecyclerView = this.recyclerView;
        if (cardRecyclerView != null) {
            cardRecyclerView.m40445e();
            this.stopAutoScroll = true;
        }
    }

    public void setEnterViaBottomBar(boolean z) {
        this.enterFromBottomBar = z;
    }

    public void setSource(String str) {
        this.sourceForEvent = str;
    }
}
