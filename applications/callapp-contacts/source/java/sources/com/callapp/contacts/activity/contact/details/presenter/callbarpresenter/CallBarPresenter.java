package com.callapp.contacts.activity.contact.details.presenter.callbarpresenter;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.p036e.C0828b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.activity.contact.list.RetentionAnalytics;
import com.callapp.contacts.activity.interfaces.DefaultDialer;
import com.callapp.contacts.activity.interfaces.DialpadToggleListener;
import com.callapp.contacts.activity.interfaces.RecorderStateListener;
import com.callapp.contacts.activity.interfaces.ShowKeypadListener;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.CallDetailsListener;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter.class */
public class CallBarPresenter extends BasePresenter implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, ShowKeypadListener, ThemeChangedListener, DestroyListener, ResumeListener, AudioModeProvider.AudioModeListener, CallDetailsListener, CallStateListener {

    /* renamed from: A */
    private ImageView f22209A;

    /* renamed from: B */
    private ImageView f22210B;

    /* renamed from: C */
    private ImageView f22211C;

    /* renamed from: D */
    private ImageView f22212D;

    /* renamed from: E */
    private TextView f22213E;

    /* renamed from: F */
    private View f22214F;

    /* renamed from: G */
    private View f22215G;

    /* renamed from: H */
    private int[] f22216H;

    /* renamed from: I */
    private TextView f22217I;

    /* renamed from: J */
    private View f22218J;

    /* renamed from: L */
    private boolean f22220L;

    /* renamed from: M */
    private boolean f22221M;

    /* renamed from: O */
    private boolean f22223O;

    /* renamed from: P */
    private boolean f22224P;

    /* renamed from: Q */
    private boolean f22225Q;

    /* renamed from: R */
    private boolean f22226R;

    /* renamed from: S */
    private Animation f22227S;

    /* renamed from: T */
    private AudioRouteSelectorDialogListener f22228T;

    /* renamed from: U */
    private RecorderTestListener f22229U;

    /* renamed from: V */
    private boolean f22230V;

    /* renamed from: W */
    private ValueAnimator f22231W;

    /* renamed from: X */
    private boolean f22232X;

    /* renamed from: a */
    public TextView f22235a;

    /* renamed from: b */
    public TextView f22240b;

    /* renamed from: c */
    public TextView f22241c;

    /* renamed from: e */
    private View f22242e;

    /* renamed from: f */
    private View f22243f;

    /* renamed from: g */
    private TextView f22244g;

    /* renamed from: h */
    private TextView f22245h;

    /* renamed from: j */
    private TextView f22246j;

    /* renamed from: k */
    private LinearLayout f22247k;

    /* renamed from: l */
    private FrameLayout f22248l;

    /* renamed from: m */
    private RelativeLayout f22249m;

    /* renamed from: n */
    private ImageView f22250n;

    /* renamed from: o */
    private ImageView f22251o;

    /* renamed from: p */
    private long f22252p;

    /* renamed from: q */
    private AlphaAnimation f22253q;

    /* renamed from: r */
    private View f22254r;

    /* renamed from: s */
    private View f22255s;

    /* renamed from: t */
    private ImageView f22256t;

    /* renamed from: u */
    private CardView f22257u;

    /* renamed from: v */
    private View f22258v;

    /* renamed from: w */
    private ImageView f22259w;

    /* renamed from: x */
    private ImageView f22260x;

    /* renamed from: y */
    private ImageView f22261y;

    /* renamed from: z */
    private ImageView f22262z;

    /* renamed from: K */
    private final int f22219K = 1000;

    /* renamed from: N */
    private boolean f22222N = false;

    /* renamed from: Y */
    private CallBarState f22233Y = CallBarState.OPEN;

    /* renamed from: Z */
    private boolean f22234Z = false;

