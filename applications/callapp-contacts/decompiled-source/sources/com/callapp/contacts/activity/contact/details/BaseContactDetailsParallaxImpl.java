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
import androidx.lifecycle.j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseViewTypeData;
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
    private static final int ab;
    private static final int t;
    private static final int u;
    private static final float v;
    private ColorTransitionCalculator A;
    private ColorTransitionCalculator B;
    private ColorTransitionCalculator C;
    private ColorTransitionCalculator D;
    private ColorTransitionCalculator E;
    private ColorTransitionCalculator F;
    private final AppBarLayout G;
    private final TextView H;
    private final TextView I;
    private final View J;
    private final View K;
    private final FrameLayout L;
    private boolean M;
    private boolean O;
    private AppBarCollapseObserver P;
    private final PositionChangedListener Q;
    private final ImageView R;
    private final ImageView S;
    private final View T;
    private final ImageView U;
    private final View V;
    private final View W;
    private final j X;
    private final Drawable Z;

    /* renamed from: a  reason: collision with root package name */
    public final View f11982a;
    private ValueAnimator ad;
    private float ae;
    private float ag;
    private FrameLayout ai;
    private boolean aj;
    private View ak;
    private CoordinatorLayoutObserverImpl al;

    /* renamed from: b  reason: collision with root package name */
    protected final ImageView f11983b;

    /* renamed from: c  reason: collision with root package name */
    protected final ImageView f11984c;

    /* renamed from: d  reason: collision with root package name */
    protected final ImageView f11985d;
    protected final CallAppCheckBox e;
    protected final ImageView f;
    protected final ImageView g;
    protected final ThemeChangeViewController h;
    protected final ProfilePictureView i;
    protected final PresentersContainer j;
    protected TextView k;
    protected LinearLayout l;
    protected final int m;
    protected final int n;
    protected final int o;
    protected final int p;
    protected TextView q;
    private BaseContactDetailsActivity.FlingListener w;
    private boolean x;
    private ColorTransitionCalculator y;
    private ColorTransitionCalculator z;
    private static final int r = ThemeUtils.c(getAppContext(), 2131952309);
    private static final int s = ThemeUtils.c(getAppContext(), 2131951855);
    private static Position aa = Position.SEMI_OPEN;
    private static final int ac = getDimen(2131165425) - getDimen(2131165422);
    private boolean N = true;
    private ThemeState Y = (ThemeState) Prefs.di.get();
    private boolean af = false;
    private boolean ah = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4.class */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11992a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f11993b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[Position.values().length];
            f11993b = iArr;
            try {
                iArr[Position.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11993b[Position.SEMI_OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11993b[Position.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[AppBarCollapseObserver.Range.values().length];
            f11992a = iArr2;
            try {
                iArr2[AppBarCollapseObserver.Range.LOW_TO_MID.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11992a[AppBarCollapseObserver.Range.MID_TO_HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl.class */
    protected class CoordinatorLayoutObserverImpl implements AppBarCollapseObserver.CoordinatorLayoutObserver {

        /* renamed from: b  reason: collision with root package name */
        private AppBarCollapseObserver.Range f11995b = null;

        /* JADX INFO: Access modifiers changed from: protected */
        public CoordinatorLayoutObserverImpl() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(View view, AppBarCollapseObserver.Range range, float f) {
            float y = view.getY();
            AppBarCollapseObserver.Range range2 = this.f11995b;
            if (!(range2 == null || range2 == range)) {
                int i = AnonymousClass4.f11992a[this.f11995b.ordinal()];
                if (i == 1) {
                    b(BaseContactDetailsParallaxImpl.ac, BitmapDescriptorFactory.HUE_RED);
                } else if (i == 2) {
                    a(BaseContactDetailsParallaxImpl.ac, 1.0f);
                }
            }
            int i2 = AnonymousClass4.f11992a[range.ordinal()];
            if (i2 == 1) {
                b(y, f);
            } else if (i2 == 2) {
                a(y, f);
            }
            this.f11995b = range;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(float f, float f2) {
            BaseContactDetailsParallaxImpl.this.ae = f2;
            boolean z = true;
            BaseContactDetailsParallaxImpl.this.af = true;
            int i = 0;
            BaseContactDetailsParallaxImpl.this.ah = false;
            if (f2 == 1.0f) {
                if (BaseContactDetailsParallaxImpl.this.Q != null) {
                    BaseContactDetailsParallaxImpl.this.Q.a(Position.SEMI_OPEN);
                }
                if (!BaseContactDetailsParallaxImpl.this.x || BaseContactDetailsParallaxImpl.this.M) {
                    z = false;
                }
                Drawable drawable = BaseContactDetailsParallaxImpl.this.Z;
                if (z) {
                    i = 175;
                }
                drawable.setAlpha(i);
            } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
                if (BaseContactDetailsParallaxImpl.this.Q != null) {
                    BaseContactDetailsParallaxImpl.this.Q.a(Position.OPEN);
                    BaseContactDetailsParallaxImpl.this.j.getPositionChangedListener().a(Position.OPEN);
                }
                BaseContactDetailsParallaxImpl.this.Z.setAlpha(175);
            } else {
                BaseContactDetailsParallaxImpl.this.j.getPositionChangedListener().a(Position.CLOSED);
            }
            if (!BaseContactDetailsParallaxImpl.this.x || BaseContactDetailsParallaxImpl.this.M) {
                BaseContactDetailsParallaxImpl.this.Z.setAlpha((int) ((1.0f - f2) * 175.0f));
            }
            BaseContactDetailsParallaxImpl.this.T.setAlpha(f2);
            if (BaseContactDetailsParallaxImpl.this.I != null) {
                if (BaseContactDetailsParallaxImpl.this.M) {
                    BaseContactDetailsParallaxImpl.this.I.setTextColor(BaseContactDetailsParallaxImpl.this.A.a(1.0f - f2));
                } else {
                    BaseContactDetailsParallaxImpl.this.I.setTextColor(BaseContactDetailsParallaxImpl.this.C.a(1.0f - f2));
                }
            }
            if (BaseContactDetailsParallaxImpl.this.M) {
                BaseContactDetailsParallaxImpl.this.H.setTextColor(BaseContactDetailsParallaxImpl.this.A.a(1.0f - f2));
            } else {
                BaseContactDetailsParallaxImpl.this.H.setTextColor(BaseContactDetailsParallaxImpl.this.z.a(1.0f - f2));
            }
            float f3 = 1.0f - f2;
            BaseContactDetailsParallaxImpl.this.k.setTextColor(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.q.setTextColor(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.q.setHintTextColor(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.e.setfilterColor(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.f11984c.setColorFilter(BaseContactDetailsParallaxImpl.this.E.a(f3));
            BaseContactDetailsParallaxImpl.this.f11985d.setColorFilter(BaseContactDetailsParallaxImpl.this.F.a(f3));
            BaseContactDetailsParallaxImpl.this.f.setColorFilter(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.f11983b.setColorFilter(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.g.setColorFilter(BaseContactDetailsParallaxImpl.this.D.a(f3));
            BaseContactDetailsParallaxImpl.this.J.setAlpha(f2);
            if (BaseContactDetailsParallaxImpl.this.N || BaseContactDetailsParallaxImpl.this.x) {
                BaseContactDetailsParallaxImpl.this.L.setAlpha(f3);
            } else {
                BaseContactDetailsParallaxImpl.this.L.setAlpha((0.78f * f3) + 0.17f);
            }
            int dimen = BaseContactDetailsParallaxImpl.getDimen(2131165425);
            int height = BaseContactDetailsParallaxImpl.this.V.getHeight();
            int dimen2 = BaseContactDetailsParallaxImpl.getDimen(BaseContactDetailsParallaxImpl.this.aj ? 2131165559 : 2131165564);
            ViewUtils.g(BaseContactDetailsParallaxImpl.this.ak, BaseContactDetailsParallaxImpl.this.aj ? -2 : CallAppApplication.get().getResources().getDimensionPixelSize(2131165421));
            float abs = ((dimen - height) - dimen2) + ((Math.abs(BaseContactDetailsParallaxImpl.ac) + BaseContactDetailsParallaxImpl.getDimen(2131165554)) * f3);
            BaseContactDetailsParallaxImpl.this.V.setY(abs);
            if (BaseContactDetailsParallaxImpl.this.x) {
                BaseContactDetailsParallaxImpl.this.K.setY(abs);
            } else {
                BaseContactDetailsParallaxImpl.this.K.setAlpha(f3);
            }
        }

        @Override // com.callapp.contacts.activity.contact.details.AppBarCollapseObserver.CoordinatorLayoutObserver
        public final void a(final View view, final AppBarCollapseObserver.Range range, final float f) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl$gTxNRGsQqZoWSULkjpGuR8HlyC0
                @Override // java.lang.Runnable
                public final void run() {
                    BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl.this.b(view, range, f);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(float r7, float r8) {
            /*
                Method dump skipped, instructions count: 1120
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.CoordinatorLayoutObserverImpl.b(float, float):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position.class */
    public enum Position {
        CLOSED,
        SEMI_OPEN,
        OPEN;

        /* JADX INFO: Access modifiers changed from: private */
        public static Position getClosestPosition(int i) {
            if (i < BaseContactDetailsParallaxImpl.ab / 2) {
                Position unused = BaseContactDetailsParallaxImpl.aa = CLOSED;
            } else if (i < AppBarCollapseObserver.getSemiHeight() + ((AppBarCollapseObserver.getFullHeight() - AppBarCollapseObserver.getSemiHeight()) / 2.0f)) {
                Position unused2 = BaseContactDetailsParallaxImpl.aa = SEMI_OPEN;
            } else {
                Position unused3 = BaseContactDetailsParallaxImpl.aa = OPEN;
            }
            return BaseContactDetailsParallaxImpl.aa;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isAboveMidHeight(int i) {
            return ((float) i) > AppBarCollapseObserver.getSemiHeight();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener.class */
    public interface PositionChangedListener {
        void a(Position position);
    }

    static {
        int dimen = getDimen(2131165421);
        t = dimen;
        int dimen2 = getDimen(2131165424);
        u = dimen2;
        v = 1.0f - (getDimen(2131165423) / dimen2);
        ab = ((int) AppBarCollapseObserver.getSemiHeight()) + dimen;
    }

    public BaseContactDetailsParallaxImpl(PresentersContainer presentersContainer, View view, PositionChangedListener positionChangedListener, BaseContactDetailsActivity.FlingListener flingListener, boolean z, j jVar, ThemeChangeViewController.contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        int screenHeight = Activities.getScreenHeight(Activities.getScreenOrientation()) - Activities.getStatusBarHeight();
        this.m = screenHeight;
        int dimen = getDimen(2131165422);
        this.n = dimen;
        int dimen2 = getDimen(2131165417);
        this.o = dimen2;
        this.p = ((-dimen2) + screenHeight) - dimen;
        this.x = z;
        this.j = presentersContainer;
        this.w = flingListener;
        this.X = jVar;
        View findViewById = view.findViewById(2131362949);
        this.V = findViewById;
        View findViewById2 = view.findViewById(2131362947);
        this.W = findViewById2;
        this.ak = findViewById.findViewById(2131364092);
        this.ai = (FrameLayout) findViewById2.findViewById(2131362496);
        this.H = (TextView) this.ak.findViewById(2131363348);
        this.I = (TextView) this.ak.findViewById(2131362299);
        this.R = (ImageView) view.findViewById(2131362417);
        this.U = (ImageView) view.findViewById(2131362418);
        this.T = view.findViewById(2131362420);
        this.S = (ImageView) view.findViewById(2131362419);
        View findViewById3 = view.findViewById(2131363561);
        this.J = findViewById3;
        this.i = (ProfilePictureView) findViewById3.findViewById(2131363560);
        this.L = (FrameLayout) view.findViewById(2131362881);
        this.f11984c = (ImageView) view.findViewById(2131362423);
        this.f11985d = (ImageView) view.findViewById(2131362424);
        this.e = (CallAppCheckBox) view.findViewById(2131362421);
        this.f11983b = (ImageView) view.findViewById(2131362416);
        this.f = (ImageView) view.findViewById(2131362422);
        this.g = (ImageView) view.findViewById(2131362049);
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(2131362019);
        this.G = appBarLayout;
        appBarLayout.setBackgroundColor(ThemeUtils.getColor(this.Y.getParallaxBackgroundColor()));
        View findViewById4 = view.findViewById(2131362455);
        this.f11982a = findViewById4;
        this.K = view.findViewById(2131362427);
        this.Z = findViewById4.getBackground();
        this.Q = positionChangedListener;
        ThemeChangeViewController themeChangeViewController = new ThemeChangeViewController(presentersContainer.getRealContext(), (ViewGroup) view.findViewById(2131362429), z, contactdetailsthemechangelistener);
        this.h = themeChangeViewController;
        jVar.addObserver(themeChangeViewController);
        this.k = (TextView) view.findViewById(2131363554);
        this.l = (LinearLayout) view.findViewById(2131363553);
        this.k.setText(Activities.getString(2131887430));
        TextView textView = (TextView) view.findViewById(2131362545);
        this.q = textView;
        textView.setHint(Activities.getString(2131887636));
        a(z);
        this.P = (AppBarCollapseObserver) ((CoordinatorLayout.d) findViewById2.getLayoutParams()).f1663a;
        CoordinatorLayoutObserverImpl coordinatorLayoutObserverImpl = (CoordinatorLayoutObserverImpl) getCoordinatorObserver();
        this.al = coordinatorLayoutObserverImpl;
        coordinatorLayoutObserverImpl.a(ac, 1.0f);
        AppBarCollapseObserver appBarCollapseObserver = this.P;
        CoordinatorLayoutObserverImpl coordinatorLayoutObserverImpl2 = this.al;
        synchronized (appBarCollapseObserver.f11960a) {
            appBarCollapseObserver.f11960a.add(coordinatorLayoutObserverImpl2);
        }
    }

    static /* synthetic */ int a(BaseContactDetailsParallaxImpl baseContactDetailsParallaxImpl, AppBarLayout.Behavior behavior, int i) {
        int i2;
        int i3;
        int topAndBottomOffset = behavior.getTopAndBottomOffset();
        if (topAndBottomOffset >= Integer.MIN_VALUE && topAndBottomOffset <= Integer.MAX_VALUE) {
            if (i < Integer.MIN_VALUE) {
                i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            } else {
                i3 = i;
                if (i > Integer.MAX_VALUE) {
                    i3 = Integer.MAX_VALUE;
                }
            }
            if (topAndBottomOffset != i3) {
                behavior.b(i3);
                i2 = topAndBottomOffset - i3;
                return i2;
            }
        }
        i2 = 0;
        return i2;
    }

    private ValueAnimator a(int i, float f, int i2) {
        final AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.d) this.G.getLayoutParams()).f1663a;
        if (behavior == null) {
            return null;
        }
        ValueAnimator a2 = CallappAnimationUtils.a(i, i2, f, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseContactDetailsParallaxImpl.a(BaseContactDetailsParallaxImpl.this, behavior, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        a2.setInterpolator(new DecelerateInterpolator());
        return a2;
    }

    private void a(int i) {
        this.G.setBackgroundColor(i);
        i();
    }

    private void a(int i, float f, boolean z) {
        int y = (int) this.G.getY();
        AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.d) this.G.getLayoutParams()).f1663a;
        if (behavior == null) {
            return;
        }
        if (z) {
            ValueAnimator a2 = a(y, f, i);
            this.ad = a2;
            a2.start();
            return;
        }
        behavior.b(i);
    }

    static /* synthetic */ void c(BaseContactDetailsParallaxImpl baseContactDetailsParallaxImpl, boolean z) {
        if (baseContactDetailsParallaxImpl.x && !baseContactDetailsParallaxImpl.M) {
            if ((z && baseContactDetailsParallaxImpl.ai.getVisibility() == 4) || (!z && baseContactDetailsParallaxImpl.ai.getVisibility() == 0)) {
                ViewUtils.b(baseContactDetailsParallaxImpl.ai, z);
                if (!z || !PhoneStateManager.get().isIncomingCallRingingState()) {
                    ViewUtils.b(baseContactDetailsParallaxImpl.K, z);
                }
                baseContactDetailsParallaxImpl.a(z);
            }
        }
    }

    private static Context getAppContext() {
        return CallAppApplication.get();
    }

    public static Position getCurrentPosition() {
        return aa;
    }

    static int getDimen(int i) {
        return (int) CallAppApplication.get().getResources().getDimension(i);
    }

    private void i() {
        a(this.x);
        AppBarCollapseObserver appBarCollapseObserver = this.P;
        if (appBarCollapseObserver != null) {
            appBarCollapseObserver.b();
        }
    }

    private void setColorToActionButtons(final ThemeState themeState) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.3
            @Override // java.lang.Runnable
            public void run() {
                if (BaseContactDetailsParallaxImpl.this.M) {
                    BaseContactDetailsParallaxImpl.this.R.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.DARK.getEditIconColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.U.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099675), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.S.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.DARK.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
                } else if (BaseContactDetailsParallaxImpl.this.x) {
                    BaseContactDetailsParallaxImpl.this.f11983b.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getSubtitleTextDefaultColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.R.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getEditIconColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.U.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getEditCircleColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.S.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(ThemeState.COVER.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
                } else if (themeState != null) {
                    BaseContactDetailsParallaxImpl.this.f11983b.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getSubtitleTextDefaultColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.R.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditIconColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.U.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleColor()), PorterDuff.Mode.SRC_IN));
                    BaseContactDetailsParallaxImpl.this.S.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(themeState.getEditCircleStrokeColor()), PorterDuff.Mode.SRC_IN));
                }
            }
        });
    }

    public final void a() {
        ThemeChangeViewController themeChangeViewController;
        j jVar = this.X;
        if (jVar != null && (themeChangeViewController = this.h) != null) {
            jVar.removeObserver(themeChangeViewController);
        }
    }

    public final void a(Position position, float f, boolean z) {
        ValueAnimator valueAnimator = this.ad;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        int i = AnonymousClass4.f11993b[position.ordinal()];
        if (i == 1) {
            this.G.setExpanded(false, z);
        } else if (i == 2) {
            a(ac, f, z);
        } else if (i == 3) {
            this.G.setExpanded(true, z);
        }
    }

    public final void a(Position position, boolean z) {
        a(position, CallappAnimationUtils.f16119d, z);
    }

    public final void a(ThemeState themeState) {
        this.Y = themeState;
        a(ThemeUtils.getColor(themeState.getParallaxBackgroundColor()));
    }

    public final void a(boolean z) {
        setColorToActionButtons(this.Y);
        if (z || isThemeDark() || this.M) {
            ColorTransitionCalculator colorTransitionCalculator = new ColorTransitionCalculator(-1, -1);
            this.A = colorTransitionCalculator;
            this.y = colorTransitionCalculator;
            this.z = colorTransitionCalculator;
            this.B = colorTransitionCalculator;
            this.C = colorTransitionCalculator;
            this.D = colorTransitionCalculator;
            this.E = colorTransitionCalculator;
            this.F = colorTransitionCalculator;
            return;
        }
        ThemeState themeState = this.Y;
        if (themeState != null) {
            int color = ThemeUtils.getColor(themeState.getTitleMaximizedColor());
            int color2 = ThemeUtils.getColor(this.Y.getTitleMinimizedColor());
            int color3 = ThemeUtils.getColor(this.Y.getTitleDefaultOpenColor());
            int color4 = ThemeUtils.getColor(this.Y.getSubtitleTextMaximizedColor());
            int color5 = ThemeUtils.getColor(this.Y.getSubtitleTextDefaultColor());
            int color6 = ThemeUtils.getColor(this.Y.getActionIconsMaximizedColor());
            int color7 = ThemeUtils.getColor(this.Y.getActionIconsMinimizedColor());
            int color8 = ThemeUtils.getColor(this.Y.getNoteIconColor());
            int color9 = ThemeUtils.getColor(this.Y.getVideoRingtoneIconColor());
            this.A = new ColorTransitionCalculator(ThemeUtils.getColor(2131100228), color);
            this.y = new ColorTransitionCalculator(color2, color3);
            this.z = new ColorTransitionCalculator(color3, color);
            this.B = new ColorTransitionCalculator(color5, color5);
            this.D = new ColorTransitionCalculator(color7, color6);
            this.E = new ColorTransitionCalculator(color8, color6);
            this.F = new ColorTransitionCalculator(color9, color6);
            this.C = new ColorTransitionCalculator(color5, color4);
        }
    }

    public final void b() {
        CoordinatorLayoutObserverImpl coordinatorLayoutObserverImpl = this.al;
        if (coordinatorLayoutObserverImpl != null) {
            coordinatorLayoutObserverImpl.a(ac, 1.0f);
        }
    }

    public final void b(final boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.2
            @Override // java.lang.Runnable
            public void run() {
                BaseContactDetailsParallaxImpl.this.N = z;
                if (BaseContactDetailsParallaxImpl.this.ah) {
                    if (BaseContactDetailsParallaxImpl.this.N || BaseContactDetailsParallaxImpl.this.x) {
                        BaseContactDetailsParallaxImpl.this.L.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        BaseContactDetailsParallaxImpl.this.L.setAlpha((1.0f - BaseContactDetailsParallaxImpl.this.ag) * 0.17f);
                    }
                } else if (!BaseContactDetailsParallaxImpl.this.af) {
                } else {
                    if (BaseContactDetailsParallaxImpl.this.N || BaseContactDetailsParallaxImpl.this.x) {
                        BaseContactDetailsParallaxImpl.this.L.setAlpha(1.0f - BaseContactDetailsParallaxImpl.this.ae);
                    } else {
                        BaseContactDetailsParallaxImpl.this.L.setAlpha(((1.0f - BaseContactDetailsParallaxImpl.this.ae) * 0.78f) + 0.17f);
                    }
                }
            }
        });
    }

    public int getAppBarHeightOnScreen() {
        return this.G.getHeight() + ((int) this.G.getY());
    }

    public Position getClosestPosition() {
        return Position.getClosestPosition(getAppBarHeightOnScreen());
    }

    protected abstract AppBarCollapseObserver.CoordinatorLayoutObserver getCoordinatorObserver();

    public FrameLayout getFullImageContainer() {
        return this.L;
    }

    public LinearLayout getPreviewLayout() {
        return this.l;
    }

    public View getShadowView() {
        return this.K;
    }

    public ThemeChangeViewController getThemeChangeViewController() {
        return this.h;
    }

    public TextView getUserDefinition() {
        return this.q;
    }

    public boolean isAppBarFullyClosed() {
        return getAppBarHeightOnScreen() == t;
    }

    public boolean isPositionAboveSemiOpen() {
        return Position.isAboveMidHeight(getAppBarHeightOnScreen());
    }

    boolean isThemeDark() {
        ThemeChangeViewController themeChangeViewController = this.h;
        if (themeChangeViewController != null) {
            return themeChangeViewController.isThemeDark();
        }
        return false;
    }

    public void setHasCover(boolean z) {
        if (this.x != z) {
            this.x = z;
            i();
        }
    }

    public void setIncomingCallScreen(boolean z) {
        this.aj = z;
    }

    public void setShouldHideSocialProfileAction(boolean z) {
        if (this.O != z) {
            this.O = z;
            i();
        }
    }

    public void setSpammer(boolean z) {
        if (this.M != z) {
            this.M = z;
            i();
        }
    }
}
