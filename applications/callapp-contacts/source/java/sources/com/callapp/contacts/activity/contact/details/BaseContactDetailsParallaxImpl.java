package com.callapp.contacts.activity.contact.details;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.AppBarCollapseObserver;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.header.ThemeChangeViewController;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.contacts.widget.ProfilePictureView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl.class */
public abstract class BaseContactDetailsParallaxImpl {

    /* renamed from: ab */
    private static final int f21629ab;

    /* renamed from: t */
    private static final int f21633t;

    /* renamed from: u */
    private static final int f21634u;

    /* renamed from: v */
    private static final float f21635v;

    /* renamed from: A */
    private ColorTransitionCalculator f21636A;

    /* renamed from: B */
    private ColorTransitionCalculator f21637B;

    /* renamed from: C */
    private ColorTransitionCalculator f21638C;

    /* renamed from: D */
    private ColorTransitionCalculator f21639D;

    /* renamed from: E */
    private ColorTransitionCalculator f21640E;

    /* renamed from: F */
    private ColorTransitionCalculator f21641F;

    /* renamed from: G */
    private final AppBarLayout f21642G;

    /* renamed from: H */
    private final TextView f21643H;

    /* renamed from: I */
    private final TextView f21644I;

    /* renamed from: J */
    private final View f21645J;

    /* renamed from: K */
    private final View f21646K;

    /* renamed from: L */
    private final FrameLayout f21647L;

    /* renamed from: M */
    private boolean f21648M;

    /* renamed from: O */
    private boolean f21650O;

    /* renamed from: P */
    private AppBarCollapseObserver f21651P;

    /* renamed from: Q */
    private final PositionChangedListener f21652Q;

    /* renamed from: R */
    private final ImageView f21653R;

    /* renamed from: S */
    private final ImageView f21654S;

    /* renamed from: T */
    private final View f21655T;

    /* renamed from: U */
    private final ImageView f21656U;

    /* renamed from: V */
    private final View f21657V;

    /* renamed from: W */
    private final View f21658W;

    /* renamed from: X */
    private final AbstractC1253j f21659X;

    /* renamed from: Z */
    private final Drawable f21661Z;

    /* renamed from: a */
    public final View f21662a;

    /* renamed from: ad */
    private ValueAnimator f21663ad;

    /* renamed from: ae */
    private float f21664ae;

    /* renamed from: ag */
    private float f21666ag;

    /* renamed from: ai */
    private FrameLayout f21668ai;

    /* renamed from: aj */
    private boolean f21669aj;

    /* renamed from: ak */
    private View f21670ak;

    /* renamed from: al */
    private CoordinatorLayoutObserverImpl f21671al;

    /* renamed from: b */
    protected final ImageView f21672b;

    /* renamed from: c */
    protected final ImageView f21673c;

    /* renamed from: d */
    protected final ImageView f21674d;

    /* renamed from: e */
    protected final CallAppCheckBox f21675e;

    /* renamed from: f */
    protected final ImageView f21676f;

    /* renamed from: g */
    protected final ImageView f21677g;

    /* renamed from: h */
    protected final ThemeChangeViewController f21678h;

    /* renamed from: i */
    protected final ProfilePictureView f21679i;

    /* renamed from: j */
    protected final PresentersContainer f21680j;

    /* renamed from: k */
    protected TextView f21681k;

    /* renamed from: l */
    protected LinearLayout f21682l;

    /* renamed from: m */
    protected final int f21683m;

    /* renamed from: n */
    protected final int f21684n;

    /* renamed from: o */
    protected final int f21685o;

    /* renamed from: p */
    protected final int f21686p;

    /* renamed from: q */
    protected TextView f21687q;

    /* renamed from: w */
    private BaseContactDetailsActivity.FlingListener f21688w;

    /* renamed from: x */
    private boolean f21689x;

    /* renamed from: y */
    private ColorTransitionCalculator f21690y;

    /* renamed from: z */
    private ColorTransitionCalculator f21691z;

    /* renamed from: r */
    private static final int f21631r = ThemeUtils.m27374c(getAppContext(), 2131952309);