    /* renamed from: aa */
    private final RecorderStateListener f22236aa = new RecorderStateListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.1
        @Override // com.callapp.contacts.activity.interfaces.RecorderStateListener
        /* renamed from: a */
        public void mo30197a(final Bundle bundle) {
            if (bundle != null) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorderManager.RecordingState recordingState = CallRecorderManager.RecordingState.values()[bundle.getInt("RECORDER_STATE", 0)];
                        if (ViewUtils.m27329a(CallBarPresenter.this.f22248l)) {
                            CallBarPresenter.this.setRecorderIcon(recordingState);
                        }
                        if (recordingState != CallRecorderManager.RecordingState.RECORDING || !Prefs.f26443eH.get().booleanValue() || CallBarPresenter.this.f22222N) {
                            return;
                        }
                        CallBarPresenter.this.f22222N = true;
                        RetentionAnalytics.get();
                        RetentionAnalytics.m30522b();
                    }
                });
            }
        }
    };

    /* renamed from: ab */
    private final Runnable f22237ab = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.2
        @Override // java.lang.Runnable
        public void run() {
            if (CallBarPresenter.this.f22244g == null || CallBarPresenter.this.f22252p <= 0) {
                return;
            }
            CallBarPresenter.this.f22244g.setText(DateUtils.m27122b((int) ((System.currentTimeMillis() - CallBarPresenter.this.f22252p) / 1000)));
            CallAppApplication.get().m31869a(this, 1000L);
        }
    };

    /* renamed from: ac */
    private final Runnable f22238ac = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.3
        @Override // java.lang.Runnable
        public void run() {
            if (CallBarPresenter.this.f22214F == null || CallBarPresenter.this.f22209A == null) {
                return;
            }
            CallBarPresenter.this.f22209A.setAlpha(1.0f);
            CallBarPresenter.this.f22214F.setEnabled(true);
        }
    };

    /* renamed from: ad */
    private final Runnable f22239ad = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.4

        /* renamed from: a */
        int f22284a = 0;

        @Override // java.lang.Runnable
        public void run() {
            String string = Activities.getString((!Prefs.f26578gk.get().booleanValue() || !CallBarPresenter.this.f22234Z) ? 2131886743 : 2131887580);
            for (int i = 0; i < this.f22284a; i++) {
                string = string + ".";
            }
            if (CallBarPresenter.this.f22246j != null) {
                CallBarPresenter.this.f22246j.setText(string);
                this.f22284a++;
            }
            if (this.f22284a % 4 == 0) {
                this.f22284a = 0;
            }
            CallAppApplication.get().m31869a(CallBarPresenter.this.f22239ad, 1000L);
        }
    };

    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter$16 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16.class */
    public static /* synthetic */ class C637016 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22281a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallState.values().length];
            f22281a = iArr;
            try {
                iArr[CallState.CONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22281a[CallState.RINGING_OUTGOING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22281a[CallState.TALKING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f22281a[CallState.ON_HOLD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22281a[CallState.RINGING_INCOMING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f22281a[CallState.POST_CALL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f22281a[CallState.PRE_CALL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f22281a[CallState.DISCONNECTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f22281a[CallState.ON_CONFERENCE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState.class */
    public enum CallBarState {
        OPEN,
        CLOSE
    }

    /* renamed from: a */
    public void m30758b(final View view) {
        AndroidUtils.m27630a(view, 1);
        PermissionManager.get();
        if (!PermissionManager.m28253a("android.permission.RECORD_AUDIO")) {
            PermissionManager.get().m28254a((BaseActivity) this.presentersContainer.getRealContext(), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$CMLSxufXu9akUrhoVPHw3Fa0HZ4
                @Override // java.lang.Runnable
                public final void run() {
                    CallBarPresenter.this.m30758b(view);
                }
            }, _$$Lambda$CallBarPresenter$tIDuoH0x2bRJ8OgItdLp6LzyNfw.INSTANCE, PermissionManager.PermissionGroup.MICROPHONE);
            return;
        }
        CallRecorderManager.get().m27868b();
        this.f22248l.setEnabled(false);
        this.f22251o.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099890), PorterDuff.Mode.SRC_IN));
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.13
            @Override // java.lang.Runnable
            public void run() {
                CallBarPresenter.this.f22248l.setEnabled(true);
                CallBarPresenter.this.f22251o.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            }
        }, 2000L);
    }

    /* renamed from: a */
    public void m30772a(final View view, boolean z, final boolean z2, final boolean z3, final int i) {
        if (!ViewUtils.m27329a(view)) {
            return;
        }
        ViewUtils.m27298b(view, z);
        ViewUtils.m27293c(view, z2);
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.14
            @Override // java.lang.Runnable
            public void run() {
                if (z3) {
                    ((ImageView) view).setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099708), PorterDuff.Mode.SRC_IN));
                } else if (z2) {
                    ((ImageView) view).setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100140), PorterDuff.Mode.SRC_IN));
                } else {
                    ((ImageView) view).setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099917), PorterDuff.Mode.SRC_IN));
                }
                int i2 = i;
                if (i2 != 0) {
                    ((ImageView) view).setImageResource(i2);
                }
            }
        });
    }

    /* renamed from: a */
    private void m30764a(Phone phone, SimManager.SimId simId, long j, boolean z, CallData callData) {
        this.f22252p = j;
        if (!ViewUtils.m27329a(this.f22243f)) {
            View findViewById = this.presentersContainer.findViewById(2131363054);
            this.f22243f = findViewById;
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099785));
            this.f22244g = (TextView) this.presentersContainer.findViewById(2131362660);
            this.f22246j = (TextView) this.presentersContainer.findViewById(2131362662);
            this.f22245h = (TextView) this.presentersContainer.findViewById(2131362661);
            this.f22217I = (TextView) this.f22243f.findViewById(2131362662);
            if (Build.VERSION.SDK_INT >= 23) {
                setCallTextMargin(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166048));
            }
        }
        if (simId != null) {
            if (!ViewUtils.m27329a(this.f22247k)) {
                this.f22247k = (LinearLayout) ViewUtils.m27302b(this.presentersContainer.findViewById(2131362664));
            }
            ImageUtils.m27529a((ImageView) this.f22247k.findViewById(2131362663), SimManager.m28141b(simId), (ColorFilter) null);
            ViewUtils.m27314a((View) this.f22247k, true);
        } else if (ViewUtils.m27329a(this.f22247k)) {
            ViewUtils.m27314a((View) this.f22247k, false);
        }
        if (CallRecorderManager.get().m27869a(z) && !callData.getState().isPreCall()) {
            if (!ViewUtils.m27329a(this.f22248l)) {
                FrameLayout frameLayout = (FrameLayout) ((ViewStub) this.presentersContainer.findViewById(2131363642)).inflate();
                this.f22248l = frameLayout;
                ViewUtils.m27316a(frameLayout, Integer.valueOf(ThemeUtils.getColor(2131099686)), Integer.valueOf(ThemeUtils.getColor(2131099784)));
                this.f22249m = (RelativeLayout) this.f22248l.findViewById(2131363638);
                TextView textView = (TextView) this.f22248l.findViewById(2131363623);
                textView.setText(Activities.getString(2131887492));
                textView.setTextColor(ThemeUtils.getColor(2131100140));
                this.f22250n = (ImageView) this.f22248l.findViewById(2131363652);
                ImageView imageView = (ImageView) this.f22248l.findViewById(2131363277);
                this.f22251o = imageView;
                imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
                m30736i();
                View view = this.f22243f;
                view.setPadding(view.getPaddingLeft(), this.f22243f.getPaddingTop(), (int) CallAppApplication.get().getResources().getDimension(2131165688), this.f22243f.getPaddingBottom());
                setRecorderIcon(CallRecorderManager.get().isRecording() ? CallRecorderManager.RecordingState.RECORDING : CallRecorderManager.get().m27863b(z) ? CallRecorderManager.RecordingState.PRE_RECORD : CallRecorderManager.RecordingState.IDLE);
            }
            this.f22248l.setOnClickListener(this);
            ViewUtils.m27314a((View) this.f22248l, true);
        } else if (ViewUtils.m27329a(this.f22248l)) {
            ViewUtils.m27314a((View) this.f22248l, false);
        }
        int i = C637016.f22281a[callData.getState().ordinal()];
        if (i == 1 || i == 2) {
            if (PhoneManager.get().isDefaultPhoneApp() && !this.f22220L) {
                ViewUtils.m27311a(this.f22245h, "");
                ViewUtils.m27311a(this.f22246j, "");
                CallAppApplication.get().m31861c(this.f22239ad);
                CallAppApplication.get().m31864b(this.f22239ad);
                this.f22220L = true;
            }
        } else if (i == 3 || i == 4) {
            if (phone != null) {
                CallAppApplication.get().m31861c(this.f22239ad);
                ViewUtils.m27311a(this.f22246j, PhoneNumberUtils.m26085a(phone));
                ViewUtils.m27311a(this.f22245h, phone.m26087e());
            }
        } else if (i == 9) {
            ViewUtils.m27311a(this.f22246j, "");
            ViewUtils.m27311a(this.f22245h, Activities.getString(2131886626));
        }
        CallAppApplication.get().m31864b(this.f22237ab);
        ViewUtils.m27314a(this.f22243f, true);
        TextView textView2 = this.f22244g;
        boolean z2 = false;
        if (j > 0) {
            z2 = true;
        }
        ViewUtils.m27314a(textView2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter] */
    /* renamed from: a */
    public void m30763a(Phone phone, SimManager.SimId simId, boolean z, long j, CallData callData) {
        getRootView();
        View view = this.f22242e;
        if (view != null) {
            if (view.getAnimation() != null) {
                this.f22242e.clearAnimation();
            }
            ViewUtils.m27314a(this.f22242e, true);
            ?? r12 = j;
            if (!PhoneManager.get().isDefaultPhoneApp()) {
                m30759b();
                r12 = j;
                if (!z) {
                    r12 = -1;
                }
            }
            m30764a(phone, simId, r12, z, callData);
        }
    }

    /* renamed from: a */
    public void m30762a(boolean z) {
        if (this.f22218J != null) {
            getPresentersContainer().getEventBus().m29046a((EventType<L, EventType<DialpadToggleListener, DialpadToggleListener.ToggleDialpadEvent>>) DialpadToggleListener.f23114a, (EventType<DialpadToggleListener, DialpadToggleListener.ToggleDialpadEvent>) new DialpadToggleListener.ToggleDialpadEvent(z, true, this.f22218J.getHeight(), this.f22218J.getWidth()), false);
            ViewUtils.m27314a(this.f22218J, !z);
            ViewUtils.m27314a(this.f22215G, z);
        }
    }

    /* renamed from: a */
    private void m30761a(final boolean z, final boolean z2) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.11
            @Override // java.lang.Runnable
            public void run() {
                if (ViewUtils.m27329a(CallBarPresenter.this.f22242e)) {
                    CallBarPresenter.m30722u(CallBarPresenter.this);
                    if (!PhoneManager.get().isDefaultPhoneApp() || (CallBarPresenter.this.f22218J.getVisibility() != 0 && !z2)) {
                        CallBarPresenter.this.m30748d();
                    } else {
                        CallBarPresenter.this.m30762a(false);
                    }
                    CallBarPresenter.this.setCallBarCloseAnimation(z);
                }
            }
        });
    }

    /* renamed from: a */
    private void m30760a(int[] iArr) {
        boolean[] m27619a = ArrayUtils.m27619a(iArr);
        boolean equals = Arrays.equals(Constants.CALL_ON_HOLD, m27619a);
        if (m27619a.length != 3) {
            CLog.m27611a(CallBarPresenter.class, "wrong size off call state array");
            return;
        }
        if (Arrays.equals(Constants.CALL_ACTIVE, m27619a) || equals) {
            m30772a((View) this.f22260x, true, true, false, 0);
            m30772a((View) this.f22259w, true, true, equals, equals ? 2131231714 : 2131231713);
            m30772a((View) this.f22262z, false, false, false, 0);
            m30772a((View) this.f22261y, false, false, false, 0);
        } else if (!Arrays.equals(Constants.CALL_BEFORE_MERGE, m27619a)) {
            m30772a((View) this.f22260x, true, false, false, 0);
            m30772a((View) this.f22259w, true, false, equals, 2131231713);
            m30772a((View) this.f22262z, false, false, false, 0);
            m30772a((View) this.f22261y, false, false, false, 0);
        } else if (PhoneStateManager.get().shouldConferenceScreenAppear()) {
            m30772a((View) this.f22260x, false, false, false, 0);
            m30772a((View) this.f22259w, false, false, equals, 2131231713);
            m30772a((View) this.f22262z, true, true, false, 0);
            m30772a((View) this.f22261y, true, false, false, 0);
        } else {
            if (iArr[1] == 6) {
                m30772a((View) this.f22261y, true, false, false, 0);
            } else {
                m30772a((View) this.f22261y, true, true, false, 0);
            }
            m30772a((View) this.f22260x, false, false, false, 0);
            m30772a((View) this.f22259w, false, false, equals, 2131231713);
            m30772a((View) this.f22262z, true, true, false, 0);
        }
        m30772a((View) this.f22256t, true, true, AudioModeProvider.get().getMute(), AudioModeProvider.get().getMute() ? 2131231712 : 2131231711);
    }

    /* renamed from: b */
    public /* synthetic */ void m30757b(CallBarState callBarState, boolean z) {
        this.f22233Y = callBarState;
        ValueAnimator valueAnimator = this.f22231W;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final int height = this.f22254r.getHeight();
        int i = callBarState == CallBarState.OPEN ? ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN : ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
        if (height != i) {
            final boolean z2 = i > height;
            ValueAnimator m27184a = CallappAnimationUtils.m27184a(this.f22254r, height, i, CallappAnimationUtils.f28093d, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.15
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float f;
                    float animatedFraction = valueAnimator2.getAnimatedFraction();
                    float f2 = ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
                    float f3 = (height - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED) / f2;
                    if (z2) {
                        f = f3 + (((ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN - height) / f2) * animatedFraction);
                        CallBarPresenter.this.f22212D.setVisibility(4);
                        CallBarPresenter.this.f22210B.setVisibility(4);
                        CallBarPresenter.this.f22211C.setVisibility(4);
                        CallBarPresenter callBarPresenter = CallBarPresenter.this;
                        callBarPresenter.setDialogVisibility(callBarPresenter.f22232X);
                    } else {
                        f = f3 - (((height - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED) / f2) * animatedFraction);
                        CallBarPresenter.this.f22212D.setVisibility(0);
                        CallBarPresenter.this.f22210B.setVisibility(0);
                        CallBarPresenter.this.f22211C.setVisibility(0);
                        int m27386a = ThemeUtils.m27386a(CallAppApplication.get(), 2131099708);
                        int m27386a2 = ThemeUtils.m27386a(CallAppApplication.get(), 2131099923);
                        CallBarPresenter.this.f22212D.setColorFilter(new PorterDuffColorFilter(AudioModeProvider.get().getMute() ? m27386a : m27386a2, PorterDuff.Mode.SRC_IN));
                        CallBarPresenter.this.f22210B.setColorFilter(new PorterDuffColorFilter(CallBarPresenter.this.isOnHold() ? m27386a : m27386a2, PorterDuff.Mode.SRC_IN));
                        ImageView imageView = CallBarPresenter.this.f22211C;
                        if (CallBarPresenter.this.isMerge()) {
                            m27386a2 = m27386a;
                        }
                        imageView.setColorFilter(new PorterDuffColorFilter(m27386a2, PorterDuff.Mode.SRC_IN));
                        CallBarPresenter.this.setDialogVisibility(false);
                    }
                    CallBarPresenter.this.f22256t.setScaleX(f);
                    CallBarPresenter.this.f22256t.setScaleY(f);
                    CallBarPresenter.this.f22259w.setScaleX(f);
                    CallBarPresenter.this.f22259w.setScaleY(f);
                    CallBarPresenter.this.f22260x.setScaleX(f);
                    CallBarPresenter.this.f22260x.setScaleY(f);
                    CallBarPresenter.this.f22261y.setScaleX(f);
                    CallBarPresenter.this.f22261y.setScaleY(f);
                    CallBarPresenter.this.f22262z.setScaleX(f);
                    CallBarPresenter.this.f22262z.setScaleY(f);
                }
            });
            this.f22231W = m27184a;
            if (!z) {
                m27184a.setDuration(0L);
            }
            this.f22231W.start();
        }
    }

    /* renamed from: b */
    private void m30754b(CallData callData) {
        if (!callData.isCallWaiting()) {
            m30759b();
            m30761a(false, false);
        }
    }

    /* renamed from: b */
    public void m30753b(boolean z) {
        if (!z) {
            this.f22232X = false;
            setDialogVisibility(false);
            return;
        }
        this.f22232X = true;
        this.f22257u.setCardBackgroundColor(ThemeUtils.getColor(2131099784));
        setDialogVisibility(true);
    }

    /* renamed from: c */
    public static void m30752c() {
        PhoneManager.get();
        PhoneManager.m28233b(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.ACTIVITY);
    }

    /* renamed from: c */
    public /* synthetic */ void m30751c(View view) {
        if (PhoneManager.get().isDefaultPhoneApp()) {
            AndroidUtils.m27630a(view, 1);
            m30740g();
            return;
        }
        AndroidUtils.m27630a(view, 1);
        if (PhoneManager.get().m28222h() || this.presentersContainer.isFinishing()) {
            return;
        }
        AndroidUtils.m27630a(view, 1);
        this.presentersContainer.finish();
    }

    /* renamed from: d */
    public /* synthetic */ void m30747d(View view) {
        m30762a(false);
        AndroidUtils.m27630a(view, 1);
    }

    /* renamed from: f */
    public void m30742f() {
        ImageView imageView;
        View findViewById = this.presentersContainer.findViewById(2131362205);
        ViewUtils.m27320a(this.presentersContainer.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
        ViewUtils.m27301b(findViewById, ThemeUtils.getColor(2131099878));
        View view = this.f22254r;
        if (view != null) {
            ViewUtils.m27301b(view, ThemeUtils.getColor(2131099878));
        }
        View view2 = this.f22218J;
        if (view2 != null && (imageView = (ImageView) view2.findViewById(2131362569)) != null) {
            imageView.setColorFilter(ThemeUtils.getColor(2131099709), PorterDuff.Mode.SRC_IN);
        }
        ImageView imageView2 = (ImageView) this.presentersContainer.findViewById(2131363133);
        if (imageView2 != null) {
            imageView2.setColorFilter(ThemeUtils.getColor(2131099709), PorterDuff.Mode.SRC_IN);
        }
        m30759b();
        m30760a(this.f22216H);
        if (ViewUtils.m27329a(this.f22248l)) {
            ViewUtils.m27316a(this.f22248l, Integer.valueOf(ThemeUtils.getColor(2131099686)), Integer.valueOf(ThemeUtils.getColor(2131099784)));
        }
        View view3 = this.f22255s;
        if (view3 != null) {
            view3.setBackgroundColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099921 : 2131099922));
        }
    }

    /* renamed from: g */
    private void m30740g() {
        this.f22223O = false;
        m30762a(true);
    }

    public void getRootView() {
        int[] iArr;
        C0828b<Boolean, View> m27296c = ViewUtils.m27296c(this.f22242e);
        this.f22242e = m27296c.f3557b;
        if (!m27296c.f3556a.booleanValue()) {
            View findViewById = this.presentersContainer.findViewById(2131363067);
            this.f22254r = findViewById;
            if (findViewById != null) {
                this.f22257u = (CardView) findViewById.findViewById(2131363166);
                this.f22258v = this.f22254r.findViewById(2131362983);
                this.f22256t = (ImageView) this.f22254r.findViewById(2131363046);
                this.f22259w = (ImageView) this.f22254r.findViewById(2131363038);
                this.f22260x = (ImageView) this.f22254r.findViewById(2131363031);
                this.f22261y = (ImageView) this.f22254r.findViewById(2131363045);
                this.f22262z = (ImageView) this.f22254r.findViewById(2131363051);
                this.f22210B = (ImageView) this.f22254r.findViewById(2131362974);
                this.f22211C = (ImageView) this.f22254r.findViewById(2131361981);
                this.f22212D = (ImageView) this.f22254r.findViewById(2131363343);
                if (Build.VERSION.SDK_INT < 23) {
                    ViewUtils.m27314a(this.f22254r, false);
                } else if (PhoneManager.get().isDefaultSystemPhoneApp()) {
                    this.f22254r.setOnClickListener(this);
                    this.f22260x.setOnClickListener(this);
                    this.f22261y.setOnClickListener(this);
                    this.f22256t.setOnClickListener(this);
                    this.f22259w.setOnClickListener(this);
                    this.f22262z.setOnClickListener(this);
                    this.f22210B.setOnClickListener(this);
                    this.f22211C.setOnClickListener(this);
                    this.f22212D.setOnClickListener(this);
                    m30772a((View) this.f22256t, true, true, AudioModeProvider.get().getMute(), 2131231711);
                    m30772a((View) this.f22259w, true, false, false, 2131231713);
                    m30772a((View) this.f22260x, true, false, false, 2131231705);
                } else {
                    m30772a((View) this.f22256t, true, false, false, 2131231711);
                    m30772a((View) this.f22259w, true, false, false, 2131231713);
                    m30772a((View) this.f22260x, true, false, false, 2131231705);
                    TextView textView = (TextView) this.f22254r.findViewById(2131362543);
                    this.f22235a = textView;
                    textView.setText(Activities.getString(2131888091));
                    TextView textView2 = (TextView) this.f22254r.findViewById(2131362542);
                    this.f22240b = textView2;
                    textView2.setText(Activities.getString(2131887338));
                    this.f22240b.setTextColor(ThemeUtils.getColor(2131099784));
                    this.f22240b.setOnClickListener(this);
                    TextView textView3 = (TextView) this.f22254r.findViewById(2131362541);
                    this.f22241c = textView3;
                    textView3.setText(Activities.getString(2131886777));
                    this.f22241c.setOnClickListener(this);
                }
            }
            if (PhoneManager.get().isDefaultPhoneApp() && (iArr = this.f22216H) != null) {
                onCallDetailsChanged(iArr);
            }
            this.f22218J = this.presentersContainer.findViewById(2131362570);
            this.f22255s = this.presentersContainer.findViewById(2131362203);
            View findViewById2 = this.presentersContainer.findViewById(2131362147);
            this.f22215G = findViewById2;
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$IoZcUo_s5NpRLe80owr_ag_RAqA
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CallBarPresenter.this.m30747d(view);
                    }
                });
            }
            ViewUtils.m27320a(this.presentersContainer.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
            View view = this.f22218J;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$yz39sZiK95KowAbNhXt5hnnMwQM
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CallBarPresenter.this.m30751c(view2);
                    }
                });
            }
            this.f22213E = (TextView) this.presentersContainer.findViewById(2131362702);
            FrameLayout frameLayout = (FrameLayout) this.presentersContainer.findViewById(2131362703);
            if (this.f22213E != null) {
                frameLayout.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.5
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view2) {
                        AndroidUtils.m27630a(view2, 1);
                        if (!RecorderTestManager.get().isInRecorderTestMode() || CallBarPresenter.this.f22229U == null) {
                            CallBarPresenter.this.m30775a();
                        } else {
                            CallBarPresenter.this.f22229U.mo27812a();
                        }
                    }
                });
            }
            this.f22214F = this.presentersContainer.findViewById(2131363941);
            this.f22209A = (ImageView) this.presentersContainer.findViewById(2131363940);
            View view2 = this.f22214F;
            if (view2 != null) {
                view2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.7
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view3) {
                        AndroidUtils.m27630a(view3, 1);
                        new Task() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.7.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                if (Build.VERSION.SDK_INT < 23 || !AudioModeProvider.get().isMoreThenOneBluetoothDevices()) {
                                    PhoneManager.get().m28236b(CallBarPresenter.this.presentersContainer.getRealContext());
                                } else {
                                    CallBarPresenter.this.f22228T.mo30782a();
                                }
                                if (!PhoneManager.get().isDefaultPhoneApp()) {
                                    CallBarPresenter.this.m30759b();
                                    ProximityManager.get().m28509b();
                                }
                            }
                        }.execute();
                        CallBarPresenter.this.f22209A.setAlpha(0.8f);
                        CallBarPresenter.this.f22214F.setEnabled(false);
                        CallAppApplication.get().m31869a(CallBarPresenter.this.f22238ac, 1000L);
                    }
                });
            }
            if (this.f22223O) {
                m30740g();
            }
            m30742f();
        }
    }

    /* renamed from: h */
    private void m30738h() {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.9
            @Override // java.lang.Runnable
            public void run() {
                CallBarPresenter.this.getRootView();
                if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
                    Integer num = Prefs.f26488f.get();
                    boolean z = num.intValue() == 2;
                    boolean z2 = num.intValue() == 75;
                    if ((num.intValue() == 250) | z | z2 | (num.intValue() == 150)) {
                        CallBarPresenter.this.m30753b(true);
                        return;
                    }
                }
                CallBarPresenter.this.m30753b(false);
            }
        });
    }

    /* renamed from: i */
    private void m30736i() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.4f, 1.0f);
        this.f22253q = alphaAnimation;
        alphaAnimation.setDuration(250L);
        this.f22253q.setRepeatCount(-1);
        this.f22253q.setRepeatMode(2);
        this.f22253q.setStartOffset(1000L);
    }

    private boolean isKeypadOpen() {
        return this.f22218J.getVisibility() == 8 && this.f22215G.getVisibility() == 0;
    }

    /* renamed from: j */
    public static /* synthetic */ void m30734j() {
    }

    public void setCallBarCloseAnimation(boolean z) {
        if (PhoneStateManager.get().isIncomingCallRingingState() || !z) {
            ViewUtils.m27314a(this.f22242e, false);
        } else if (this.f22227S != null) {
        } else {
            Animation loadAnimation = AnimationUtils.loadAnimation(this.presentersContainer.getRealContext(), 2130771992);
            this.f22227S = loadAnimation;
            loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.12
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    ViewUtils.m27314a(CallBarPresenter.this.f22242e, false);
                    CallBarPresenter.this.f22227S = null;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            this.f22242e.startAnimation(this.f22227S);
        }
    }

    private void setCallTextMargin(int i) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f22217I.getLayoutParams();
        layoutParams.setMargins(i, 0, 0, 0);
        ViewUtils.m27318a(this.f22217I, layoutParams);
    }

    public void setDialogVisibility(boolean z) {
        if (z) {
            this.f22257u.setVisibility(0);
            this.f22258v.setVisibility(8);
            return;
        }
        this.f22258v.setVisibility(0);
        this.f22257u.setVisibility(8);
    }

    public void setRecorderIcon(CallRecorderManager.RecordingState recordingState) {
        if (!ViewUtils.m27329a(this.f22248l) || this.f22248l.getVisibility() != 0) {
            return;
        }
        if (recordingState == CallRecorderManager.RecordingState.RECORDING) {
            ViewUtils.m27298b((View) this.f22251o, false);
            ViewUtils.m27298b((View) this.f22249m, true);
            this.f22250n.setAlpha(1.0f);
            this.f22250n.startAnimation(this.f22253q);
        } else if (recordingState != CallRecorderManager.RecordingState.PRE_RECORD) {
            ViewUtils.m27298b((View) this.f22251o, true);
            ViewUtils.m27298b((View) this.f22249m, false);
            AlphaAnimation alphaAnimation = this.f22253q;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.f22250n.setAnimation(null);
        } else {
            ViewUtils.m27298b((View) this.f22251o, false);
            ViewUtils.m27298b((View) this.f22249m, true);
            this.f22250n.setAlpha(0.4f);
            AlphaAnimation alphaAnimation2 = this.f22253q;
            if (alphaAnimation2 != null) {
                alphaAnimation2.cancel();
            }
            this.f22250n.setAnimation(null);
        }
    }

    /* renamed from: u */
    static /* synthetic */ void m30722u(CallBarPresenter callBarPresenter) {
        CallAppApplication.get().m31861c(callBarPresenter.f22237ab);
        callBarPresenter.f22252p = -1L;
    }

    /* renamed from: a */
    public final void m30775a() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(1500L);
        this.f22213E.startAnimation(alphaAnimation);
        PhoneManager phoneManager = PhoneManager.get();
        if (PhoneManager.get().isDefaultPhoneApp()) {
            phoneManager.m28250a();
        } else if (phoneManager.m28250a() || phoneManager.m28222h() || this.presentersContainer.isFinishing()) {
        } else {
            this.presentersContainer.finish();
        }
    }

    /* renamed from: a */
    public final void m30774a(Context context) {
        boolean m28237b = PhoneManager.get().m28237b();
        this.f22225Q = m28237b;
        m30772a((View) this.f22259w, true, true, m28237b, m28237b ? 2131231714 : 2131231713);
        if (this.f22225Q) {
            FeedbackManager.get().m28676a(2131231713, context);
        }
    }

    /* renamed from: a */
    public final void m30771a(final CallBarState callBarState, final boolean z) {
        if (!isInCallMode() || this.f22254r == null || this.f22233Y == callBarState) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$iM3TvnRKKHIzeQzeOW41YoSZntA
            @Override // java.lang.Runnable
            public final void run() {
                CallBarPresenter.this.m30757b(callBarState, z);
            }
        });
    }

    /* renamed from: a */
    public final void m30765a(final CallData callData) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.10
            @Override // java.lang.Runnable
            public void run() {
                CallBarPresenter.this.m30763a(callData.getNumber(), callData.getSimId(), callData.isIncoming(), callData.getTalkingStartTime(), callData);
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.ShowKeypadListener
    /* renamed from: a */
    public void mo30193a(Boolean bool) {
        if (!ViewUtils.m27329a(this.f22242e)) {
            this.f22223O = bool.booleanValue();
        } else if (isKeypadOpen()) {
        } else {
            m30740g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
        if (com.callapp.contacts.manager.phone.PhoneManager.get().isSpeakerOn() != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r0 != 8) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        r9 = true;
        r10 = 2131231716;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30759b() {
        /*
            r7 = this;
            com.callapp.contacts.manager.phone.PhoneManager r0 = com.callapp.contacts.manager.phone.PhoneManager.get()
            boolean r0 = r0.isDefaultPhoneApp()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 2131231715(0x7f0803e3, float:1.8079519E38)
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L32
            com.callapp.contacts.inCallService.AudioModeProvider r0 = com.callapp.contacts.inCallService.AudioModeProvider.get()
            int r0 = r0.getAudioMode()
            r11 = r0
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L38
            r0 = r11
            r1 = 8
            if (r0 == r1) goto L29
            goto L4d
        L29:
            r0 = 1
            r9 = r0
            r0 = 2131231716(0x7f0803e4, float:1.807952E38)
            r10 = r0
            goto L4d
        L32:
            boolean r0 = com.callapp.contacts.manager.phone.BluetoothHeadsetConnectivityManager.isUsingBT()
            if (r0 == 0) goto L41
        L38:
            r0 = 1
            r9 = r0
            r0 = 2131231706(0x7f0803da, float:1.80795E38)
            r10 = r0
            goto L4d
        L41:
            com.callapp.contacts.manager.phone.PhoneManager r0 = com.callapp.contacts.manager.phone.PhoneManager.get()
            boolean r0 = r0.isSpeakerOn()
            if (r0 == 0) goto L4d
            goto L29
        L4d:
            r0 = r7
            com.callapp.contacts.activity.contact.details.PresentersContainer r0 = r0.presentersContainer
            com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter$8 r1 = new com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter$8
            r2 = r1
            r3 = r7
            r4 = r9
            r5 = r10
            r2.<init>()
            r0.safeRunOnUIThread(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.m30759b():void");
    }

    /* renamed from: d */
    public final boolean m30748d() {
        View findViewById = this.presentersContainer.findViewById(2131362147);
        boolean z = findViewById != null && findViewById.isShown();
        if (z) {
            findViewById.performClick();
        }
        return z;
    }

    /* renamed from: e */
    public final void m30744e() {
        m30772a((View) this.f22256t, true, false, false, 2131231711);
        m30772a((View) this.f22260x, true, false, false, 0);
        m30772a((View) this.f22259w, true, false, false, 2131231713);
        m30772a((View) this.f22262z, false, false, false, 0);
        m30772a((View) this.f22261y, false, false, false, 0);
    }

    public boolean isInCallMode() {
        View view = this.f22242e;
        return view != null && view.getVisibility() == 0;
    }

    public boolean isMerge() {
        return this.f22226R;
    }

    public boolean isOnHold() {
        return this.f22225Q;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(int i) {
        m30759b();
    }

    @Override // com.callapp.contacts.manager.phone.CallDetailsListener
    public void onCallDetailsChanged(int[] iArr) {
        if (!ViewUtils.m27329a(this.f22254r)) {
            this.f22216H = iArr;
            return;
        }
        this.f22216H = iArr;
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            return;
        }
        m30760a(iArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            int i = C637016.f22281a[callData.getState().ordinal()];
            if (i == 2 || i == 3) {
                m30738h();
                m30765a(callData);
            } else if (i != 6) {
                if (i != 7) {
                    return;
                }
                m30754b(callData);
            } else {
                m30738h();
                if (Phone.f29662b.equals(callData.getNumber())) {
                    return;
                }
                m30754b(callData);
            }
        } else if (PhoneStateManager.get().getConferenceManager() != null && !callData.getState().isPostCall() && (PhoneStateManager.get().shouldConferenceScreenAppear() || PhoneStateManager.get().isCallDataInsideConference(callData))) {
        } else {
            boolean z = true;
            switch (C637016.f22281a[callData.getState().ordinal()]) {
                case 1:
                case 2:
                    if (callData.getState() != CallState.RINGING_OUTGOING) {
                        z = false;
                    }
                    this.f22234Z = z;
                    if (!this.f22220L) {
                        if (this.f22218J != null && callData.isVoiceMail()) {
                            m30740g();
                            break;
                        }
                    } else {
                        return;
                    }
                    break;
                case 3:
                    break;
                case 4:
                    if (PhoneStateManager.get().getCallListSize() != 1) {
                        return;
                    }
                    m30765a(callData);
                    return;
                case 5:
                    m30762a(false);
                    m30761a(false, false);
                    return;
                case 6:
                    this.f22234Z = false;
                    CallAppApplication.get().m31861c(this.f22239ad);
                    m30761a(true, true);
                    this.f22220L = false;
                    this.f22216H = null;
                    this.f22229U = null;
                    return;
                case 7:
                    m30754b(callData);
                    return;
                case 8:
                    this.f22220L = false;
                    return;
                default:
                    return;
            }
            this.f22220L = false;
            m30765a(callData);
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AndroidUtils.m27630a(compoundButton, 1);
        if (!z) {
            ViewUtils.m27298b(this.f22254r, false);
            return;
        }
        ViewUtils.m27298b(this.f22254r, true);
        if (PhoneManager.get().isDefaultPhoneApp()) {
            ViewUtils.m27298b((View) this.f22240b, false);
            return;
        }
        m30744e();
        ViewUtils.m27298b((View) this.f22240b, true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RecorderTestListener recorderTestListener;
        AndroidUtils.m27630a(view, 1);
        switch (view.getId()) {
            case 2131361981:
            case 2131362974:
            case 2131363067:
            case 2131363343:
                m30771a(CallBarState.OPEN, true);
                return;
            case 2131362541:
                m30753b(false);
                return;
            case 2131362542:
                this.presentersContainer.getEventBus().m29046a((EventType<L, EventType<DefaultDialer, EventBusManager.CallAppDataType>>) DefaultDialer.f23113a, (EventType<DefaultDialer, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.SET_AS_DEFAULT_PHONE, false);
                return;
            case 2131363031:
                PhoneManager.get();
                PhoneManager.m28249a(getPresentersContainer().getRealContext());
                AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Add call");
                return;
            case 2131363038:
                m30774a(getPresentersContainer().getRealContext());
                AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Hold");
                return;
            case 2131363045:
                this.f22226R = PhoneManager.m28241a(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.ACTIVITY);
                AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Merge");
                return;
            case 2131363046:
                this.f22224P = AudioModeProvider.get().getMute();
                PhoneManager.get();
                PhoneManager.m28238a(!this.f22224P);
                if (!this.f22224P) {
                    FeedbackManager.get().m28676a(2131231711, getPresentersContainer().getRealContext());
                }
                AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Mute");
                return;
            case 2131363051:
                m30752c();
                AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Swap");
                return;
            case 2131363641:
                AndroidUtils.m27630a(view, 1);
                if (!RecorderTestManager.get().isInRecorderTestMode() || (recorderTestListener = this.f22229U) == null) {
                    m30758b(view);
                    return;
                } else {
                    recorderTestListener.mo27812a();
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        presentersContainer.addCallStateListener(this);
        presentersContainer.addResumeListener(this);
        presentersContainer.addDestroyListener(this);
        AudioModeProvider.get().m28969a(this);
        EventBus eventBus = presentersContainer.getEventBus();
        if (eventBus != null) {
            eventBus.m29048a(RecorderStateListener.f23132b, this.f22236aa);
            eventBus.m29048a(CallDetailsListener.f26069d, this);
            eventBus.m29048a(ShowKeypadListener.f23137d, this);
            eventBus.m29048a(ThemeChangedListener.f23141i, this);
        }
        this.f22242e = presentersContainer.findViewById(2131362204);
        if (this.f22221M || PhoneStateManager.get().getCallListSize() <= 0 || PhoneStateManager.get().isIncomingCallRingingState()) {
            m30761a(false, false);
        } else if (presentersContainer.getContainerMode().equals(PresentersContainer.MODE.CONFERENCE_SCREEN)) {
            m30763a((Phone) null, (SimManager.SimId) null, false, PhoneStateManager.get().getLongestCallDuration(), new CallData(CallState.ON_CONFERENCE));
        } else {
            m30763a((Phone) null, (SimManager.SimId) null, false, -1L, new CallData(CallState.PRE_CALL));
        }
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        EventBus eventBus = this.presentersContainer.getEventBus();
        if (eventBus != null) {
            eventBus.m29045b(RecorderStateListener.f23132b, this.f22236aa);
            eventBus.m29045b(CallDetailsListener.f26069d, this);
            eventBus.m29045b(ShowKeypadListener.f23137d, this);
            eventBus.m29045b(ThemeChangedListener.f23141i, this);
        }
        AudioModeProvider.get().m28968b(this);
        CallAppApplication.get().m31861c(this.f22239ad);
        CallAppApplication.get().m31861c(this.f22238ac);
        CallAppApplication.get().m31861c(this.f22237ab);
        this.f22242e = null;
        this.f22209A = null;
        this.f22243f = null;
        this.f22244g = null;
        this.f22245h = null;
        this.f22246j = null;
        this.f22247k = null;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(boolean z) {
        m30772a((View) this.f22256t, true, true, z, z ? 2131231712 : 2131231711);
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public void onResume() {
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            m30759b();
        }
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            this.f22214F.setEnabled(false);
            m30744e();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$s0VPx2g_O05pyw4V0QMsTTGhOF4
            @Override // java.lang.Runnable
            public final void run() {
                CallBarPresenter.this.m30742f();
            }
        });
    }

    public void setAudioRouteSelectorDialogListener(AudioRouteSelectorDialogListener audioRouteSelectorDialogListener) {
        this.f22228T = audioRouteSelectorDialogListener;
    }

    public void setForcePreCall(boolean z) {
        this.f22221M = z;
    }

    public void setHangButton(final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.6
            @Override // java.lang.Runnable
            public void run() {
                if (!z) {
                    if (!CallBarPresenter.this.f22230V) {
                        return;
                    }
                    CallBarPresenter.this.f22213E.setText((CharSequence) null);
                    CallBarPresenter.this.f22213E.setWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165589));
                    CallBarPresenter.this.f22213E.setHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165589));
                    CallBarPresenter.this.f22213E.setBackgroundResource(2131231707);
                    CallBarPresenter.this.f22214F.setVisibility(0);
                    CallBarPresenter.this.f22218J.setVisibility(0);
                    CallBarPresenter.this.f22230V = false;
                } else if (CallBarPresenter.this.f22230V) {
                } else {
                    CallBarPresenter.this.m30762a(false);
                    CallBarPresenter.this.f22213E.setWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165590));
                    CallBarPresenter.this.f22213E.setHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165589));
                    CallBarPresenter.this.f22213E.setText(Activities.getText(2131886821));
                    CallBarPresenter.this.f22213E.setBackgroundResource(2131231013);
                    CallBarPresenter.this.f22214F.setVisibility(8);
                    CallBarPresenter.this.f22218J.setVisibility(8);
                    CallBarPresenter.this.f22230V = true;
                }
            }
        });
    }

    public void setRecorderTestListener(RecorderTestListener recorderTestListener) {
        this.f22229U = recorderTestListener;
    }
}
