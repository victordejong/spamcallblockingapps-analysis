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
import androidx.core.e.b;
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
    private ImageView A;
    private ImageView B;
    private ImageView C;
    private ImageView D;
    private TextView E;
    private View F;
    private View G;
    private int[] H;
    private TextView I;
    private View J;
    private boolean L;
    private boolean M;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private Animation S;
    private AudioRouteSelectorDialogListener T;
    private RecorderTestListener U;
    private boolean V;
    private ValueAnimator W;
    private boolean X;

    /* renamed from: a  reason: collision with root package name */
    public TextView f12384a;

    /* renamed from: b  reason: collision with root package name */
    public TextView f12385b;

    /* renamed from: c  reason: collision with root package name */
    public TextView f12386c;
    private View e;
    private View f;
    private TextView g;
    private TextView h;
    private TextView j;
    private LinearLayout k;
    private FrameLayout l;
    private RelativeLayout m;
    private ImageView n;
    private ImageView o;
    private long p;
    private AlphaAnimation q;
    private View r;
    private View s;
    private ImageView t;
    private CardView u;
    private View v;
    private ImageView w;
    private ImageView x;
    private ImageView y;
    private ImageView z;
    private final int K = 1000;
    private boolean N = false;
    private CallBarState Y = CallBarState.OPEN;
    private boolean Z = false;
    private final RecorderStateListener aa = new RecorderStateListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.1
        @Override // com.callapp.contacts.activity.interfaces.RecorderStateListener
        public void a(final Bundle bundle) {
            if (bundle != null) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorderManager.RecordingState recordingState = CallRecorderManager.RecordingState.values()[bundle.getInt("RECORDER_STATE", 0)];
                        if (ViewUtils.a(CallBarPresenter.this.l)) {
                            CallBarPresenter.this.setRecorderIcon(recordingState);
                        }
                        if (recordingState == CallRecorderManager.RecordingState.RECORDING && Prefs.eH.get().booleanValue() && !CallBarPresenter.this.N) {
                            CallBarPresenter.this.N = true;
                            RetentionAnalytics.get();
                            RetentionAnalytics.b();
                        }
                    }
                });
            }
        }
    };
    private final Runnable ab = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.2
        @Override // java.lang.Runnable
        public void run() {
            if (CallBarPresenter.this.g != null && CallBarPresenter.this.p > 0) {
                CallBarPresenter.this.g.setText(DateUtils.b((int) ((System.currentTimeMillis() - CallBarPresenter.this.p) / 1000)));
                CallAppApplication.get().a(this, 1000L);
            }
        }
    };
    private final Runnable ac = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.3
        @Override // java.lang.Runnable
        public void run() {
            if (CallBarPresenter.this.F != null && CallBarPresenter.this.A != null) {
                CallBarPresenter.this.A.setAlpha(1.0f);
                CallBarPresenter.this.F.setEnabled(true);
            }
        }
    };
    private final Runnable ad = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.4

        /* renamed from: a  reason: collision with root package name */
        int f12407a = 0;

        @Override // java.lang.Runnable
        public void run() {
            String string = Activities.getString((!Prefs.gk.get().booleanValue() || !CallBarPresenter.this.Z) ? 2131886743 : 2131887580);
            for (int i = 0; i < this.f12407a; i++) {
                string = string + ".";
            }
            if (CallBarPresenter.this.j != null) {
                CallBarPresenter.this.j.setText(string);
                this.f12407a++;
            }
            if (this.f12407a % 4 == 0) {
                this.f12407a = 0;
            }
            CallAppApplication.get().a(CallBarPresenter.this.ad, 1000L);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter$16  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$16.class */
    public static /* synthetic */ class AnonymousClass16 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12404a;

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
            f12404a = iArr;
            try {
                iArr[CallState.CONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12404a[CallState.RINGING_OUTGOING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12404a[CallState.TALKING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12404a[CallState.ON_HOLD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12404a[CallState.RINGING_INCOMING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12404a[CallState.POST_CALL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12404a[CallState.PRE_CALL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f12404a[CallState.DISCONNECTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f12404a[CallState.ON_CONFERENCE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState.class */
    public enum CallBarState {
        OPEN,
        CLOSE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(final View view) {
        AndroidUtils.a(view, 1);
        PermissionManager.get();
        if (!PermissionManager.a("android.permission.RECORD_AUDIO")) {
            PermissionManager.get().a((BaseActivity) this.presentersContainer.getRealContext(), new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$CMLSxufXu9akUrhoVPHw3Fa0HZ4
                @Override // java.lang.Runnable
                public final void run() {
                    CallBarPresenter.this.b(view);
                }
            }, _$$Lambda$CallBarPresenter$tIDuoH0x2bRJ8OgItdLp6LzyNfw.INSTANCE, PermissionManager.PermissionGroup.MICROPHONE);
            return;
        }
        CallRecorderManager.get().b();
        this.l.setEnabled(false);
        this.o.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099890), PorterDuff.Mode.SRC_IN));
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.13
            @Override // java.lang.Runnable
            public void run() {
                CallBarPresenter.this.l.setEnabled(true);
                CallBarPresenter.this.o.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            }
        }, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final View view, boolean z, final boolean z2, final boolean z3, final int i) {
        if (ViewUtils.a(view)) {
            ViewUtils.b(view, z);
            ViewUtils.c(view, z2);
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.14
                @Override // java.lang.Runnable
                public void run() {
                    if (z3) {
                        ((ImageView) view).setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099708), PorterDuff.Mode.SRC_IN));
                    } else if (z2) {
                        ((ImageView) view).setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100140), PorterDuff.Mode.SRC_IN));
                    } else {
                        ((ImageView) view).setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099917), PorterDuff.Mode.SRC_IN));
                    }
                    int i2 = i;
                    if (i2 != 0) {
                        ((ImageView) view).setImageResource(i2);
                    }
                }
            });
        }
    }

    private void a(Phone phone, SimManager.SimId simId, long j, boolean z, CallData callData) {
        this.p = j;
        if (!ViewUtils.a(this.f)) {
            View findViewById = this.presentersContainer.findViewById(2131363054);
            this.f = findViewById;
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099785));
            this.g = (TextView) this.presentersContainer.findViewById(2131362660);
            this.j = (TextView) this.presentersContainer.findViewById(2131362662);
            this.h = (TextView) this.presentersContainer.findViewById(2131362661);
            this.I = (TextView) this.f.findViewById(2131362662);
            if (Build.VERSION.SDK_INT >= 23) {
                setCallTextMargin(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166048));
            }
        }
        boolean z2 = false;
        if (simId != null) {
            if (!ViewUtils.a(this.k)) {
                this.k = (LinearLayout) ViewUtils.b(this.presentersContainer.findViewById(2131362664));
            }
            ImageUtils.a((ImageView) this.k.findViewById(2131362663), SimManager.b(simId), (ColorFilter) null);
            ViewUtils.a((View) this.k, true);
        } else if (ViewUtils.a(this.k)) {
            ViewUtils.a((View) this.k, false);
        }
        if (CallRecorderManager.get().a(z) && !callData.getState().isPreCall()) {
            if (!ViewUtils.a(this.l)) {
                FrameLayout frameLayout = (FrameLayout) ((ViewStub) this.presentersContainer.findViewById(2131363642)).inflate();
                this.l = frameLayout;
                ViewUtils.a(frameLayout, Integer.valueOf(ThemeUtils.getColor(2131099686)), Integer.valueOf(ThemeUtils.getColor(2131099784)));
                this.m = (RelativeLayout) this.l.findViewById(2131363638);
                TextView textView = (TextView) this.l.findViewById(2131363623);
                textView.setText(Activities.getString(2131887492));
                textView.setTextColor(ThemeUtils.getColor(2131100140));
                this.n = (ImageView) this.l.findViewById(2131363652);
                ImageView imageView = (ImageView) this.l.findViewById(2131363277);
                this.o = imageView;
                imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
                i();
                View view = this.f;
                view.setPadding(view.getPaddingLeft(), this.f.getPaddingTop(), (int) CallAppApplication.get().getResources().getDimension(2131165688), this.f.getPaddingBottom());
                setRecorderIcon(CallRecorderManager.get().isRecording() ? CallRecorderManager.RecordingState.RECORDING : CallRecorderManager.get().b(z) ? CallRecorderManager.RecordingState.PRE_RECORD : CallRecorderManager.RecordingState.IDLE);
            }
            this.l.setOnClickListener(this);
            ViewUtils.a((View) this.l, true);
        } else if (ViewUtils.a(this.l)) {
            ViewUtils.a((View) this.l, false);
        }
        int i = AnonymousClass16.f12404a[callData.getState().ordinal()];
        if (i == 1 || i == 2) {
            if (PhoneManager.get().isDefaultPhoneApp() && !this.L) {
                ViewUtils.a(this.h, "");
                ViewUtils.a(this.j, "");
                CallAppApplication.get().c(this.ad);
                CallAppApplication.get().b(this.ad);
                this.L = true;
            }
        } else if (i == 3 || i == 4) {
            if (phone != null) {
                CallAppApplication.get().c(this.ad);
                ViewUtils.a(this.j, PhoneNumberUtils.a(phone));
                ViewUtils.a(this.h, phone.e());
            }
        } else if (i == 9) {
            ViewUtils.a(this.j, "");
            ViewUtils.a(this.h, Activities.getString(2131886626));
        }
        CallAppApplication.get().b(this.ab);
        ViewUtils.a(this.f, true);
        TextView textView2 = this.g;
        if (j > 0) {
            z2 = true;
        }
        ViewUtils.a(textView2, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Phone phone, SimManager.SimId simId, boolean z, long j, CallData callData) {
        getRootView();
        View view = this.e;
        if (view != null) {
            if (view.getAnimation() != null) {
                this.e.clearAnimation();
            }
            ViewUtils.a(this.e, true);
            if (!PhoneManager.get().isDefaultPhoneApp()) {
                b();
                if (!z) {
                    j = -1;
                }
            }
            a(phone, simId, j, z, callData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.J != null) {
            getPresentersContainer().getEventBus().a((EventType<L, EventType<DialpadToggleListener, DialpadToggleListener.ToggleDialpadEvent>>) DialpadToggleListener.f12941a, (EventType<DialpadToggleListener, DialpadToggleListener.ToggleDialpadEvent>) new DialpadToggleListener.ToggleDialpadEvent(z, true, this.J.getHeight(), this.J.getWidth()), false);
            ViewUtils.a(this.J, !z);
            ViewUtils.a(this.G, z);
        }
    }

    private void a(final boolean z, final boolean z2) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.11
            @Override // java.lang.Runnable
            public void run() {
                if (ViewUtils.a(CallBarPresenter.this.e)) {
                    CallBarPresenter.u(CallBarPresenter.this);
                    if (!PhoneManager.get().isDefaultPhoneApp() || (CallBarPresenter.this.J.getVisibility() != 0 && !z2)) {
                        CallBarPresenter.this.d();
                    } else {
                        CallBarPresenter.this.a(false);
                    }
                    CallBarPresenter.this.setCallBarCloseAnimation(z);
                }
            }
        });
    }

    private void a(int[] iArr) {
        boolean[] a2 = ArrayUtils.a(iArr);
        boolean equals = Arrays.equals(Constants.CALL_ON_HOLD, a2);
        if (a2.length != 3) {
            CLog.a(CallBarPresenter.class, "wrong size off call state array");
            return;
        }
        if (Arrays.equals(Constants.CALL_ACTIVE, a2) || equals) {
            a((View) this.x, true, true, false, 0);
            a((View) this.w, true, true, equals, equals ? 2131231714 : 2131231713);
            a((View) this.z, false, false, false, 0);
            a((View) this.y, false, false, false, 0);
        } else if (!Arrays.equals(Constants.CALL_BEFORE_MERGE, a2)) {
            a((View) this.x, true, false, false, 0);
            a((View) this.w, true, false, equals, 2131231713);
            a((View) this.z, false, false, false, 0);
            a((View) this.y, false, false, false, 0);
        } else if (PhoneStateManager.get().shouldConferenceScreenAppear()) {
            a((View) this.x, false, false, false, 0);
            a((View) this.w, false, false, equals, 2131231713);
            a((View) this.z, true, true, false, 0);
            a((View) this.y, true, false, false, 0);
        } else {
            if (iArr[1] == 6) {
                a((View) this.y, true, false, false, 0);
            } else {
                a((View) this.y, true, true, false, 0);
            }
            a((View) this.x, false, false, false, 0);
            a((View) this.w, false, false, equals, 2131231713);
            a((View) this.z, true, true, false, 0);
        }
        a((View) this.t, true, true, AudioModeProvider.get().getMute(), AudioModeProvider.get().getMute() ? 2131231712 : 2131231711);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(CallBarState callBarState, boolean z) {
        this.Y = callBarState;
        ValueAnimator valueAnimator = this.W;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final int height = this.r.getHeight();
        int i = callBarState == CallBarState.OPEN ? ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN : ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
        if (height != i) {
            final boolean z2 = i > height;
            ValueAnimator a2 = CallappAnimationUtils.a(this.r, height, i, CallappAnimationUtils.f16119d, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.15
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float f;
                    float animatedFraction = valueAnimator2.getAnimatedFraction();
                    float f2 = ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
                    float f3 = (height - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED) / f2;
                    if (z2) {
                        f = f3 + (((ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN - height) / f2) * animatedFraction);
                        CallBarPresenter.this.D.setVisibility(4);
                        CallBarPresenter.this.B.setVisibility(4);
                        CallBarPresenter.this.C.setVisibility(4);
                        CallBarPresenter callBarPresenter = CallBarPresenter.this;
                        callBarPresenter.setDialogVisibility(callBarPresenter.X);
                    } else {
                        f = f3 - (((height - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED) / f2) * animatedFraction);
                        CallBarPresenter.this.D.setVisibility(0);
                        CallBarPresenter.this.B.setVisibility(0);
                        CallBarPresenter.this.C.setVisibility(0);
                        int a3 = ThemeUtils.a(CallAppApplication.get(), 2131099708);
                        int a4 = ThemeUtils.a(CallAppApplication.get(), 2131099923);
                        CallBarPresenter.this.D.setColorFilter(new PorterDuffColorFilter(AudioModeProvider.get().getMute() ? a3 : a4, PorterDuff.Mode.SRC_IN));
                        CallBarPresenter.this.B.setColorFilter(new PorterDuffColorFilter(CallBarPresenter.this.isOnHold() ? a3 : a4, PorterDuff.Mode.SRC_IN));
                        ImageView imageView = CallBarPresenter.this.C;
                        if (CallBarPresenter.this.isMerge()) {
                            a4 = a3;
                        }
                        imageView.setColorFilter(new PorterDuffColorFilter(a4, PorterDuff.Mode.SRC_IN));
                        CallBarPresenter.this.setDialogVisibility(false);
                    }
                    CallBarPresenter.this.t.setScaleX(f);
                    CallBarPresenter.this.t.setScaleY(f);
                    CallBarPresenter.this.w.setScaleX(f);
                    CallBarPresenter.this.w.setScaleY(f);
                    CallBarPresenter.this.x.setScaleX(f);
                    CallBarPresenter.this.x.setScaleY(f);
                    CallBarPresenter.this.y.setScaleX(f);
                    CallBarPresenter.this.y.setScaleY(f);
                    CallBarPresenter.this.z.setScaleX(f);
                    CallBarPresenter.this.z.setScaleY(f);
                }
            });
            this.W = a2;
            if (!z) {
                a2.setDuration(0L);
            }
            this.W.start();
        }
    }

    private void b(CallData callData) {
        if (!callData.isCallWaiting()) {
            b();
            a(false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (z) {
            this.X = true;
            this.u.setCardBackgroundColor(ThemeUtils.getColor(2131099784));
            setDialogVisibility(true);
            return;
        }
        this.X = false;
        setDialogVisibility(false);
    }

    public static void c() {
        PhoneManager.get();
        PhoneManager.b(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.ACTIVITY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        if (PhoneManager.get().isDefaultPhoneApp()) {
            AndroidUtils.a(view, 1);
            g();
            return;
        }
        AndroidUtils.a(view, 1);
        if (!PhoneManager.get().h() && !this.presentersContainer.isFinishing()) {
            AndroidUtils.a(view, 1);
            this.presentersContainer.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        a(false);
        AndroidUtils.a(view, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        ImageView imageView;
        View findViewById = this.presentersContainer.findViewById(2131362205);
        ViewUtils.a(this.presentersContainer.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
        ViewUtils.b(findViewById, ThemeUtils.getColor(2131099878));
        View view = this.r;
        if (view != null) {
            ViewUtils.b(view, ThemeUtils.getColor(2131099878));
        }
        View view2 = this.J;
        if (!(view2 == null || (imageView = (ImageView) view2.findViewById(2131362569)) == null)) {
            imageView.setColorFilter(ThemeUtils.getColor(2131099709), PorterDuff.Mode.SRC_IN);
        }
        ImageView imageView2 = (ImageView) this.presentersContainer.findViewById(2131363133);
        if (imageView2 != null) {
            imageView2.setColorFilter(ThemeUtils.getColor(2131099709), PorterDuff.Mode.SRC_IN);
        }
        b();
        a(this.H);
        if (ViewUtils.a(this.l)) {
            ViewUtils.a(this.l, Integer.valueOf(ThemeUtils.getColor(2131099686)), Integer.valueOf(ThemeUtils.getColor(2131099784)));
        }
        View view3 = this.s;
        if (view3 != null) {
            view3.setBackgroundColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099921 : 2131099922));
        }
    }

    private void g() {
        this.O = false;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getRootView() {
        int[] iArr;
        b<Boolean, View> c2 = ViewUtils.c(this.e);
        this.e = c2.f1890b;
        if (!c2.f1889a.booleanValue()) {
            View findViewById = this.presentersContainer.findViewById(2131363067);
            this.r = findViewById;
            if (findViewById != null) {
                this.u = (CardView) findViewById.findViewById(2131363166);
                this.v = this.r.findViewById(2131362983);
                this.t = (ImageView) this.r.findViewById(2131363046);
                this.w = (ImageView) this.r.findViewById(2131363038);
                this.x = (ImageView) this.r.findViewById(2131363031);
                this.y = (ImageView) this.r.findViewById(2131363045);
                this.z = (ImageView) this.r.findViewById(2131363051);
                this.B = (ImageView) this.r.findViewById(2131362974);
                this.C = (ImageView) this.r.findViewById(2131361981);
                this.D = (ImageView) this.r.findViewById(2131363343);
                if (Build.VERSION.SDK_INT < 23) {
                    ViewUtils.a(this.r, false);
                } else if (PhoneManager.get().isDefaultSystemPhoneApp()) {
                    this.r.setOnClickListener(this);
                    this.x.setOnClickListener(this);
                    this.y.setOnClickListener(this);
                    this.t.setOnClickListener(this);
                    this.w.setOnClickListener(this);
                    this.z.setOnClickListener(this);
                    this.B.setOnClickListener(this);
                    this.C.setOnClickListener(this);
                    this.D.setOnClickListener(this);
                    a((View) this.t, true, true, AudioModeProvider.get().getMute(), 2131231711);
                    a((View) this.w, true, false, false, 2131231713);
                    a((View) this.x, true, false, false, 2131231705);
                } else {
                    a((View) this.t, true, false, false, 2131231711);
                    a((View) this.w, true, false, false, 2131231713);
                    a((View) this.x, true, false, false, 2131231705);
                    TextView textView = (TextView) this.r.findViewById(2131362543);
                    this.f12384a = textView;
                    textView.setText(Activities.getString(2131888091));
                    TextView textView2 = (TextView) this.r.findViewById(2131362542);
                    this.f12385b = textView2;
                    textView2.setText(Activities.getString(2131887338));
                    this.f12385b.setTextColor(ThemeUtils.getColor(2131099784));
                    this.f12385b.setOnClickListener(this);
                    TextView textView3 = (TextView) this.r.findViewById(2131362541);
                    this.f12386c = textView3;
                    textView3.setText(Activities.getString(2131886777));
                    this.f12386c.setOnClickListener(this);
                }
            }
            if (PhoneManager.get().isDefaultPhoneApp() && (iArr = this.H) != null) {
                onCallDetailsChanged(iArr);
            }
            this.J = this.presentersContainer.findViewById(2131362570);
            this.s = this.presentersContainer.findViewById(2131362203);
            View findViewById2 = this.presentersContainer.findViewById(2131362147);
            this.G = findViewById2;
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$IoZcUo_s5NpRLe80owr_ag_RAqA
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CallBarPresenter.this.d(view);
                    }
                });
            }
            ViewUtils.a(this.presentersContainer.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
            View view = this.J;
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$yz39sZiK95KowAbNhXt5hnnMwQM
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CallBarPresenter.this.c(view2);
                    }
                });
            }
            this.E = (TextView) this.presentersContainer.findViewById(2131362702);
            FrameLayout frameLayout = (FrameLayout) this.presentersContainer.findViewById(2131362703);
            if (this.E != null) {
                frameLayout.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.5
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view2) {
                        AndroidUtils.a(view2, 1);
                        if (!RecorderTestManager.get().isInRecorderTestMode() || CallBarPresenter.this.U == null) {
                            CallBarPresenter.this.a();
                        } else {
                            CallBarPresenter.this.U.a();
                        }
                    }
                });
            }
            this.F = this.presentersContainer.findViewById(2131363941);
            this.A = (ImageView) this.presentersContainer.findViewById(2131363940);
            View view2 = this.F;
            if (view2 != null) {
                view2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.7
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view3) {
                        AndroidUtils.a(view3, 1);
                        new Task() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.7.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                if (Build.VERSION.SDK_INT < 23 || !AudioModeProvider.get().isMoreThenOneBluetoothDevices()) {
                                    PhoneManager.get().b(CallBarPresenter.this.presentersContainer.getRealContext());
                                } else {
                                    CallBarPresenter.this.T.a();
                                }
                                if (!PhoneManager.get().isDefaultPhoneApp()) {
                                    CallBarPresenter.this.b();
                                    ProximityManager.get().b();
                                }
                            }
                        }.execute();
                        CallBarPresenter.this.A.setAlpha(0.8f);
                        CallBarPresenter.this.F.setEnabled(false);
                        CallAppApplication.get().a(CallBarPresenter.this.ac, 1000L);
                    }
                });
            }
            if (this.O) {
                g();
            }
            f();
        }
    }

    private void h() {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.9
            @Override // java.lang.Runnable
            public void run() {
                CallBarPresenter.this.getRootView();
                if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
                    Integer num = Prefs.f.get();
                    boolean z = num.intValue() == 2;
                    boolean z2 = num.intValue() == 75;
                    if ((num.intValue() == 250) || (z | z2 | (num.intValue() == 150))) {
                        CallBarPresenter.this.b(true);
                        return;
                    }
                }
                CallBarPresenter.this.b(false);
            }
        });
    }

    private void i() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.4f, 1.0f);
        this.q = alphaAnimation;
        alphaAnimation.setDuration(250L);
        this.q.setRepeatCount(-1);
        this.q.setRepeatMode(2);
        this.q.setStartOffset(1000L);
    }

    private boolean isKeypadOpen() {
        return this.J.getVisibility() == 8 && this.G.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCallBarCloseAnimation(boolean z) {
        if (PhoneStateManager.get().isIncomingCallRingingState() || !z) {
            ViewUtils.a(this.e, false);
        } else if (this.S == null) {
            Animation loadAnimation = AnimationUtils.loadAnimation(this.presentersContainer.getRealContext(), 2130771992);
            this.S = loadAnimation;
            loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.12
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    ViewUtils.a(CallBarPresenter.this.e, false);
                    CallBarPresenter.this.S = null;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            this.e.startAnimation(this.S);
        }
    }

    private void setCallTextMargin(int i) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.I.getLayoutParams();
        layoutParams.setMargins(i, 0, 0, 0);
        ViewUtils.a(this.I, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDialogVisibility(boolean z) {
        if (z) {
            this.u.setVisibility(0);
            this.v.setVisibility(8);
            return;
        }
        this.v.setVisibility(0);
        this.u.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecorderIcon(CallRecorderManager.RecordingState recordingState) {
        if (ViewUtils.a(this.l) && this.l.getVisibility() == 0) {
            if (recordingState == CallRecorderManager.RecordingState.RECORDING) {
                ViewUtils.b((View) this.o, false);
                ViewUtils.b((View) this.m, true);
                this.n.setAlpha(1.0f);
                this.n.startAnimation(this.q);
            } else if (recordingState == CallRecorderManager.RecordingState.PRE_RECORD) {
                ViewUtils.b((View) this.o, false);
                ViewUtils.b((View) this.m, true);
                this.n.setAlpha(0.4f);
                AlphaAnimation alphaAnimation = this.q;
                if (alphaAnimation != null) {
                    alphaAnimation.cancel();
                }
                this.n.setAnimation(null);
            } else {
                ViewUtils.b((View) this.o, true);
                ViewUtils.b((View) this.m, false);
                AlphaAnimation alphaAnimation2 = this.q;
                if (alphaAnimation2 != null) {
                    alphaAnimation2.cancel();
                }
                this.n.setAnimation(null);
            }
        }
    }

    static /* synthetic */ void u(CallBarPresenter callBarPresenter) {
        CallAppApplication.get().c(callBarPresenter.ab);
        callBarPresenter.p = -1L;
    }

    public final void a() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(1500L);
        this.E.startAnimation(alphaAnimation);
        PhoneManager phoneManager = PhoneManager.get();
        if (PhoneManager.get().isDefaultPhoneApp()) {
            phoneManager.a();
        } else if (!phoneManager.a() && !phoneManager.h() && !this.presentersContainer.isFinishing()) {
            this.presentersContainer.finish();
        }
    }

    public final void a(Context context) {
        boolean b2 = PhoneManager.get().b();
        this.Q = b2;
        a((View) this.w, true, true, b2, b2 ? 2131231714 : 2131231713);
        if (this.Q) {
            FeedbackManager.get().a(2131231713, context);
        }
    }

    public final void a(final CallBarState callBarState, final boolean z) {
        if (isInCallMode() && this.r != null && this.Y != callBarState) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$iM3TvnRKKHIzeQzeOW41YoSZntA
                @Override // java.lang.Runnable
                public final void run() {
                    CallBarPresenter.this.b(callBarState, z);
                }
            });
        }
    }

    public final void a(final CallData callData) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.10
            @Override // java.lang.Runnable
            public void run() {
                CallBarPresenter.this.a(callData.getNumber(), callData.getSimId(), callData.isIncoming(), callData.getTalkingStartTime(), callData);
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.ShowKeypadListener
    public void a(Boolean bool) {
        if (!ViewUtils.a(this.e)) {
            this.O = bool.booleanValue();
        } else if (!isKeypadOpen()) {
            g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
        if (com.callapp.contacts.manager.phone.PhoneManager.get().isSpeakerOn() != false) goto L_0x0029;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r0 != 8) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        r9 = true;
        r10 = 2131231716;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
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
            if (r0 == 0) goto L_0x0032
            com.callapp.contacts.inCallService.AudioModeProvider r0 = com.callapp.contacts.inCallService.AudioModeProvider.get()
            int r0 = r0.getAudioMode()
            r11 = r0
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x0038
            r0 = r11
            r1 = 8
            if (r0 == r1) goto L_0x0029
            goto L_0x004d
        L_0x0029:
            r0 = 1
            r9 = r0
            r0 = 2131231716(0x7f0803e4, float:1.807952E38)
            r10 = r0
            goto L_0x004d
        L_0x0032:
            boolean r0 = com.callapp.contacts.manager.phone.BluetoothHeadsetConnectivityManager.isUsingBT()
            if (r0 == 0) goto L_0x0041
        L_0x0038:
            r0 = 1
            r9 = r0
            r0 = 2131231706(0x7f0803da, float:1.80795E38)
            r10 = r0
            goto L_0x004d
        L_0x0041:
            com.callapp.contacts.manager.phone.PhoneManager r0 = com.callapp.contacts.manager.phone.PhoneManager.get()
            boolean r0 = r0.isSpeakerOn()
            if (r0 == 0) goto L_0x004d
            goto L_0x0029
        L_0x004d:
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
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.b():void");
    }

    public final boolean d() {
        View findViewById = this.presentersContainer.findViewById(2131362147);
        boolean z = findViewById != null && findViewById.isShown();
        if (z) {
            findViewById.performClick();
        }
        return z;
    }

    public final void e() {
        a((View) this.t, true, false, false, 2131231711);
        a((View) this.x, true, false, false, 0);
        a((View) this.w, true, false, false, 2131231713);
        a((View) this.z, false, false, false, 0);
        a((View) this.y, false, false, false, 0);
    }

    public boolean isInCallMode() {
        View view = this.e;
        return view != null && view.getVisibility() == 0;
    }

    public boolean isMerge() {
        return this.R;
    }

    public boolean isOnHold() {
        return this.Q;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(int i) {
        b();
    }

    @Override // com.callapp.contacts.manager.phone.CallDetailsListener
    public void onCallDetailsChanged(int[] iArr) {
        if (!ViewUtils.a(this.r)) {
            this.H = iArr;
            return;
        }
        this.H = iArr;
        if (!RecorderTestManager.get().isInRecorderTestMode()) {
            a(iArr);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            int i = AnonymousClass16.f12404a[callData.getState().ordinal()];
            if (i == 2 || i == 3) {
                h();
                a(callData);
            } else if (i == 6) {
                h();
                if (!Phone.f17100b.equals(callData.getNumber())) {
                    b(callData);
                }
            } else if (i == 7) {
                b(callData);
            }
        } else if (PhoneStateManager.get().getConferenceManager() == null || callData.getState().isPostCall() || (!PhoneStateManager.get().shouldConferenceScreenAppear() && !PhoneStateManager.get().isCallDataInsideConference(callData))) {
            boolean z = true;
            switch (AnonymousClass16.f12404a[callData.getState().ordinal()]) {
                case 1:
                case 2:
                    if (callData.getState() != CallState.RINGING_OUTGOING) {
                        z = false;
                    }
                    this.Z = z;
                    if (!this.L) {
                        if (this.J != null && callData.isVoiceMail()) {
                            g();
                            break;
                        }
                    } else {
                        return;
                    }
                    break;
                case 3:
                    break;
                case 4:
                    if (PhoneStateManager.get().getCallListSize() == 1) {
                        a(callData);
                        return;
                    }
                    return;
                case 5:
                    a(false);
                    a(false, false);
                    return;
                case 6:
                    this.Z = false;
                    CallAppApplication.get().c(this.ad);
                    a(true, true);
                    this.L = false;
                    this.H = null;
                    this.U = null;
                    return;
                case 7:
                    b(callData);
                    return;
                case 8:
                    this.L = false;
                    return;
                default:
                    return;
            }
            this.L = false;
            a(callData);
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AndroidUtils.a(compoundButton, 1);
        if (z) {
            ViewUtils.b(this.r, true);
            if (!PhoneManager.get().isDefaultPhoneApp()) {
                e();
                ViewUtils.b((View) this.f12385b, true);
                return;
            }
            ViewUtils.b((View) this.f12385b, false);
            return;
        }
        ViewUtils.b(this.r, false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RecorderTestListener recorderTestListener;
        AndroidUtils.a(view, 1);
        switch (view.getId()) {
            case 2131361981:
            case 2131362974:
            case 2131363067:
            case 2131363343:
                a(CallBarState.OPEN, true);
                return;
            case 2131362541:
                b(false);
                return;
            case 2131362542:
                this.presentersContainer.getEventBus().a((EventType<L, EventType<DefaultDialer, EventBusManager.CallAppDataType>>) DefaultDialer.f12940a, (EventType<DefaultDialer, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.SET_AS_DEFAULT_PHONE, false);
                return;
            case 2131363031:
                PhoneManager.get();
                PhoneManager.a(getPresentersContainer().getRealContext());
                AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Add call");
                return;
            case 2131363038:
                a(getPresentersContainer().getRealContext());
                AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Hold");
                return;
            case 2131363045:
                this.R = PhoneManager.a(PhoneManager.get().getActiveOrBackgroundCall(), PhoneStateManager.CallActionSource.ACTIVITY);
                AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Merge");
                return;
            case 2131363046:
                this.P = AudioModeProvider.get().getMute();
                PhoneManager.get();
                PhoneManager.a(!this.P);
                if (!this.P) {
                    FeedbackManager.get().a(2131231711, getPresentersContainer().getRealContext());
                }
                AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Mute");
                return;
            case 2131363051:
                c();
                AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Swap");
                return;
            case 2131363641:
                AndroidUtils.a(view, 1);
                if (!RecorderTestManager.get().isInRecorderTestMode() || (recorderTestListener = this.U) == null) {
                    b(view);
                    return;
                } else {
                    recorderTestListener.a();
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
        AudioModeProvider.get().a(this);
        EventBus eventBus = presentersContainer.getEventBus();
        if (eventBus != null) {
            eventBus.a(RecorderStateListener.f12958b, this.aa);
            eventBus.a(CallDetailsListener.f15120d, this);
            eventBus.a(ShowKeypadListener.f12963d, this);
            eventBus.a(ThemeChangedListener.i, this);
        }
        this.e = presentersContainer.findViewById(2131362204);
        if (this.M || PhoneStateManager.get().getCallListSize() <= 0 || PhoneStateManager.get().isIncomingCallRingingState()) {
            a(false, false);
        } else if (presentersContainer.getContainerMode().equals(PresentersContainer.MODE.CONFERENCE_SCREEN)) {
            a((Phone) null, (SimManager.SimId) null, false, PhoneStateManager.get().getLongestCallDuration(), new CallData(CallState.ON_CONFERENCE));
        } else {
            a((Phone) null, (SimManager.SimId) null, false, -1L, new CallData(CallState.PRE_CALL));
        }
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        EventBus eventBus = this.presentersContainer.getEventBus();
        if (eventBus != null) {
            eventBus.b(RecorderStateListener.f12958b, this.aa);
            eventBus.b(CallDetailsListener.f15120d, this);
            eventBus.b(ShowKeypadListener.f12963d, this);
            eventBus.b(ThemeChangedListener.i, this);
        }
        AudioModeProvider.get().b(this);
        CallAppApplication.get().c(this.ad);
        CallAppApplication.get().c(this.ac);
        CallAppApplication.get().c(this.ab);
        this.e = null;
        this.A = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.j = null;
        this.k = null;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(boolean z) {
        a((View) this.t, true, true, z, z ? 2131231712 : 2131231711);
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public void onResume() {
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            b();
        }
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            this.F.setEnabled(false);
            e();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter._$$Lambda$CallBarPresenter$s0VPx2g_O05pyw4V0QMsTTGhOF4
            @Override // java.lang.Runnable
            public final void run() {
                CallBarPresenter.this.f();
            }
        });
    }

    public void setAudioRouteSelectorDialogListener(AudioRouteSelectorDialogListener audioRouteSelectorDialogListener) {
        this.T = audioRouteSelectorDialogListener;
    }

    public void setForcePreCall(boolean z) {
        this.M = z;
    }

    public void setHangButton(final boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter.6
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    if (!CallBarPresenter.this.V) {
                        CallBarPresenter.this.a(false);
                        CallBarPresenter.this.E.setWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165590));
                        CallBarPresenter.this.E.setHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165589));
                        CallBarPresenter.this.E.setText(Activities.getText(2131886821));
                        CallBarPresenter.this.E.setBackgroundResource(2131231013);
                        CallBarPresenter.this.F.setVisibility(8);
                        CallBarPresenter.this.J.setVisibility(8);
                        CallBarPresenter.this.V = true;
                    }
                } else if (CallBarPresenter.this.V) {
                    CallBarPresenter.this.E.setText((CharSequence) null);
                    CallBarPresenter.this.E.setWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165589));
                    CallBarPresenter.this.E.setHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165589));
                    CallBarPresenter.this.E.setBackgroundResource(2131231707);
                    CallBarPresenter.this.F.setVisibility(0);
                    CallBarPresenter.this.J.setVisibility(0);
                    CallBarPresenter.this.V = false;
                }
            }
        });
    }

    public void setRecorderTestListener(RecorderTestListener recorderTestListener) {
        this.U = recorderTestListener;
    }
}