    /* renamed from: s */
    private static final int f21632s = ThemeUtils.m27374c(getAppContext(), 2131951855);

    /* renamed from: aa */
    private static Position f21628aa = Position.SEMI_OPEN;

    /* renamed from: ac */
    private static final int f21630ac = getDimen(2131165425) - getDimen(2131165422);

    /* renamed from: N */
    private boolean f21649N = true;

    /* renamed from: Y */
    private ThemeState f21660Y = (ThemeState) Prefs.f26417di.get();

    /* renamed from: af */
    private boolean f21665af = false;

    /* renamed from: ah */
    private boolean f21667ah = false;

    /* renamed from: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4.class */
    public static /* synthetic */ class C61494 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21698a;

        /* renamed from: b */
        static final /* synthetic */ int[] f21699b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[Position.values().length];
            f21699b = iArr;
            try {
                iArr[Position.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21699b[Position.SEMI_OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21699b[Position.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[AppBarCollapseObserver.Range.values().length];
            f21698a = iArr2;
            try {
                iArr2[AppBarCollapseObserver.Range.LOW_TO_MID.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21698a[AppBarCollapseObserver.Range.MID_TO_HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl.class */
    public class CoordinatorLayoutObserverImpl implements AppBarCollapseObserver.CoordinatorLayoutObserver {

        /* renamed from: b */
        private AppBarCollapseObserver.Range f21701b = null;

        public CoordinatorLayoutObserverImpl() {
            BaseContactDetailsParallaxImpl.this = r4;
        }

        /* renamed from: b */
        public /* synthetic */ void m30966b(View view, AppBarCollapseObserver.Range range, float f) {
            float y = view.getY();
            AppBarCollapseObserver.Range range2 = this.f21701b;
            if (range2 != null && range2 != range) {
                int i = C61494.f21698a[this.f21701b.ordinal()];
                if (i == 1) {
                    mo30930b(BaseContactDetailsParallaxImpl.f21630ac, BitmapDescriptorFactory.HUE_RED);
                } else if (i == 2) {
                    mo30931a(BaseContactDetailsParallaxImpl.f21630ac, 1.0f);
                }
            }
            int i2 = C61494.f21698a[range.ordinal()];
            if (i2 == 1) {
                mo30930b(y, f);
            } else if (i2 == 2) {
                mo30931a(y, f);
            }
            this.f21701b = range;
        }

        /* renamed from: a */
        public void mo30931a(float f, float f2) {
            BaseContactDetailsParallaxImpl.this.f21664ae = f2;
            boolean z = true;
            BaseContactDetailsParallaxImpl.this.f21665af = true;
            int i = 0;
            BaseContactDetailsParallaxImpl.this.f21667ah = false;
            if (f2 == 1.0f) {
                if (BaseContactDetailsParallaxImpl.this.f21652Q != null) {
                    BaseContactDetailsParallaxImpl.this.f21652Q.mo30715a(Position.SEMI_OPEN);
                }
                if (!BaseContactDetailsParallaxImpl.this.f21689x || BaseContactDetailsParallaxImpl.this.f21648M) {
                    z = false;
                }
                Drawable drawable = BaseContactDetailsParallaxImpl.this.f21661Z;
                if (z) {
                    i = 175;
                }
                drawable.setAlpha(i);
            } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
                if (BaseContactDetailsParallaxImpl.this.f21652Q != null) {
                    BaseContactDetailsParallaxImpl.this.f21652Q.mo30715a(Position.OPEN);
                    BaseContactDetailsParallaxImpl.this.f21680j.getPositionChangedListener().mo30715a(Position.OPEN);
                }
                BaseContactDetailsParallaxImpl.this.f21661Z.setAlpha(175);
            } else {
                BaseContactDetailsParallaxImpl.this.f21680j.getPositionChangedListener().mo30715a(Position.CLOSED);
            }
            if (!BaseContactDetailsParallaxImpl.this.f21689x || BaseContactDetailsParallaxImpl.this.f21648M) {
                BaseContactDetailsParallaxImpl.this.f21661Z.setAlpha((int) ((1.0f - f2) * 175.0f));
            }
            BaseContactDetailsParallaxImpl.this.f21655T.setAlpha(f2);
            if (BaseContactDetailsParallaxImpl.this.f21644I != null) {
                if (BaseContactDetailsParallaxImpl.this.f21648M) {
                    BaseContactDetailsParallaxImpl.this.f21644I.setTextColor(BaseContactDetailsParallaxImpl.this.f21636A.m30946a(1.0f - f2));
                } else {
                    BaseContactDetailsParallaxImpl.this.f21644I.setTextColor(BaseContactDetailsParallaxImpl.this.f21638C.m30946a(1.0f - f2));
                }
            }
            if (BaseContactDetailsParallaxImpl.this.f21648M) {
                BaseContactDetailsParallaxImpl.this.f21643H.setTextColor(BaseContactDetailsParallaxImpl.this.f21636A.m30946a(1.0f - f2));
            } else {
                BaseContactDetailsParallaxImpl.this.f21643H.setTextColor(BaseContactDetailsParallaxImpl.this.f21691z.m30946a(1.0f - f2));
            }
            float f3 = 1.0f - f2;
            BaseContactDetailsParallaxImpl.this.f21681k.setTextColor(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21687q.setTextColor(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21687q.setHintTextColor(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21675e.setfilterColor(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21673c.setColorFilter(BaseContactDetailsParallaxImpl.this.f21640E.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21674d.setColorFilter(BaseContactDetailsParallaxImpl.this.f21641F.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21676f.setColorFilter(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21672b.setColorFilter(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21677g.setColorFilter(BaseContactDetailsParallaxImpl.this.f21639D.m30946a(f3));
            BaseContactDetailsParallaxImpl.this.f21645J.setAlpha(f2);
            if (BaseContactDetailsParallaxImpl.this.f21649N || BaseContactDetailsParallaxImpl.this.f21689x) {
                BaseContactDetailsParallaxImpl.this.f21647L.setAlpha(f3);
            } else {
                BaseContactDetailsParallaxImpl.this.f21647L.setAlpha((0.78f * f3) + 0.17f);
            }
            int dimen = BaseContactDetailsParallaxImpl.getDimen(2131165425);
            int height = BaseContactDetailsParallaxImpl.this.f21657V.getHeight();
            int dimen2 = BaseContactDetailsParallaxImpl.getDimen(BaseContactDetailsParallaxImpl.this.f21669aj ? 2131165559 : 2131165564);
            ViewUtils.m27287g(BaseContactDetailsParallaxImpl.this.f21670ak, BaseContactDetailsParallaxImpl.this.f21669aj ? -2 : CallAppApplication.get().getResources().getDimensionPixelSize(2131165421));
            float abs = ((dimen - height) - dimen2) + ((Math.abs(BaseContactDetailsParallaxImpl.f21630ac) + BaseContactDetailsParallaxImpl.getDimen(2131165554)) * f3);
            BaseContactDetailsParallaxImpl.this.f21657V.setY(abs);
            if (BaseContactDetailsParallaxImpl.this.f21689x) {
                BaseContactDetailsParallaxImpl.this.f21646K.setY(abs);
            } else {
                BaseContactDetailsParallaxImpl.this.f21646K.setAlpha(f3);
            }
        }

        @Override // com.callapp.contacts.activity.contact.details.AppBarCollapseObserver.CoordinatorLayoutObserver
        /* renamed from: a */
        public final void mo30967a(final View view, final AppBarCollapseObserver.Range range, final float f) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl$gTxNRGsQqZoWSULkjpGuR8HlyC0
                @Override // java.lang.Runnable
                public final void run() {
                    BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl.this.m30966b(view, range, f);
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x014a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0199  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0299  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x02a0  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x02bd  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x02c4  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x02f8  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x035f  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0377  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo30930b(float r7, float r8) {
            /*
                Method dump skipped, instructions count: 1120
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl.mo30930b(float, float):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position.class */
    public enum Position {
        CLOSED,
        SEMI_OPEN,
        OPEN;

        public static Position getClosestPosition(int i) {
            if (i < BaseContactDetailsParallaxImpl.f21629ab / 2) {
                Position unused = BaseContactDetailsParallaxImpl.f21628aa = CLOSED;
            } else if (i < AppBarCollapseObserver.getSemiHeight() + ((AppBarCollapseObserver.getFullHeight() - AppBarCollapseObserver.getSemiHeight()) / 2.0f)) {
                Position unused2 = BaseContactDetailsParallaxImpl.f21628aa = SEMI_OPEN;
            } else {
                Position unused3 = BaseContactDetailsParallaxImpl.f21628aa = OPEN;
            }
            return BaseContactDetailsParallaxImpl.f21628aa;
        }

        public static boolean isAboveMidHeight(int i) {
            return ((float) i) > AppBarCollapseObserver.getSemiHeight();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener.class */
    public interface PositionChangedListener {
        /* renamed from: a */
        void mo30715a(Position position);
    }

    static {
        int dimen = getDimen(2131165421);
        f21633t = dimen;
        int dimen2 = getDimen(2131165424);
        f21634u = dimen2;
        f21635v = 1.0f - (getDimen(2131165423) / dimen2);
        f21629ab = ((int) AppBarCollapseObserver.getSemiHeight()) + dimen;
    }

    public BaseContactDetailsParallaxImpl(PresentersContainer presentersContainer, View view, PositionChangedListener positionChangedListener, BaseContactDetailsActivity.FlingListener flingListener, boolean z, AbstractC1253j abstractC1253j, ThemeChangeViewController.contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        int screenHeight = Activities.getScreenHeight(Activities.getScreenOrientation()) - Activities.getStatusBarHeight();
        this.f21683m = screenHeight;
        int dimen = getDimen(2131165422);
        this.f21684n = dimen;
        int dimen2 = getDimen(2131165417);
        this.f21685o = dimen2;
        this.f21686p = ((-dimen2) + screenHeight) - dimen;
        this.f21689x = z;
        this.f21680j = presentersContainer;
        this.f21688w = flingListener;
        this.f21659X = abstractC1253j;
        View findViewById = view.findViewById(2131362949);
        this.f21657V = findViewById;
        View findViewById2 = view.findViewById(2131362947);
        this.f21658W = findViewById2;
        this.f21670ak = findViewById.findViewById(2131364092);
        this.f21668ai = (FrameLayout) findViewById2.findViewById(2131362496);
        this.f21643H = (TextView) this.f21670ak.findViewById(2131363348);
        this.f21644I = (TextView) this.f21670ak.findViewById(2131362299);
        this.f21653R = (ImageView) view.findViewById(2131362417);
        this.f21656U = (ImageView) view.findViewById(2131362418);
        this.f21655T = view.findViewById(2131362420);
        this.f21654S = (ImageView) view.findViewById(2131362419);
        View findViewById3 = view.findViewById(2131363561);
        this.f21645J = findViewById3;
        this.f21679i = (ProfilePictureView) findViewById3.findViewById(2131363560);
        this.f21647L = (FrameLayout) view.findViewById(2131362881);
        this.f21673c = (ImageView) view.findViewById(2131362423);
        this.f21674d = (ImageView) view.findViewById(2131362424);
        this.f21675e = (CallAppCheckBox) view.findViewById(2131362421);
        this.f21672b = (ImageView) view.findViewById(2131362416);
        this.f21676f = (ImageView) view.findViewById(2131362422);
        this.f21677g = (ImageView) view.findViewById(2131362049);
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(2131362019);
        this.f21642G = appBarLayout;
        appBarLayout.setBackgroundColor(ThemeUtils.getColor(this.f21660Y.getParallaxBackgroundColor()));
        View findViewById4 = view.findViewById(2131362455);
        this.f21662a = findViewById4;
        this.f21646K = view.findViewById(2131362427);
        this.f21661Z = findViewById4.getBackground();
        this.f21652Q = positionChangedListener;
        ThemeChangeViewController themeChangeViewController = new ThemeChangeViewController(presentersContainer.getRealContext(), (ViewGroup) view.findViewById(2131362429), z, contactdetailsthemechangelistener);
        this.f21678h = themeChangeViewController;
        abstractC1253j.addObserver(themeChangeViewController);
        this.f21681k = (TextView) view.findViewById(2131363554);
        this.f21682l = (LinearLayout) view.findViewById(2131363553);
        this.f21681k.setText(Activities.getString(2131887430));
        TextView textView = (TextView) view.findViewById(2131362545);
        this.f21687q = textView;
        textView.setHint(Activities.getString(2131887636));
        m31006a(z);
        this.f21651P = (AppBarCollapseObserver) ((CoordinatorLayout.C0702d) findViewById2.getLayoutParams()).f3200a;
        CoordinatorLayoutObserverImpl coordinatorLayoutObserverImpl = (CoordinatorLayoutObserverImpl) getCoordinatorObserver();
        this.f21671al = coordinatorLayoutObserverImpl;
        coordinatorLayoutObserverImpl.mo30931a(f21630ac, 1.0f);
        AppBarCollapseObserver appBarCollapseObserver = this.f21651P;
        CoordinatorLayoutObserverImpl coordinatorLayoutObserverImpl2 = this.f21671al;
        synchronized (appBarCollapseObserver.f21604a) {
            appBarCollapseObserver.f21604a.add(coordinatorLayoutObserverImpl2);
        }
    }

    /* renamed from: a */
    static /* synthetic */ int m31009a(BaseContactDetailsParallaxImpl baseContactDetailsParallaxImpl, AppBarLayout.Behavior behavior, int i) {
        int i2;
        int i3;
        int topAndBottomOffset = behavior.getTopAndBottomOffset();
        if (topAndBottomOffset >= Integer.MIN_VALUE && topAndBottomOffset <= Integer.MAX_VALUE) {
            if (i < Integer.MIN_VALUE) {
                i3 = Integer.MIN_VALUE;
            } else {
                i3 = i;
                if (i > Integer.MAX_VALUE) {
                    i3 = Integer.MAX_VALUE;
                }
            }
            if (topAndBottomOffset != i3) {
                behavior.mo11250b(i3);
                i2 = topAndBottomOffset - i3;
                return i2;
            }
        }
        i2 = 0;
        return i2;
    }

    /* renamed from: a */
    private ValueAnimator m31016a(int i, float f, int i2) {
        final AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.C0702d) this.f21642G.getLayoutParams()).f3200a;
        if (behavior == null) {
            return null;
        }
        ValueAnimator m27191a = CallappAnimationUtils.m27191a(i, i2, f, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseContactDetailsParallaxImpl.m31009a(BaseContactDetailsParallaxImpl.this, behavior, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        m27191a.setInterpolator(new DecelerateInterpolator());
        return m27191a;
    }

    /* renamed from: a */
    private void m31017a(int i) {
        this.f21642G.setBackgroundColor(i);
        m30986i();
    }

    /* renamed from: a */
    private void m31015a(int i, float f, boolean z) {
        int y = (int) this.f21642G.getY();
        AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.C0702d) this.f21642G.getLayoutParams()).f3200a;
        if (behavior != null) {
            if (!z) {
                behavior.mo11250b(i);
                return;
            }
            ValueAnimator m31016a = m31016a(y, f, i);
            this.f21663ad = m31016a;
            m31016a.start();
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m30998c(BaseContactDetailsParallaxImpl baseContactDetailsParallaxImpl, boolean z) {
        if (!baseContactDetailsParallaxImpl.f21689x || baseContactDetailsParallaxImpl.f21648M) {
            return;
        }
        if ((!z || baseContactDetailsParallaxImpl.f21668ai.getVisibility() != 4) && (z || baseContactDetailsParallaxImpl.f21668ai.getVisibility() != 0)) {
            return;
        }
        ViewUtils.m27298b(baseContactDetailsParallaxImpl.f21668ai, z);
        if (!z || !PhoneStateManager.get().isIncomingCallRingingState()) {
            ViewUtils.m27298b(baseContactDetailsParallaxImpl.f21646K, z);
        }
        baseContactDetailsParallaxImpl.m31006a(z);
    }

    private static Context getAppContext() {
        return CallAppApplication.get();
    }

    public static Position getCurrentPosition() {
        return f21628aa;
    }

    static int getDimen(int i) {
        return (int) CallAppApplication.get().getResources().getDimension(i);
    }

    /* renamed from: i */
    private void m30986i() {
        m31006a(this.f21689x);
        AppBarCollapseObserver appBarCollapseObserver = this.f21651P;
        if (appBarCollapseObserver != null) {
            appBarCollapseObserver.m31030b();
        }
    }

    private void setColorToActionButtons(final ThemeState themeState) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.3
            @Override // java.lang.Runnable
            public void run() {
                if (BaseContactDetailsParallaxImpl.this.f21648M) {
                    BaseContactDetailsParallaxImpl.this.f21653R.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.DARK.getEditIconColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21656U.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099675), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21654S.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.DARK.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
                } else if (BaseContactDetailsParallaxImpl.this.f21689x) {
                    BaseContactDetailsParallaxImpl.this.f21672b.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getSubtitleTextDefaultColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21653R.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getEditIconColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21656U.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getEditCircleColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21654S.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
                } else if (themeState == null) {
                } else {
                    BaseContactDetailsParallaxImpl.this.f21672b.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getSubtitleTextDefaultColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21653R.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditIconColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21656U.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.f21654S.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
                }
            }
        });
    }

    /* renamed from: a */
    public final void m31018a() {
        ThemeChangeViewController themeChangeViewController;
        AbstractC1253j abstractC1253j = this.f21659X;
        if (abstractC1253j == null || (themeChangeViewController = this.f21678h) == null) {
            return;
        }
        abstractC1253j.removeObserver(themeChangeViewController);
    }

    /* renamed from: a */
    public final void m31013a(Position position, float f, boolean z) {
        ValueAnimator valueAnimator = this.f21663ad;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        int i = C61494.f21699b[position.ordinal()];
        if (i == 1) {
            this.f21642G.setExpanded(false, z);
        } else if (i == 2) {
            m31015a(f21630ac, f, z);
        } else if (i != 3) {
        } else {
            this.f21642G.setExpanded(true, z);
        }
    }

    /* renamed from: a */
    public final void m31012a(Position position, boolean z) {
        m31013a(position, CallappAnimationUtils.f28093d, z);
    }

    /* renamed from: a */
    public final void m31007a(ThemeState themeState) {
        this.f21660Y = themeState;
        m31017a(ThemeUtils.getColor(themeState.getParallaxBackgroundColor()));
    }

    /* renamed from: a */
    public final void m31006a(boolean z) {
        setColorToActionButtons(this.f21660Y);
        if (z || isThemeDark() || this.f21648M) {
            ColorTransitionCalculator colorTransitionCalculator = new ColorTransitionCalculator(-1, -1);
            this.f21636A = colorTransitionCalculator;
            this.f21690y = colorTransitionCalculator;
            this.f21691z = colorTransitionCalculator;
            this.f21637B = colorTransitionCalculator;
            this.f21638C = colorTransitionCalculator;
            this.f21639D = colorTransitionCalculator;
            this.f21640E = colorTransitionCalculator;
            this.f21641F = colorTransitionCalculator;
            return;
        }
        ThemeState themeState = this.f21660Y;
        if (themeState == null) {
            return;
        }
        int color = ThemeUtils.getColor(themeState.getTitleMaximizedColor());
        int color2 = ThemeUtils.getColor(this.f21660Y.getTitleMinimizedColor());
        int color3 = ThemeUtils.getColor(this.f21660Y.getTitleDefaultOpenColor());
        int color4 = ThemeUtils.getColor(this.f21660Y.getSubtitleTextMaximizedColor());
        int color5 = ThemeUtils.getColor(this.f21660Y.getSubtitleTextDefaultColor());
        int color6 = ThemeUtils.getColor(this.f21660Y.getActionIconsMaximizedColor());
        int color7 = ThemeUtils.getColor(this.f21660Y.getActionIconsMinimizedColor());
        int color8 = ThemeUtils.getColor(this.f21660Y.getNoteIconColor());
        int color9 = ThemeUtils.getColor(this.f21660Y.getVideoRingtoneIconColor());
        this.f21636A = new ColorTransitionCalculator(ThemeUtils.getColor(2131100228), color);
        this.f21690y = new ColorTransitionCalculator(color2, color3);
        this.f21691z = new ColorTransitionCalculator(color3, color);
        this.f21637B = new ColorTransitionCalculator(color5, color5);
        this.f21639D = new ColorTransitionCalculator(color7, color6);
        this.f21640E = new ColorTransitionCalculator(color8, color6);
        this.f21641F = new ColorTransitionCalculator(color9, color6);
        this.f21638C = new ColorTransitionCalculator(color5, color4);
    }

    /* renamed from: b */
    public final void m31005b() {
        CoordinatorLayoutObserverImpl coordinatorLayoutObserverImpl = this.f21671al;
        if (coordinatorLayoutObserverImpl != null) {
            coordinatorLayoutObserverImpl.mo30931a(f21630ac, 1.0f);
        }
    }

    /* renamed from: b */
    public final void m31001b(final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.2
            @Override // java.lang.Runnable
            public void run() {
                BaseContactDetailsParallaxImpl.this.f21649N = z;
                if (BaseContactDetailsParallaxImpl.this.f21667ah) {
                    if (BaseContactDetailsParallaxImpl.this.f21649N || BaseContactDetailsParallaxImpl.this.f21689x) {
                        BaseContactDetailsParallaxImpl.this.f21647L.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        BaseContactDetailsParallaxImpl.this.f21647L.setAlpha((1.0f - BaseContactDetailsParallaxImpl.this.f21666ag) * 0.17f);
                    }
                } else if (!BaseContactDetailsParallaxImpl.this.f21665af) {
                } else {
                    if (BaseContactDetailsParallaxImpl.this.f21649N || BaseContactDetailsParallaxImpl.this.f21689x) {
                        BaseContactDetailsParallaxImpl.this.f21647L.setAlpha(1.0f - BaseContactDetailsParallaxImpl.this.f21664ae);
                    } else {
                        BaseContactDetailsParallaxImpl.this.f21647L.setAlpha(((1.0f - BaseContactDetailsParallaxImpl.this.f21664ae) * 0.78f) + 0.17f);
                    }
                }
            }
        });
    }

    public int getAppBarHeightOnScreen() {
        return this.f21642G.getHeight() + ((int) this.f21642G.getY());
    }

    public Position getClosestPosition() {
        return Position.getClosestPosition(getAppBarHeightOnScreen());
    }

    protected abstract AppBarCollapseObserver.CoordinatorLayoutObserver getCoordinatorObserver();

    public FrameLayout getFullImageContainer() {
        return this.f21647L;
    }

    public LinearLayout getPreviewLayout() {
        return this.f21682l;
    }

    public View getShadowView() {
        return this.f21646K;
    }

    public ThemeChangeViewController getThemeChangeViewController() {
        return this.f21678h;
    }

    public TextView getUserDefinition() {
        return this.f21687q;
    }

    public boolean isAppBarFullyClosed() {
        return getAppBarHeightOnScreen() == f21633t;
    }

    public boolean isPositionAboveSemiOpen() {
        return Position.isAboveMidHeight(getAppBarHeightOnScreen());
    }

    boolean isThemeDark() {
        ThemeChangeViewController themeChangeViewController = this.f21678h;
        if (themeChangeViewController != null) {
            return themeChangeViewController.isThemeDark();
        }
        return false;
    }

    public void setHasCover(boolean z) {
        if (this.f21689x != z) {
            this.f21689x = z;
            m30986i();
        }
    }

    public void setIncomingCallScreen(boolean z) {
        this.f21669aj = z;
    }

    public void setShouldHideSocialProfileAction(boolean z) {
        if (this.f21650O == z) {
            return;
        }
        this.f21650O = z;
        m30986i();
    }

    public void setSpammer(boolean z) {
        if (this.f21648M != z) {
            this.f21648M = z;
            m30986i();
        }
    }
}
