package com.callapp.contacts.activity.contact.details;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.s;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.ConferenceCard;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter;
import com.callapp.contacts.activity.contact.list.keypad.KeypadFragment;
import com.callapp.contacts.activity.interfaces.DialpadToggleListener;
import com.callapp.contacts.activity.interfaces.FinishActivityListener;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityEvents;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityListener;
import com.callapp.contacts.activity.interfaces.RecorderStateListener;
import com.callapp.contacts.activity.interfaces.ShowKeypadListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.CoverAssetManager;
import com.callapp.contacts.manager.keyguard.KeyguardActivityStateManager;
import com.callapp.contacts.manager.phone.CallDetailsListener;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.interfaces.CallRecorderEvent;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.material.a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ConferenceActivity.class */
public class ConferenceActivity extends BaseContactDetailsActivity implements DialpadToggleListener, KeypadVisibilityListener, CallDetailsListener, CallStateListener, ContactDataChangeListener, CallRecorderEvent {
    public static final String EXTRA_SUPPRESS_ACTIVITY_CREATION_ANIMATION = "shouldSuppressAnimation";
    public static final int ONE_SEC_IN_MILLIS = 1000;
    public static final int SNACK_BAR_DURATION = 4000;
    private boolean keypadShown;
    private KeypadVisibilityEvents keypadVisiblityEvents;
    private ViewGroup rootView;
    private String classSimpleName = getClass().getSimpleName();
    private final List<ContactData> contactDataList = new ArrayList();
    private ProximityManager.AudioModeChanged audioModeChangedListener = new ProximityManager.AudioModeChanged() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.1
        @Override // com.callapp.contacts.manager.ProximityManager.AudioModeChanged
        public final void a() {
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.1.1
                @Override // java.lang.Runnable
                public void run() {
                    ConferenceActivity.this.requestUpdateUI();
                }
            });
        }
    };

    private void addCards() {
        new Task() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.4
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                List<CallData> allConferenceCalls = PhoneStateManager.get().getAllConferenceCalls();
                if (Build.VERSION.SDK_INT >= 23 && CollectionUtils.b(allConferenceCalls)) {
                    for (CallData callData : allConferenceCalls) {
                        ContactData contactDataByCallData = PhoneStateManager.get().getContactDataByCallData(callData);
                        if (contactDataByCallData != null) {
                            ConferenceActivity.this.contactDataList.add(contactDataByCallData);
                            new ConferenceCard(ConferenceActivity.this.presenterContainer, callData);
                            Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(callData.getNumber(), contactDataByCallData.getPhoneOrigin(), contactDataByCallData.getDeviceId(), ConferenceActivity.this, ContactFieldEnumSets.CONFERENCE_CALL_FIELDS);
                            ConferenceActivity.this.contact = (ContactData) registerForContactDetailsStack.first;
                            if (((Set) registerForContactDetailsStack.second).size() > 0) {
                                ConferenceActivity conferenceActivity = ConferenceActivity.this;
                                conferenceActivity.onContactChanged(conferenceActivity.contact, (Set) registerForContactDetailsStack.second);
                            }
                        }
                    }
                }
            }
        }.execute();
    }

    private CardArrayRecyclerViewAdapterWithPriority getRecyclerViewAdapter() {
        return (CardArrayRecyclerViewAdapterWithPriority) getRecyclerView().getAdapter();
    }

    private void removeContactDetailsListeners() {
        for (ContactData contactData : this.contactDataList) {
            unRegisterForContactDataChanges(contactData);
        }
        this.contactDataList.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestUpdateUI() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.8
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneStateManager.get().isAnyCallActive()) {
                    NotificationManager.get().e();
                }
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenLocked(boolean z) {
        CardArrayRecyclerViewAdapterWithPriority recyclerViewAdapter = getRecyclerViewAdapter();
        if (recyclerViewAdapter != null) {
            recyclerViewAdapter.setIsScreenLocked(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLockedNotificationOnScreen() {
        View findViewById;
        ViewGroup viewGroup = this.rootView;
        if (viewGroup != null && (findViewById = viewGroup.findViewById(2131363904)) != null) {
            final Snackbar a2 = Snackbar.a(findViewById, Activities.getString(2131887429));
            Snackbar.SnackbarLayout snackbarLayout = (Snackbar.SnackbarLayout) a2.b();
            snackbarLayout.findViewById(a.f.snackbar_text).setVisibility(4);
            View inflate = getLayoutInflater().inflate(2131558578, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(2131364483);
            textView.setText(Activities.getString(2131887429));
            textView.setTextColor(ThemeUtils.getColor(2131100228));
            TextView textView2 = (TextView) inflate.findViewById(2131364482);
            textView2.setText(Activities.getString(2131888109));
            textView2.setTextColor(ThemeUtils.getColor(2131099784));
            textView2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.5
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    ConferenceActivity.this.setScreenLocked(false);
                    a2.d();
                }
            });
            snackbarLayout.addView(inflate, 0);
            a2.c();
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    if (a2.e()) {
                        a2.d();
                    }
                }
            }, 4000L);
        }
    }

    public static void startConferenceActivity(Context context, boolean z) {
        CLog.a(ConferenceActivity.class, "starting conference activity");
        Intent addFlags = new Intent(context, ConferenceActivity.class).setFlags(268435456).addFlags(537198592);
        addFlags.putExtra(BaseContactDetailsActivity.EXTRA_SHOW_KEYPAD, z);
        Activities.b(context, addFlags);
    }

    private void unRegisterCall(CallData callData) {
        if (callData.getState().isDisconnected()) {
            unRegisterForContactDataChanges(PhoneStateManager.get().getContactDataByCallData(callData));
        }
    }

    private void unRegisterForContactDataChanges(ContactData contactData) {
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(contactData, this);
    }

    private void updateScreenLockState(final boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.9
            @Override // java.lang.Runnable
            public void run() {
                ConferenceActivity.this.setScreenLocked(z);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        KeypadFragment keypadFragment;
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 && this.keypadShown && (keypadFragment = (KeypadFragment) getSupportFragmentManager().a("KEYPAD_FRAGMENT_TAG")) != null) {
            keypadFragment.a();
        }
        return dispatchTouchEvent;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558443;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected BaseContactDetailsParallaxImpl getParallaxImpl(BaseContactDetailsActivity.FlingListener flingListener) {
        return new ContactDetailsParallaxImpl(this.presenterContainer, findViewById(2131362396), getPositionChangedListener(), flingListener, CoverAssetManager.b(), getLifecycle(), null);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.CONFERENCE_SCREEN;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        Intent intent = getIntent();
        return (intent == null || !intent.getBooleanExtra(EXTRA_SUPPRESS_ACTIVITY_CREATION_ANIMATION, false)) ? super.getThemeResId() : ThemeUtils.getNoTitleThemeNoTransitions();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected boolean isSnapOnUpRulesOk() {
        return false;
    }

    public /* synthetic */ void lambda$onCreate$0$ConferenceActivity(View view) {
        onBackPressed();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        CallBarPresenter callBarPresenter = (CallBarPresenter) this.presenterManager.a(CallBarPresenter.class);
        if (callBarPresenter == null || !callBarPresenter.d()) {
            finish();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected void onButtonBarIconClicked(View view) {
    }

    @Override // com.callapp.contacts.manager.phone.CallDetailsListener
    public void onCallDetailsChanged(int[] iArr) {
        boolean[] a2 = ArrayUtils.a(iArr);
        this.eventBus.a((EventType<L, EventType<CallDetailsListener, int[]>>) CallDetailsListener.f15120d, (EventType<CallDetailsListener, int[]>) iArr, true);
        if (Arrays.equals(a2, Constants.CALL_ON_HOLD) || Arrays.equals(a2, Constants.CALL_ADDED) || Arrays.equals(a2, Constants.CALL_BEFORE_MERGE)) {
            setHoldContactData(true);
        } else {
            setHoldContactData(false);
        }
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        callData.getState();
        if (!PhoneStateManager.get().shouldConferenceScreenAppear()) {
            CLog.a(ConferenceActivity.class, "conference activity onCallStateChanged finish");
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.10
                @Override // java.lang.Runnable
                public void run() {
                    ConferenceActivity.this.finish();
                }
            }, 500L);
            return;
        }
        boolean z = true;
        this.eventBus.a((EventType<L, EventType<CallStateListener, CallData>>) CallStateListener.f15121d, (EventType<CallStateListener, CallData>) callData, true);
        if (callData.getState() == null || !callData.getState().isTalking()) {
            z = false;
        }
        updateScreenLockState(z);
        unRegisterCall(callData);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        this.presenterContainer.onContactChanged(contactData, set);
        if ((CollectionUtils.a(set, ContactField.photoUrl) && contactData.hasAnyPhotoUrl() && !this.presenterContainer.a(contactData)) || (CollectionUtils.a(set, ContactField.googleMap) && contactData.getGoogleMapsLatLng() != null)) {
            getParallax().b(false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        CLog.a(ConferenceActivity.class, "conference activity onCreate");
        setKeyguardDismissAndScreenWindowFlags();
        getWindow().setSoftInputMode(48);
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.CONFERENCE_SCREEN);
        this.presenterContainer.getEventBus().a(DialpadToggleListener.f12941a, this);
        KeyguardActivityStateManager.get().a(this.classSimpleName);
        showActionBar(false);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362396);
        this.rootView = viewGroup;
        if (viewGroup != null) {
            viewGroup.setBackgroundColor(ThemeUtils.a(this, 2131099686));
            findViewById(2131362420).setVisibility(8);
            findViewById(2131362049).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ConferenceActivity$i5DxTiYISW3gM9SdUuVE7B_XWP4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ConferenceActivity.this.lambda$onCreate$0$ConferenceActivity(view);
                }
            });
            this.rootView.findViewById(2131362429).setVisibility(8);
            this.rootView.findViewById(2131362427).setVisibility(8);
            this.rootView.findViewById(2131362455).setVisibility(8);
        }
        ((AppBarLayout.Behavior) ((CoordinatorLayout.d) findViewById(2131362019).getLayoutParams()).f1663a).setDragCallback(new AppBarLayout.Behavior.a() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.2
            @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior.a
            public final boolean a() {
                return false;
            }
        });
        ((TextView) findViewById(2131363348)).setText(Activities.getString(2131886626));
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131363560);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131230968);
        glideRequestBuilder.l = true;
        profilePictureView.a(glideRequestBuilder.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1));
        this.presenterManager.a(CallBarPresenter.class);
        this.cardsAdapter = new CardArrayRecyclerViewAdapterWithPriority(this, new ArrayList(), new CardArrayRecyclerViewAdapterWithPriority.CardEventsListener() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.3
            @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
            public final void a() {
                ConferenceActivity.this.showLockedNotificationOnScreen();
            }

            @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
            public final void b() {
                ConferenceActivity.this.getParallax().a(BaseContactDetailsParallaxImpl.Position.SEMI_OPEN, false);
            }
        });
        FeedbackManager.get().a(2131231607, this);
        getRecyclerView().setAdapter((it.gmariotti.cardslib.library.recyclerview.a.a) this.cardsAdapter);
        this.presenterManager.c(this.presenterContainer);
        PhoneStateManager.get().addListenerIfNotPreCall(this, false);
        PhoneStateManager.get().addDetailsListener(this);
        addCards();
        onNewIntent(getIntent());
        CallRecorderManager.get().a(this, !RecorderTestManager.get().isInRecorderTestMode());
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CLog.a(ConferenceActivity.class, "onDestroy");
        PhoneStateManager.get().removeDetailsListener(this);
        PhoneStateManager.get().removeListener(this);
        this.presenterContainer.getEventBus().b(DialpadToggleListener.f12941a, this);
        KeyguardActivityStateManager.get().b(this.classSimpleName);
        CallRecorderManager.get().b(this, !RecorderTestManager.get().isInRecorderTestMode());
        removeContactDetailsListeners();
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CONFERENCE_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public /* synthetic */ void onError(Bundle bundle) {
        CallRecorderEvent._CC.$default$onError(this, bundle);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        CLog.a(ConferenceActivity.class, "conference activity onNewIntent");
        super.onNewIntent(intent);
        if (intent.getBooleanExtra(BaseContactDetailsActivity.EXTRA_SHOW_KEYPAD, false)) {
            this.presenterContainer.getEventBus().a((EventType<L, EventType<ShowKeypadListener, Boolean>>) ShowKeypadListener.f12963d, (EventType<ShowKeypadListener, Boolean>) Boolean.TRUE, false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        ProximityManager.get().setAudioModeChangedListener(null);
        super.onPause();
        PhoneStateManager.get().setConferencesActivityVisible(false);
        KeyguardActivityStateManager.get().d(this.classSimpleName);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onPreRecord(Bundle bundle) {
        this.eventBus.a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f12958b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public /* synthetic */ void onRecordFileReady(Bundle bundle) {
        CallRecorderEvent._CC.$default$onRecordFileReady(this, bundle);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onRecorderStarted(Bundle bundle) {
        this.eventBus.a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f12958b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onRecorderStopped(Bundle bundle) {
        CallRecorderLoader.a(this.contact);
        this.eventBus.a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f12958b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        KeyguardActivityStateManager.get().c(this.classSimpleName);
        PhoneStateManager.get().setConferencesActivityVisible(true);
        requestUpdateUI();
        ProximityManager.get().setAudioModeChangedListener(this.audioModeChangedListener);
        EventBusManager.f14368a.a((EventType<L, EventType<FinishActivityListener, Boolean>>) FinishActivityListener.f12947a, (EventType<FinishActivityListener, Boolean>) Boolean.TRUE, false);
    }

    @Override // androidx.activity.ComponentActivity
    public Object onRetainCustomNonConfigurationInstance() {
        return Boolean.TRUE;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected void onTopBarIconClicked(View view) {
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        KeyguardActivityStateManager.get().a(this.classSimpleName, z);
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void registerFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        this.keypadVisiblityEvents = keypadVisibilityEvents;
    }

    @Override // com.callapp.contacts.activity.interfaces.DialpadToggleListener
    public void toggleDialpad(boolean z, boolean z2, int i, int i2) {
        this.keypadShown = z;
        final s a2 = getSupportFragmentManager().a();
        KeypadFragment keypadFragment = (KeypadFragment) getSupportFragmentManager().a("KEYPAD_FRAGMENT_TAG");
        final KeypadFragment keypadFragment2 = keypadFragment;
        if (keypadFragment == null) {
            keypadFragment2 = KeypadFragment.a(true, i2, i, 1);
        }
        if (z) {
            a2.b(2131363143, keypadFragment2, "KEYPAD_FRAGMENT_TAG").b();
            getSupportFragmentManager().b();
            return;
        }
        KeypadVisibilityEvents keypadVisibilityEvents = this.keypadVisiblityEvents;
        if (keypadVisibilityEvents != null) {
            keypadVisibilityEvents.a(true, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.ConferenceActivity.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    a2.a(keypadFragment2).c();
                    ConferenceActivity.this.getSupportFragmentManager().b();
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void unRegisterFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        if (this.keypadVisiblityEvents == keypadVisibilityEvents) {
            this.keypadVisiblityEvents = null;
        }
    }
}
