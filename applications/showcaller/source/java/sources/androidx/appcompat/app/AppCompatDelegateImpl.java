package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0175e;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.AbstractC0315o;
import androidx.appcompat.widget.AbstractC0321s;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0286e0;
import androidx.appcompat.widget.C0287f;
import androidx.appcompat.widget.C0303j0;
import androidx.appcompat.widget.C0305k0;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.core.app.C0563f;
import androidx.core.content.C0586a;
import androidx.core.content.p007d.C0605f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import p020b.p021a.C1423a;
import p020b.p021a.C1425c;
import p020b.p021a.C1428f;
import p020b.p021a.C1429g;
import p020b.p021a.C1431i;
import p020b.p021a.C1432j;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p021a.p028o.AbstractC1455b;
import p020b.p021a.p028o.C1458d;
import p020b.p021a.p028o.C1460f;
import p020b.p021a.p028o.C1462g;
import p020b.p021a.p028o.Window$CallbackC1467i;
import p020b.p036e.C1502g;
import p020b.p041h.p049k.C1592c;
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1601a0;
import p020b.p041h.p050l.C1611c0;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1630f;
import p020b.p041h.p050l.C1653g;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl.class */
public class AppCompatDelegateImpl extends AbstractC0149c implements C0178g.AbstractC0179a, LayoutInflater.Factory2 {

    /* renamed from: g */
    private static final C1502g<String, Integer> f328g = new C1502g<>();

    /* renamed from: h */
    private static final boolean f329h;

    /* renamed from: i */
    private static final int[] f330i;

    /* renamed from: j */
    private static final boolean f331j;

    /* renamed from: k */
    private static final boolean f332k;

    /* renamed from: l */
    private static boolean f333l;

    /* renamed from: A */
    Runnable f334A;

    /* renamed from: B */
    C1601a0 f335B;

    /* renamed from: C */
    private boolean f336C;

    /* renamed from: D */
    private boolean f337D;

    /* renamed from: E */
    ViewGroup f338E;

    /* renamed from: F */
    private TextView f339F;

    /* renamed from: G */
    private View f340G;

    /* renamed from: H */
    private boolean f341H;

    /* renamed from: I */
    private boolean f342I;

    /* renamed from: J */
    boolean f343J;

    /* renamed from: K */
    boolean f344K;

    /* renamed from: L */
    boolean f345L;

    /* renamed from: M */
    boolean f346M;

    /* renamed from: N */
    boolean f347N;

    /* renamed from: O */
    private boolean f348O;

    /* renamed from: P */
    private PanelFeatureState[] f349P;

    /* renamed from: Q */
    private PanelFeatureState f350Q;

    /* renamed from: R */
    private boolean f351R;

    /* renamed from: S */
    private boolean f352S;

    /* renamed from: T */
    private boolean f353T;

    /* renamed from: U */
    private boolean f354U;

    /* renamed from: V */
    boolean f355V;

    /* renamed from: W */
    private int f356W;

    /* renamed from: X */
    private int f357X;

    /* renamed from: Y */
    private boolean f358Y;

    /* renamed from: Z */
    private boolean f359Z;

    /* renamed from: a0 */
    private AbstractC0140p f360a0;

    /* renamed from: b0 */
    private AbstractC0140p f361b0;

    /* renamed from: c0 */
    boolean f362c0;

    /* renamed from: d0 */
    int f363d0;

    /* renamed from: e0 */
    private final Runnable f364e0;

    /* renamed from: f0 */
    private boolean f365f0;

    /* renamed from: g0 */
    private Rect f366g0;

    /* renamed from: h0 */
    private Rect f367h0;

    /* renamed from: i0 */
    private C0152e f368i0;

    /* renamed from: j0 */
    private C0154f f369j0;

    /* renamed from: m */
    final Object f370m;

    /* renamed from: n */
    final Context f371n;

    /* renamed from: o */
    Window f372o;

    /* renamed from: p */
    private C0138n f373p;

    /* renamed from: q */
    final AbstractC0148b f374q;

    /* renamed from: r */
    ActionBar f375r;

    /* renamed from: s */
    MenuInflater f376s;

    /* renamed from: t */
    private CharSequence f377t;

    /* renamed from: u */
    private AbstractC0315o f378u;

    /* renamed from: v */
    private C0131h f379v;

    /* renamed from: w */
    private C0145t f380w;

    /* renamed from: x */
    AbstractC1455b f381x;

    /* renamed from: y */
    ActionBarContextView f382y;

    /* renamed from: z */
    PopupWindow f383z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
    public static final class PanelFeatureState {

        /* renamed from: a */
        int f384a;

        /* renamed from: b */
        int f385b;

        /* renamed from: c */
        int f386c;

        /* renamed from: d */
        int f387d;

        /* renamed from: e */
        int f388e;

        /* renamed from: f */
        int f389f;

        /* renamed from: g */
        ViewGroup f390g;

        /* renamed from: h */
        View f391h;

        /* renamed from: i */
        View f392i;

        /* renamed from: j */
        C0178g f393j;

        /* renamed from: k */
        C0175e f394k;

        /* renamed from: l */
        Context f395l;

        /* renamed from: m */
        boolean f396m;

        /* renamed from: n */
        boolean f397n;

        /* renamed from: o */
        boolean f398o;

        /* renamed from: p */
        public boolean f399p;

        /* renamed from: q */
        boolean f400q = false;

        /* renamed from: r */
        boolean f401r;

        /* renamed from: s */
        Bundle f402s;

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState.class */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new C0122a();

            /* renamed from: d */
            int f403d;

            /* renamed from: e */
            boolean f404e;

            /* renamed from: f */
            Bundle f405f;

            /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$a */
            /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$a.class */
            class C0122a implements Parcelable.ClassLoaderCreator<SavedState> {
                C0122a() {
                }

                /* renamed from: a */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.m35595a(parcel, null);
                }

                /* renamed from: b */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.m35595a(parcel, classLoader);
                }

                /* renamed from: c */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }

            SavedState() {
            }

            /* renamed from: a */
            static SavedState m35595a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f403d = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.f404e = z;
                if (z) {
                    savedState.f405f = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f403d);
                parcel.writeInt(this.f404e ? 1 : 0);
                if (this.f404e) {
                    parcel.writeBundle(this.f405f);
                }
            }
        }

        PanelFeatureState(int i) {
            this.f384a = i;
        }

        /* renamed from: a */
        AbstractC0195n m35599a(AbstractC0193m.AbstractC0194a abstractC0194a) {
            if (this.f393j == null) {
                return null;
            }
            if (this.f394k == null) {
                C0175e c0175e = new C0175e(this.f395l, C1429g.abc_list_menu_item_layout);
                this.f394k = c0175e;
                c0175e.mo35315g(abstractC0194a);
                this.f393j.m35393b(this.f394k);
            }
            return this.f394k.m35423h(this.f390g);
        }

        /* renamed from: b */
        public boolean m35598b() {
            boolean z = false;
            if (this.f391h == null) {
                return false;
            }
            if (this.f392i != null) {
                return true;
            }
            if (this.f394k.m35424a().getCount() > 0) {
                z = true;
            }
            return z;
        }

        /* renamed from: c */
        void m35597c(C0178g c0178g) {
            C0175e c0175e;
            C0178g c0178g2 = this.f393j;
            if (c0178g == c0178g2) {
                return;
            }
            if (c0178g2 != null) {
                c0178g2.m35403Q(this.f394k);
            }
            this.f393j = c0178g;
            if (c0178g == null || (c0175e = this.f394k) == null) {
                return;
            }
            c0178g.m35393b(c0175e);
        }

        /* renamed from: d */
        void m35596d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C1423a.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.resolveAttribute(C1423a.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            } else {
                newTheme.applyStyle(C1431i.Theme_AppCompat_CompactMenu, true);
            }
            C1458d c1458d = new C1458d(context, 0);
            c1458d.getTheme().setTo(newTheme);
            this.f395l = c1458d;
            TypedArray obtainStyledAttributes = c1458d.obtainStyledAttributes(C1432j.AppCompatTheme);
            this.f385b = obtainStyledAttributes.getResourceId(C1432j.AppCompatTheme_panelBackground, 0);
            this.f389f = obtainStyledAttributes.getResourceId(C1432j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$a.class */
    class C0123a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        final /* synthetic */ Thread.UncaughtExceptionHandler f406a;

        C0123a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f406a = uncaughtExceptionHandler;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
            if (r0.contains("Drawable") != false) goto L10;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m35591a(java.lang.Throwable r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L32
                r0 = r4
                java.lang.String r0 = r0.getMessage()
                r4 = r0
                r0 = r6
                r7 = r0
                r0 = r4
                if (r0 == 0) goto L32
                r0 = r4
                java.lang.String r1 = "drawable"
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L2f
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.String r1 = "Drawable"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L32
            L2f:
                r0 = 1
                r7 = r0
            L32:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.C0123a.m35591a(java.lang.Throwable):boolean");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (!m35591a(th)) {
                this.f406a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f406a.uncaughtException(thread, notFoundException);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$b.class */
    public class RunnableC0124b implements Runnable {
        RunnableC0124b() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.f363d0 & 1) != 0) {
                appCompatDelegateImpl.m35629W(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.f363d0 & 4096) != 0) {
                appCompatDelegateImpl2.m35629W(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.f362c0 = false;
            appCompatDelegateImpl3.f363d0 = 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$c.class */
    public class C0125c implements AbstractC1673q {
        C0125c() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            int m29588l = c1615e0.m29588l();
            int m35639N0 = AppCompatDelegateImpl.this.m35639N0(c1615e0, null);
            C1615e0 c1615e02 = c1615e0;
            if (m29588l != m35639N0) {
                c1615e02 = c1615e0.m29583q(c1615e0.m29590j(), m35639N0, c1615e0.m29589k(), c1615e0.m29591i());
            }
            return C1679w.m29303c0(view, c1615e02);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$d.class */
    public class C0126d implements AbstractC0321s.AbstractC0322a {
        C0126d() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractC0321s.AbstractC0322a
        /* renamed from: a */
        public void mo34758a(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.m35639N0(null, rect);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$e.class */
    public class C0127e implements ContentFrameLayout.AbstractC0238a {
        C0127e() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0238a
        /* renamed from: a */
        public void mo35177a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0238a
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.m35631U();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f.class */
    public class RunnableC0128f implements Runnable {

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f$a.class */
        class C0129a extends C1611c0 {
            C0129a() {
                RunnableC0128f.this = r4;
            }

            @Override // p020b.p041h.p050l.AbstractC1608b0
            /* renamed from: b */
            public void mo29619b(View view) {
                AppCompatDelegateImpl.this.f382y.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f335B.m29637f(null);
                AppCompatDelegateImpl.this.f335B = null;
            }

            @Override // p020b.p041h.p050l.C1611c0, p020b.p041h.p050l.AbstractC1608b0
            /* renamed from: c */
            public void mo29608c(View view) {
                AppCompatDelegateImpl.this.f382y.setVisibility(0);
            }
        }

        RunnableC0128f() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.f383z.showAtLocation(appCompatDelegateImpl.f382y, 55, 0, 0);
            AppCompatDelegateImpl.this.m35628X();
            if (!AppCompatDelegateImpl.this.m35653F0()) {
                AppCompatDelegateImpl.this.f382y.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f382y.setVisibility(0);
                return;
            }
            AppCompatDelegateImpl.this.f382y.setAlpha(0.0f);
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl2.f335B = C1679w.m29302d(appCompatDelegateImpl2.f382y).m29642a(1.0f);
            AppCompatDelegateImpl.this.f335B.m29637f(new C0129a());
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$g.class */
    public class C0130g extends C1611c0 {
        C0130g() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: b */
        public void mo29619b(View view) {
            AppCompatDelegateImpl.this.f382y.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f335B.m29637f(null);
            AppCompatDelegateImpl.this.f335B = null;
        }

        @Override // p020b.p041h.p050l.C1611c0, p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: c */
        public void mo29608c(View view) {
            AppCompatDelegateImpl.this.f382y.setVisibility(0);
            AppCompatDelegateImpl.this.f382y.sendAccessibilityEvent(32);
            if (AppCompatDelegateImpl.this.f382y.getParent() instanceof View) {
                C1679w.m29279o0((View) AppCompatDelegateImpl.this.f382y.getParent());
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$h.class */
    public final class C0131h implements AbstractC0193m.AbstractC0194a {
        C0131h() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: b */
        public void mo35224b(C0178g c0178g, boolean z) {
            AppCompatDelegateImpl.this.m35640N(c0178g);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: c */
        public boolean mo35223c(C0178g c0178g) {
            Window.Callback m35618h0 = AppCompatDelegateImpl.this.m35618h0();
            if (m35618h0 != null) {
                m35618h0.onMenuOpened(108, c0178g);
                return true;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i.class */
    public class C0132i implements AbstractC1455b.AbstractC1456a {

        /* renamed from: a */
        private AbstractC1455b.AbstractC1456a f415a;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i$a.class */
        class C0133a extends C1611c0 {
            C0133a() {
                C0132i.this = r4;
            }

            @Override // p020b.p041h.p050l.AbstractC1608b0
            /* renamed from: b */
            public void mo29619b(View view) {
                AppCompatDelegateImpl.this.f382y.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f383z;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f382y.getParent() instanceof View) {
                    C1679w.m29279o0((View) AppCompatDelegateImpl.this.f382y.getParent());
                }
                AppCompatDelegateImpl.this.f382y.m35290k();
                AppCompatDelegateImpl.this.f335B.m29637f(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f335B = null;
                C1679w.m29279o0(appCompatDelegateImpl2.f338E);
            }
        }

        public C0132i(AbstractC1455b.AbstractC1456a abstractC1456a) {
            AppCompatDelegateImpl.this = r4;
            this.f415a = abstractC1456a;
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: a */
        public void mo30022a(AbstractC1455b abstractC1455b) {
            this.f415a.mo30022a(abstractC1455b);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f383z != null) {
                appCompatDelegateImpl.f372o.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f334A);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f382y != null) {
                appCompatDelegateImpl2.m35628X();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f335B = C1679w.m29302d(appCompatDelegateImpl3.f382y).m29642a(0.0f);
                AppCompatDelegateImpl.this.f335B.m29637f(new C0133a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AbstractC0148b abstractC0148b = appCompatDelegateImpl4.f374q;
            if (abstractC0148b != null) {
                abstractC0148b.mo35519e(appCompatDelegateImpl4.f381x);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f381x = null;
            C1679w.m29279o0(appCompatDelegateImpl5.f338E);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: b */
        public boolean mo30021b(AbstractC1455b abstractC1455b, Menu menu) {
            return this.f415a.mo30021b(abstractC1455b, menu);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: c */
        public boolean mo30020c(AbstractC1455b abstractC1455b, Menu menu) {
            C1679w.m29279o0(AppCompatDelegateImpl.this.f338E);
            return this.f415a.mo30020c(abstractC1455b, menu);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b.AbstractC1456a
        /* renamed from: d */
        public boolean mo30019d(AbstractC1455b abstractC1455b, MenuItem menuItem) {
            return this.f415a.mo30019d(abstractC1455b, menuItem);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$j.class */
    public static class C0134j {
        /* renamed from: a */
        static Context m35590a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        /* renamed from: b */
        static void m35589b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$k */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$k.class */
    static class C0135k {
        /* renamed from: a */
        static boolean m35588a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$l */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$l.class */
    public static class C0136l {
        /* renamed from: a */
        static void m35587a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$m */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$m.class */
    public static class C0137m {
        /* renamed from: a */
        static void m35586a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.colorMode;
            int i2 = configuration2.colorMode;
            if ((i & 3) != (i2 & 3)) {
                configuration3.colorMode |= i2 & 3;
            }
            int i3 = configuration.colorMode;
            int i4 = configuration2.colorMode;
            if ((i3 & 12) != (i4 & 12)) {
                configuration3.colorMode |= i4 & 12;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$n */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$n.class */
    public class C0138n extends Window$CallbackC1467i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0138n(Window.Callback callback) {
            super(callback);
            AppCompatDelegateImpl.this = r4;
        }

        /* renamed from: b */
        final ActionMode m35585b(ActionMode.Callback callback) {
            C1460f.C1461a c1461a = new C1460f.C1461a(AppCompatDelegateImpl.this.f371n, callback);
            AbstractC1455b m35651H0 = AppCompatDelegateImpl.this.m35651H0(c1461a);
            if (m35651H0 != null) {
                return c1461a.m30018e(m35651H0);
            }
            return null;
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m35630V(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m35606t0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0178g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.m35603w0(i);
            return true;
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.m35602x0(i);
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0178g c0178g = menu instanceof C0178g ? (C0178g) menu : null;
            if (i == 0 && c0178g == null) {
                return false;
            }
            if (c0178g != null) {
                c0178g.m35386e0(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0178g != null) {
                c0178g.m35386e0(false);
            }
            return onPreparePanel;
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0178g c0178g;
            PanelFeatureState m35620f0 = AppCompatDelegateImpl.this.m35620f0(0, true);
            if (m35620f0 == null || (c0178g = m35620f0.f393j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, c0178g, i);
            }
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.m35611o0() ? m35585b(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // p020b.p021a.p028o.Window$CallbackC1467i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.m35611o0() || i != 0) ? super.onWindowStartingActionMode(callback, i) : m35585b(callback);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$o */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$o.class */
    public class C0139o extends AbstractC0140p {

        /* renamed from: c */
        private final PowerManager f419c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0139o(Context context) {
            super();
            AppCompatDelegateImpl.this = r5;
            this.f419c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0140p
        /* renamed from: b */
        IntentFilter mo35582b() {
            if (Build.VERSION.SDK_INT >= 21) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            }
            return null;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0140p
        /* renamed from: c */
        public int mo35581c() {
            int i = 1;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 1;
                if (C0135k.m35588a(this.f419c)) {
                    i = 2;
                }
            }
            return i;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0140p
        /* renamed from: d */
        public void mo35580d() {
            AppCompatDelegateImpl.this.mo35545e();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$p */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$p.class */
    public abstract class AbstractC0140p {

        /* renamed from: a */
        private BroadcastReceiver f421a;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$p$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$p$a.class */
        public class C0141a extends BroadcastReceiver {
            C0141a() {
                AbstractC0140p.this = r4;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                AbstractC0140p.this.mo35580d();
            }
        }

        AbstractC0140p() {
            AppCompatDelegateImpl.this = r4;
        }

        /* renamed from: a */
        void m35584a() {
            BroadcastReceiver broadcastReceiver = this.f421a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f371n.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException e) {
                }
                this.f421a = null;
            }
        }

        /* renamed from: b */
        abstract IntentFilter mo35582b();

        /* renamed from: c */
        abstract int mo35581c();

        /* renamed from: d */
        abstract void mo35580d();

        /* renamed from: e */
        void m35583e() {
            m35584a();
            IntentFilter mo35582b = mo35582b();
            if (mo35582b == null || mo35582b.countActions() == 0) {
                return;
            }
            if (this.f421a == null) {
                this.f421a = new C0141a();
            }
            AppCompatDelegateImpl.this.f371n.registerReceiver(this.f421a, mo35582b);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$q */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$q.class */
    public class C0142q extends AbstractC0140p {

        /* renamed from: c */
        private final C0157i f424c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0142q(C0157i c0157i) {
            super();
            AppCompatDelegateImpl.this = r4;
            this.f424c = c0157i;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0140p
        /* renamed from: b */
        IntentFilter mo35582b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0140p
        /* renamed from: c */
        public int mo35581c() {
            return this.f424c.m35485d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0140p
        /* renamed from: d */
        public void mo35580d() {
            AppCompatDelegateImpl.this.mo35545e();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$r */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$r.class */
    private static class C0143r {
        /* renamed from: a */
        static void m35579a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$s */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$s.class */
    public class C0144s extends ContentFrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0144s(Context context) {
            super(context);
            AppCompatDelegateImpl.this = r4;
        }

        /* renamed from: b */
        private boolean m35578b(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m35630V(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m35578b((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.m35636P(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C1433a.m30126d(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$t */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$t.class */
    public final class C0145t implements AbstractC0193m.AbstractC0194a {
        C0145t() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: b */
        public void mo35224b(C0178g c0178g, boolean z) {
            C0178g mo35306F = c0178g.mo35306F();
            boolean z2 = mo35306F != c0178g;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                c0178g = mo35306F;
            }
            PanelFeatureState m35625a0 = appCompatDelegateImpl.m35625a0(c0178g);
            if (m35625a0 != null) {
                if (!z2) {
                    AppCompatDelegateImpl.this.m35635Q(m35625a0, z);
                    return;
                }
                AppCompatDelegateImpl.this.m35642M(m35625a0.f384a, m35625a0, mo35306F);
                AppCompatDelegateImpl.this.m35635Q(m35625a0, true);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0193m.AbstractC0194a
        /* renamed from: c */
        public boolean mo35223c(C0178g c0178g) {
            Window.Callback m35618h0;
            if (c0178g == c0178g.mo35306F()) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if (!appCompatDelegateImpl.f343J || (m35618h0 = appCompatDelegateImpl.m35618h0()) == null || AppCompatDelegateImpl.this.f355V) {
                    return true;
                }
                m35618h0.onMenuOpened(108, c0178g);
                return true;
            }
            return true;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        boolean z2 = i < 21;
        f329h = z2;
        f330i = new int[]{16842836};
        f331j = !"robolectric".equals(Build.FINGERPRINT);
        if (i >= 17) {
            z = true;
        }
        f332k = z;
        if (!z2 || f333l) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new C0123a(Thread.getDefaultUncaughtExceptionHandler()));
        f333l = true;
    }

    public AppCompatDelegateImpl(Activity activity, AbstractC0148b abstractC0148b) {
        this(activity, null, abstractC0148b, activity);
    }

    public AppCompatDelegateImpl(Dialog dialog, AbstractC0148b abstractC0148b) {
        this(dialog.getContext(), dialog.getWindow(), abstractC0148b, dialog);
    }

    private AppCompatDelegateImpl(Context context, Window window, AbstractC0148b abstractC0148b, Object obj) {
        C1502g<String, Integer> c1502g;
        Integer num;
        AppCompatActivity m35645K0;
        this.f335B = null;
        this.f336C = true;
        this.f356W = -100;
        this.f364e0 = new RunnableC0124b();
        this.f371n = context;
        this.f374q = abstractC0148b;
        this.f370m = obj;
        if (this.f356W == -100 && (obj instanceof Dialog) && (m35645K0 = m35645K0()) != null) {
            this.f356W = m35645K0.m35670J().mo35537m();
        }
        if (this.f356W == -100 && (num = (c1502g = f328g).get(obj.getClass().getName())) != null) {
            this.f356W = num.intValue();
            c1502g.remove(obj.getClass().getName());
        }
        if (window != null) {
            m35646K(window);
        }
        C0287f.m34937h();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m35656C0(r6, r8) != false) goto L9;
     */
    /* renamed from: B0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m35657B0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6, int r7, android.view.KeyEvent r8, int r9) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0.isSystem()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r6
            boolean r0 = r0.f396m
            if (r0 != 0) goto L24
            r0 = r11
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m35656C0(r1, r2)
            if (r0 == 0) goto L3e
        L24:
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f393j
            r12 = r0
            r0 = r11
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L3e
            r0 = r12
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r10 = r0
        L3e:
            r0 = r10
            if (r0 == 0) goto L57
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L57
            r0 = r5
            androidx.appcompat.widget.o r0 = r0.f378u
            if (r0 != 0) goto L57
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m35635Q(r1, r2)
        L57:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m35657B0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, int, android.view.KeyEvent, int):boolean");
    }

    /* renamed from: C0 */
    private boolean m35656C0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        AbstractC0315o abstractC0315o;
        AbstractC0315o abstractC0315o2;
        AbstractC0315o abstractC0315o3;
        if (this.f355V) {
            return false;
        }
        if (panelFeatureState.f396m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f350Q;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            m35635Q(panelFeatureState2, false);
        }
        Window.Callback m35618h0 = m35618h0();
        if (m35618h0 != null) {
            panelFeatureState.f392i = m35618h0.onCreatePanelView(panelFeatureState.f384a);
        }
        int i = panelFeatureState.f384a;
        boolean z = i == 0 || i == 108;
        if (z && (abstractC0315o3 = this.f378u) != null) {
            abstractC0315o3.setMenuPrepared();
        }
        if (panelFeatureState.f392i == null) {
            if (z) {
                m35658A0();
            }
            C0178g c0178g = panelFeatureState.f393j;
            if (c0178g == null || panelFeatureState.f401r) {
                if (c0178g == null && (!m35614l0(panelFeatureState) || panelFeatureState.f393j == null)) {
                    return false;
                }
                if (z && this.f378u != null) {
                    if (this.f379v == null) {
                        this.f379v = new C0131h();
                    }
                    this.f378u.setMenu(panelFeatureState.f393j, this.f379v);
                }
                panelFeatureState.f393j.m35382h0();
                if (!m35618h0.onCreatePanelMenu(panelFeatureState.f384a, panelFeatureState.f393j)) {
                    panelFeatureState.m35597c(null);
                    if (!z || (abstractC0315o2 = this.f378u) == null) {
                        return false;
                    }
                    abstractC0315o2.setMenu(null, this.f379v);
                    return false;
                }
                panelFeatureState.f401r = false;
            }
            panelFeatureState.f393j.m35382h0();
            Bundle bundle = panelFeatureState.f402s;
            if (bundle != null) {
                panelFeatureState.f393j.m35402R(bundle);
                panelFeatureState.f402s = null;
            }
            if (!m35618h0.onPreparePanel(0, panelFeatureState.f392i, panelFeatureState.f393j)) {
                if (z && (abstractC0315o = this.f378u) != null) {
                    abstractC0315o.setMenu(null, this.f379v);
                }
                panelFeatureState.f393j.m35383g0();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f399p = z2;
            panelFeatureState.f393j.setQwertyMode(z2);
            panelFeatureState.f393j.m35383g0();
        }
        panelFeatureState.f396m = true;
        panelFeatureState.f397n = false;
        this.f350Q = panelFeatureState;
        return true;
    }

    /* renamed from: D0 */
    private void m35655D0(boolean z) {
        AbstractC0315o abstractC0315o = this.f378u;
        if (abstractC0315o == null || !abstractC0315o.mo34801b() || (ViewConfiguration.get(this.f371n).hasPermanentMenuKey() && !this.f378u.mo34800c())) {
            PanelFeatureState m35620f0 = m35620f0(0, true);
            m35620f0.f400q = true;
            m35635Q(m35620f0, false);
            m35600z0(m35620f0, null);
            return;
        }
        Window.Callback m35618h0 = m35618h0();
        if (this.f378u.mo34802a() && z) {
            this.f378u.mo34799d();
            if (this.f355V) {
                return;
            }
            m35618h0.onPanelClosed(108, m35620f0(0, true).f393j);
        } else if (m35618h0 == null || this.f355V) {
        } else {
            if (this.f362c0 && (this.f363d0 & 1) != 0) {
                this.f372o.getDecorView().removeCallbacks(this.f364e0);
                this.f364e0.run();
            }
            PanelFeatureState m35620f02 = m35620f0(0, true);
            C0178g c0178g = m35620f02.f393j;
            if (c0178g == null || m35620f02.f401r || !m35618h0.onPreparePanel(0, m35620f02.f392i, c0178g)) {
                return;
            }
            m35618h0.onMenuOpened(108, m35620f02.f393j);
            this.f378u.mo34798e();
        }
    }

    /* renamed from: E0 */
    private int m35654E0(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        int i2 = i;
        if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        return i2;
    }

    /* renamed from: G0 */
    private boolean m35652G0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f372o.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C1679w.m29314U((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: I */
    private boolean m35650I(boolean z) {
        if (this.f355V) {
            return false;
        }
        int m35644L = m35644L();
        boolean m35643L0 = m35643L0(m35610p0(this.f371n, m35644L), z);
        if (m35644L == 0) {
            m35621e0(this.f371n).m35583e();
        } else {
            AbstractC0140p abstractC0140p = this.f360a0;
            if (abstractC0140p != null) {
                abstractC0140p.m35584a();
            }
        }
        if (m35644L == 3) {
            m35622d0(this.f371n).m35583e();
        } else {
            AbstractC0140p abstractC0140p2 = this.f361b0;
            if (abstractC0140p2 != null) {
                abstractC0140p2.m35584a();
            }
        }
        return m35643L0;
    }

    /* renamed from: J */
    private void m35648J() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f338E.findViewById(16908290);
        View decorView = this.f372o.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f371n.obtainStyledAttributes(C1432j.AppCompatTheme);
        obtainStyledAttributes.getValue(C1432j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C1432j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        int i = C1432j.AppCompatTheme_windowFixedWidthMajor;
        if (obtainStyledAttributes.hasValue(i)) {
            obtainStyledAttributes.getValue(i, contentFrameLayout.getFixedWidthMajor());
        }
        int i2 = C1432j.AppCompatTheme_windowFixedWidthMinor;
        if (obtainStyledAttributes.hasValue(i2)) {
            obtainStyledAttributes.getValue(i2, contentFrameLayout.getFixedWidthMinor());
        }
        int i3 = C1432j.AppCompatTheme_windowFixedHeightMajor;
        if (obtainStyledAttributes.hasValue(i3)) {
            obtainStyledAttributes.getValue(i3, contentFrameLayout.getFixedHeightMajor());
        }
        int i4 = C1432j.AppCompatTheme_windowFixedHeightMinor;
        if (obtainStyledAttributes.hasValue(i4)) {
            obtainStyledAttributes.getValue(i4, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: J0 */
    private void m35647J0() {
        if (!this.f337D) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    /* renamed from: K */
    private void m35646K(Window window) {
        if (this.f372o == null) {
            Window.Callback callback = window.getCallback();
            if (callback instanceof C0138n) {
                throw new IllegalStateException("AppCompat has already installed itself into the Window");
            }
            C0138n c0138n = new C0138n(callback);
            this.f373p = c0138n;
            window.setCallback(c0138n);
            C0286e0 m34947u = C0286e0.m34947u(this.f371n, null, f330i);
            Drawable m34960h = m34947u.m34960h(0);
            if (m34960h != null) {
                window.setBackgroundDrawable(m34960h);
            }
            m34947u.m34945w();
            this.f372o = window;
            return;
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: K0 */
    private AppCompatActivity m35645K0() {
        Context context = this.f371n;
        while (true) {
            Context context2 = context;
            if (context2 != null) {
                if (context2 instanceof AppCompatActivity) {
                    return (AppCompatActivity) context2;
                }
                if (!(context2 instanceof ContextWrapper)) {
                    return null;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                return null;
            }
        }
    }

    /* renamed from: L */
    private int m35644L() {
        int i = this.f356W;
        if (i == -100) {
            i = AbstractC0149c.m35538l();
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
    /* renamed from: L0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m35643L0(int r6, boolean r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.f371n
            r2 = r6
            r3 = 0
            android.content.res.Configuration r0 = r0.m35634R(r1, r2, r3)
            r8 = r0
            r0 = r5
            boolean r0 = r0.m35612n0()
            r9 = r0
            r0 = r5
            android.content.Context r0 = r0.f371n
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.uiMode
            r1 = 48
            r0 = r0 & r1
            r10 = r0
            r0 = r8
            int r0 = r0.uiMode
            r1 = 48
            r0 = r0 & r1
            r11 = r0
            r0 = 1
            r12 = r0
            r0 = r10
            r1 = r11
            if (r0 == r1) goto L78
            r0 = r7
            if (r0 == 0) goto L78
            r0 = r9
            if (r0 != 0) goto L78
            r0 = r5
            boolean r0 = r0.f352S
            if (r0 == 0) goto L78
            boolean r0 = androidx.appcompat.app.AppCompatDelegateImpl.f331j
            if (r0 != 0) goto L53
            r0 = r5
            boolean r0 = r0.f353T
            if (r0 == 0) goto L78
        L53:
            r0 = r5
            java.lang.Object r0 = r0.f370m
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L78
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChild()
            if (r0 != 0) goto L78
            r0 = r5
            java.lang.Object r0 = r0.f370m
            android.app.Activity r0 = (android.app.Activity) r0
            androidx.core.app.C0548a.m33477n(r0)
            r0 = 1
            r7 = r0
            goto L7a
        L78:
            r0 = 0
            r7 = r0
        L7a:
            r0 = r7
            if (r0 != 0) goto L94
            r0 = r10
            r1 = r11
            if (r0 == r1) goto L94
            r0 = r5
            r1 = r11
            r2 = r9
            r3 = 0
            r0.m35641M0(r1, r2, r3)
            r0 = r12
            r7 = r0
            goto L94
        L94:
            r0 = r7
            if (r0 == 0) goto Lac
            r0 = r5
            java.lang.Object r0 = r0.f370m
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto Lac
            r0 = r8
            androidx.appcompat.app.AppCompatActivity r0 = (androidx.appcompat.app.AppCompatActivity) r0
            r1 = r6
            r0.m35666O(r1)
        Lac:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m35643L0(int, boolean):boolean");
    }

    /* renamed from: M0 */
    private void m35641M0(int i, boolean z, Configuration configuration) {
        Resources resources = this.f371n.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            C0155g.m35495a(resources);
        }
        int i3 = this.f357X;
        if (i3 != 0) {
            this.f371n.setTheme(i3);
            if (i2 >= 23) {
                this.f371n.getTheme().applyStyle(this.f357X, true);
            }
        }
        if (z) {
            Object obj = this.f370m;
            if (!(obj instanceof Activity)) {
                return;
            }
            Activity activity = (Activity) obj;
            if (activity instanceof AbstractC0797h) {
                if (!((AbstractC0797h) activity).mo32372a().mo32397b().isAtLeast(Lifecycle.State.STARTED)) {
                    return;
                }
                activity.onConfigurationChanged(configuration2);
            } else if (!this.f354U) {
            } else {
                activity.onConfigurationChanged(configuration2);
            }
        }
    }

    /* renamed from: O */
    private void m35638O() {
        AbstractC0140p abstractC0140p = this.f360a0;
        if (abstractC0140p != null) {
            abstractC0140p.m35584a();
        }
        AbstractC0140p abstractC0140p2 = this.f361b0;
        if (abstractC0140p2 != null) {
            abstractC0140p2.m35584a();
        }
    }

    /* renamed from: O0 */
    private void m35637O0(View view) {
        view.setBackgroundColor((C1679w.m29322O(view) & 8192) != 0 ? C0586a.m33350d(this.f371n, C1425c.abc_decor_view_status_guard_light) : C0586a.m33350d(this.f371n, C1425c.abc_decor_view_status_guard));
    }

    /* renamed from: R */
    private Configuration m35634R(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* renamed from: S */
    private ViewGroup m35633S() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f371n.obtainStyledAttributes(C1432j.AppCompatTheme);
        int i = C1432j.AppCompatTheme_windowActionBar;
        if (!obtainStyledAttributes.hasValue(i)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(C1432j.AppCompatTheme_windowNoTitle, false)) {
            mo35554B(1);
        } else if (obtainStyledAttributes.getBoolean(i, false)) {
            mo35554B(108);
        }
        if (obtainStyledAttributes.getBoolean(C1432j.AppCompatTheme_windowActionBarOverlay, false)) {
            mo35554B(109);
        }
        if (obtainStyledAttributes.getBoolean(C1432j.AppCompatTheme_windowActionModeOverlay, false)) {
            mo35554B(10);
        }
        this.f346M = obtainStyledAttributes.getBoolean(C1432j.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        m35626Z();
        this.f372o.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f371n);
        if (this.f347N) {
            viewGroup = this.f345L ? (ViewGroup) from.inflate(C1429g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C1429g.abc_screen_simple, (ViewGroup) null);
        } else if (this.f346M) {
            viewGroup = (ViewGroup) from.inflate(C1429g.abc_dialog_title_material, (ViewGroup) null);
            this.f344K = false;
            this.f343J = false;
        } else if (this.f343J) {
            TypedValue typedValue = new TypedValue();
            this.f371n.getTheme().resolveAttribute(C1423a.actionBarTheme, typedValue, true);
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C1458d(this.f371n, typedValue.resourceId) : this.f371n).inflate(C1429g.abc_screen_toolbar, (ViewGroup) null);
            AbstractC0315o abstractC0315o = (AbstractC0315o) viewGroup2.findViewById(C1428f.decor_content_parent);
            this.f378u = abstractC0315o;
            abstractC0315o.setWindowCallback(m35618h0());
            if (this.f344K) {
                this.f378u.mo34797f(109);
            }
            if (this.f341H) {
                this.f378u.mo34797f(2);
            }
            viewGroup = viewGroup2;
            if (this.f342I) {
                this.f378u.mo34797f(5);
                viewGroup = viewGroup2;
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f343J + ", windowActionBarOverlay: " + this.f344K + ", android:windowIsFloating: " + this.f346M + ", windowActionModeOverlay: " + this.f345L + ", windowNoTitle: " + this.f347N + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            C1679w.m29341E0(viewGroup, new C0125c());
        } else if (viewGroup instanceof AbstractC0321s) {
            ((AbstractC0321s) viewGroup).setOnFitSystemWindowsListener(new C0126d());
        }
        if (this.f378u == null) {
            this.f339F = (TextView) viewGroup.findViewById(C1428f.title);
        }
        C0305k0.m34868c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C1428f.action_bar_activity_content);
        ViewGroup viewGroup3 = (ViewGroup) this.f372o.findViewById(16908290);
        if (viewGroup3 != null) {
            while (viewGroup3.getChildCount() > 0) {
                View childAt = viewGroup3.getChildAt(0);
                viewGroup3.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup3.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup3 instanceof FrameLayout) {
                ((FrameLayout) viewGroup3).setForeground(null);
            }
        }
        this.f372o.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new C0127e());
        return viewGroup;
    }

    /* renamed from: Y */
    private void m35627Y() {
        if (!this.f337D) {
            this.f338E = m35633S();
            CharSequence m35619g0 = m35619g0();
            if (!TextUtils.isEmpty(m35619g0)) {
                AbstractC0315o abstractC0315o = this.f378u;
                if (abstractC0315o != null) {
                    abstractC0315o.setWindowTitle(m35619g0);
                } else if (m35658A0() != null) {
                    m35658A0().mo35462s(m35619g0);
                } else {
                    TextView textView = this.f339F;
                    if (textView != null) {
                        textView.setText(m35619g0);
                    }
                }
            }
            m35648J();
            m35601y0(this.f338E);
            this.f337D = true;
            PanelFeatureState m35620f0 = m35620f0(0, false);
            if (this.f355V) {
                return;
            }
            if (m35620f0 != null && m35620f0.f393j != null) {
                return;
            }
            m35613m0(108);
        }
    }

    /* renamed from: Z */
    private void m35626Z() {
        if (this.f372o == null) {
            Object obj = this.f370m;
            if (obj instanceof Activity) {
                m35646K(((Activity) obj).getWindow());
            }
        }
        if (this.f372o != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    /* renamed from: b0 */
    private static Configuration m35624b0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f = configuration.fontScale;
            float f2 = configuration2.fontScale;
            if (f != f2) {
                configuration3.fontScale = f2;
            }
            int i = configuration.mcc;
            int i2 = configuration2.mcc;
            if (i != i2) {
                configuration3.mcc = i2;
            }
            int i3 = configuration.mnc;
            int i4 = configuration2.mnc;
            if (i3 != i4) {
                configuration3.mnc = i4;
            }
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 24) {
                C0136l.m35587a(configuration, configuration2, configuration3);
            } else if (!C1592c.m29668a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i6 = configuration.touchscreen;
            int i7 = configuration2.touchscreen;
            if (i6 != i7) {
                configuration3.touchscreen = i7;
            }
            int i8 = configuration.keyboard;
            int i9 = configuration2.keyboard;
            if (i8 != i9) {
                configuration3.keyboard = i9;
            }
            int i10 = configuration.keyboardHidden;
            int i11 = configuration2.keyboardHidden;
            if (i10 != i11) {
                configuration3.keyboardHidden = i11;
            }
            int i12 = configuration.navigation;
            int i13 = configuration2.navigation;
            if (i12 != i13) {
                configuration3.navigation = i13;
            }
            int i14 = configuration.navigationHidden;
            int i15 = configuration2.navigationHidden;
            if (i14 != i15) {
                configuration3.navigationHidden = i15;
            }
            int i16 = configuration.orientation;
            int i17 = configuration2.orientation;
            if (i16 != i17) {
                configuration3.orientation = i17;
            }
            int i18 = configuration.screenLayout;
            int i19 = configuration2.screenLayout;
            if ((i18 & 15) != (i19 & 15)) {
                configuration3.screenLayout |= i19 & 15;
            }
            int i20 = configuration.screenLayout;
            int i21 = configuration2.screenLayout;
            if ((i20 & 192) != (i21 & 192)) {
                configuration3.screenLayout |= i21 & 192;
            }
            int i22 = configuration.screenLayout;
            int i23 = configuration2.screenLayout;
            if ((i22 & 48) != (i23 & 48)) {
                configuration3.screenLayout |= i23 & 48;
            }
            int i24 = configuration.screenLayout;
            int i25 = configuration2.screenLayout;
            if ((i24 & 768) != (i25 & 768)) {
                configuration3.screenLayout |= i25 & 768;
            }
            if (i5 >= 26) {
                C0137m.m35586a(configuration, configuration2, configuration3);
            }
            int i26 = configuration.uiMode;
            int i27 = configuration2.uiMode;
            if ((i26 & 15) != (i27 & 15)) {
                configuration3.uiMode |= i27 & 15;
            }
            int i28 = configuration.uiMode;
            int i29 = configuration2.uiMode;
            if ((i28 & 48) != (i29 & 48)) {
                configuration3.uiMode |= i29 & 48;
            }
            int i30 = configuration.screenWidthDp;
            int i31 = configuration2.screenWidthDp;
            if (i30 != i31) {
                configuration3.screenWidthDp = i31;
            }
            int i32 = configuration.screenHeightDp;
            int i33 = configuration2.screenHeightDp;
            if (i32 != i33) {
                configuration3.screenHeightDp = i33;
            }
            int i34 = configuration.smallestScreenWidthDp;
            int i35 = configuration2.smallestScreenWidthDp;
            if (i34 != i35) {
                configuration3.smallestScreenWidthDp = i35;
            }
            if (i5 >= 17) {
                C0134j.m35589b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    /* renamed from: d0 */
    private AbstractC0140p m35622d0(Context context) {
        if (this.f361b0 == null) {
            this.f361b0 = new C0139o(context);
        }
        return this.f361b0;
    }

    /* renamed from: e0 */
    private AbstractC0140p m35621e0(Context context) {
        if (this.f360a0 == null) {
            this.f360a0 = new C0142q(C0157i.m35488a(context));
        }
        return this.f360a0;
    }

    /* renamed from: i0 */
    private void m35617i0() {
        m35627Y();
        if (!this.f343J || this.f375r != null) {
            return;
        }
        Object obj = this.f370m;
        if (obj instanceof Activity) {
            this.f375r = new C0159j((Activity) this.f370m, this.f344K);
        } else if (obj instanceof Dialog) {
            this.f375r = new C0159j((Dialog) this.f370m);
        }
        ActionBar actionBar = this.f375r;
        if (actionBar == null) {
            return;
        }
        actionBar.mo35464q(this.f365f0);
    }

    /* renamed from: j0 */
    private boolean m35616j0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f392i;
        boolean z = true;
        if (view != null) {
            panelFeatureState.f391h = view;
            return true;
        } else if (panelFeatureState.f393j == null) {
            return false;
        } else {
            if (this.f380w == null) {
                this.f380w = new C0145t();
            }
            View view2 = (View) panelFeatureState.m35599a(this.f380w);
            panelFeatureState.f391h = view2;
            if (view2 == null) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: k0 */
    private boolean m35615k0(PanelFeatureState panelFeatureState) {
        panelFeatureState.m35596d(m35623c0());
        panelFeatureState.f390g = new C0144s(panelFeatureState.f395l);
        panelFeatureState.f386c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == 108) goto L6;
     */
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m35614l0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m35614l0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState):boolean");
    }

    /* renamed from: m0 */
    private void m35613m0(int i) {
        this.f363d0 = (1 << i) | this.f363d0;
        if (!this.f362c0) {
            C1679w.m29289j0(this.f372o.getDecorView(), this.f364e0);
            this.f362c0 = true;
        }
    }

    /* renamed from: n0 */
    private boolean m35612n0() {
        if (!this.f359Z && (this.f370m instanceof Activity)) {
            PackageManager packageManager = this.f371n.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                int i = Build.VERSION.SDK_INT;
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f371n, this.f370m.getClass()), i >= 29 ? 269221888 : i >= 24 ? 786432 : 0);
                this.f358Y = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.f358Y = false;
            }
        }
        this.f359Z = true;
        return this.f358Y;
    }

    /* renamed from: s0 */
    private boolean m35607s0(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState m35620f0 = m35620f0(i, true);
            if (m35620f0.f398o) {
                return false;
            }
            return m35656C0(m35620f0, keyEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d2  */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m35604v0(int r5, android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m35604v0(int, android.view.KeyEvent):boolean");
    }

    /* renamed from: z0 */
    private void m35600z0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.f398o || this.f355V) {
            return;
        }
        if (panelFeatureState.f384a == 0) {
            if ((this.f371n.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback m35618h0 = m35618h0();
        if (m35618h0 != null && !m35618h0.onMenuOpened(panelFeatureState.f384a, panelFeatureState.f393j)) {
            m35635Q(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f371n.getSystemService("window");
        if (windowManager == null || !m35656C0(panelFeatureState, keyEvent)) {
            return;
        }
        ViewGroup viewGroup = panelFeatureState.f390g;
        if (viewGroup == null || panelFeatureState.f400q) {
            if (viewGroup == null) {
                if (!m35615k0(panelFeatureState) || panelFeatureState.f390g == null) {
                    return;
                }
            } else if (panelFeatureState.f400q && viewGroup.getChildCount() > 0) {
                panelFeatureState.f390g.removeAllViews();
            }
            if (!m35616j0(panelFeatureState) || !panelFeatureState.m35598b()) {
                panelFeatureState.f400q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = panelFeatureState.f391h.getLayoutParams();
            ViewGroup.LayoutParams layoutParams3 = layoutParams2;
            if (layoutParams2 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.f390g.setBackgroundResource(panelFeatureState.f385b);
            ViewParent parent = panelFeatureState.f391h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(panelFeatureState.f391h);
            }
            panelFeatureState.f390g.addView(panelFeatureState.f391h, layoutParams3);
            if (!panelFeatureState.f391h.hasFocus()) {
                panelFeatureState.f391h.requestFocus();
            }
        } else {
            View view = panelFeatureState.f392i;
            if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                i = -1;
                panelFeatureState.f397n = false;
                WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f387d, panelFeatureState.f388e, 1002, 8519680, -3);
                layoutParams4.gravity = panelFeatureState.f386c;
                layoutParams4.windowAnimations = panelFeatureState.f389f;
                windowManager.addView(panelFeatureState.f390g, layoutParams4);
                panelFeatureState.f398o = true;
            }
        }
        i = -2;
        panelFeatureState.f397n = false;
        WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f387d, panelFeatureState.f388e, 1002, 8519680, -3);
        layoutParams42.gravity = panelFeatureState.f386c;
        layoutParams42.windowAnimations = panelFeatureState.f389f;
        windowManager.addView(panelFeatureState.f390g, layoutParams42);
        panelFeatureState.f398o = true;
    }

    /* renamed from: A0 */
    final ActionBar m35658A0() {
        return this.f375r;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: B */
    public boolean mo35554B(int i) {
        int m35654E0 = m35654E0(i);
        if (!this.f347N || m35654E0 != 108) {
            if (this.f343J && m35654E0 == 1) {
                this.f343J = false;
            }
            if (m35654E0 == 1) {
                m35647J0();
                this.f347N = true;
                return true;
            } else if (m35654E0 == 2) {
                m35647J0();
                this.f341H = true;
                return true;
            } else if (m35654E0 == 5) {
                m35647J0();
                this.f342I = true;
                return true;
            } else if (m35654E0 == 10) {
                m35647J0();
                this.f345L = true;
                return true;
            } else if (m35654E0 == 108) {
                m35647J0();
                this.f343J = true;
                return true;
            } else if (m35654E0 != 109) {
                return this.f372o.requestFeature(m35654E0);
            } else {
                m35647J0();
                this.f344K = true;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: C */
    public void mo35553C(int i) {
        m35627Y();
        ViewGroup viewGroup = (ViewGroup) this.f338E.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f371n).inflate(i, viewGroup);
        this.f373p.m29995a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: D */
    public void mo35552D(View view) {
        m35627Y();
        ViewGroup viewGroup = (ViewGroup) this.f338E.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f373p.m29995a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: E */
    public void mo35551E(View view, ViewGroup.LayoutParams layoutParams) {
        m35627Y();
        ViewGroup viewGroup = (ViewGroup) this.f338E.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f373p.m29995a().onContentChanged();
    }

    /* renamed from: F0 */
    final boolean m35653F0() {
        ViewGroup viewGroup;
        return this.f337D && (viewGroup = this.f338E) != null && C1679w.m29313V(viewGroup);
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: G */
    public void mo35549G(int i) {
        this.f357X = i;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: H */
    public final void mo35548H(CharSequence charSequence) {
        this.f377t = charSequence;
        AbstractC0315o abstractC0315o = this.f378u;
        if (abstractC0315o != null) {
            abstractC0315o.setWindowTitle(charSequence);
        } else if (m35658A0() != null) {
            m35658A0().mo35462s(charSequence);
        } else {
            TextView textView = this.f339F;
            if (textView == null) {
                return;
            }
            textView.setText(charSequence);
        }
    }

    /* renamed from: H0 */
    public AbstractC1455b m35651H0(AbstractC1455b.AbstractC1456a abstractC1456a) {
        AbstractC0148b abstractC0148b;
        if (abstractC1456a != null) {
            AbstractC1455b abstractC1455b = this.f381x;
            if (abstractC1455b != null) {
                abstractC1455b.mo30036c();
            }
            C0132i c0132i = new C0132i(abstractC1456a);
            ActionBar mo35535o = mo35535o();
            if (mo35535o != null) {
                AbstractC1455b mo35461t = mo35535o.mo35461t(c0132i);
                this.f381x = mo35461t;
                if (mo35461t != null && (abstractC0148b = this.f374q) != null) {
                    abstractC0148b.mo35520d(mo35461t);
                }
            }
            if (this.f381x == null) {
                this.f381x = m35649I0(c0132i);
            }
            return this.f381x;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* renamed from: I0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    p020b.p021a.p028o.AbstractC1455b m35649I0(p020b.p021a.p028o.AbstractC1455b.AbstractC1456a r8) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m35649I0(b.a.o.b$a):b.a.o.b");
    }

    /* renamed from: M */
    void m35642M(int i, PanelFeatureState panelFeatureState, Menu menu) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        C0178g c0178g = menu;
        if (menu == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (i >= 0) {
                    PanelFeatureState[] panelFeatureStateArr = this.f349P;
                    panelFeatureState3 = panelFeatureState;
                    if (i < panelFeatureStateArr.length) {
                        panelFeatureState3 = panelFeatureStateArr[i];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            c0178g = menu;
            if (panelFeatureState3 != null) {
                c0178g = panelFeatureState3.f393j;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if ((panelFeatureState2 == null || panelFeatureState2.f398o) && !this.f355V) {
            this.f373p.m29995a().onPanelClosed(i, c0178g);
        }
    }

    /* renamed from: N */
    void m35640N(C0178g c0178g) {
        if (this.f348O) {
            return;
        }
        this.f348O = true;
        this.f378u.mo34796g();
        Window.Callback m35618h0 = m35618h0();
        if (m35618h0 != null && !this.f355V) {
            m35618h0.onPanelClosed(108, c0178g);
        }
        this.f348O = false;
    }

    /* renamed from: N0 */
    final int m35639N0(C1615e0 c1615e0, Rect rect) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        int m29588l = c1615e0 != null ? c1615e0.m29588l() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f382y;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
            i = m29588l;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f382y.getLayoutParams();
            boolean z4 = true;
            if (this.f382y.isShown()) {
                if (this.f366g0 == null) {
                    this.f366g0 = new Rect();
                    this.f367h0 = new Rect();
                }
                Rect rect2 = this.f366g0;
                Rect rect3 = this.f367h0;
                if (c1615e0 == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c1615e0.m29590j(), c1615e0.m29588l(), c1615e0.m29589k(), c1615e0.m29591i());
                }
                C0305k0.m34870a(this.f338E, rect2, rect3);
                int i2 = rect2.top;
                int i3 = rect2.left;
                int i4 = rect2.right;
                C1615e0 m29330K = C1679w.m29330K(this.f338E);
                int m29590j = m29330K == null ? 0 : m29330K.m29590j();
                int m29589k = m29330K == null ? 0 : m29330K.m29589k();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z3 = true;
                }
                if (i2 <= 0 || this.f340G != null) {
                    View view = this.f340G;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != m29590j || marginLayoutParams2.rightMargin != m29589k) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = m29590j;
                            marginLayoutParams2.rightMargin = m29589k;
                            this.f340G.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f371n);
                    this.f340G = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = m29590j;
                    layoutParams.rightMargin = m29589k;
                    this.f338E.addView(this.f340G, -1, layoutParams);
                }
                View view3 = this.f340G;
                boolean z5 = view3 != null;
                if (z5 && view3.getVisibility() != 0) {
                    m35637O0(this.f340G);
                }
                int i7 = m29588l;
                if (!this.f345L) {
                    i7 = m29588l;
                    if (z5) {
                        i7 = 0;
                    }
                }
                m29588l = i7;
                z4 = z3;
                z2 = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z4 = false;
            }
            i = m29588l;
            z = z2;
            if (z4) {
                this.f382y.setLayoutParams(marginLayoutParams);
                i = m29588l;
                z = z2;
            }
        }
        View view4 = this.f340G;
        if (view4 != null) {
            view4.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    /* renamed from: P */
    void m35636P(int i) {
        m35635Q(m35620f0(i, true), true);
    }

    /* renamed from: Q */
    void m35635Q(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        AbstractC0315o abstractC0315o;
        if (z && panelFeatureState.f384a == 0 && (abstractC0315o = this.f378u) != null && abstractC0315o.mo34802a()) {
            m35640N(panelFeatureState.f393j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f371n.getSystemService("window");
        if (windowManager != null && panelFeatureState.f398o && (viewGroup = panelFeatureState.f390g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                m35642M(panelFeatureState.f384a, panelFeatureState, null);
            }
        }
        panelFeatureState.f396m = false;
        panelFeatureState.f397n = false;
        panelFeatureState.f398o = false;
        panelFeatureState.f391h = null;
        panelFeatureState.f400q = true;
        if (this.f350Q != panelFeatureState) {
            return;
        }
        this.f350Q = null;
    }

    /* renamed from: T */
    public View m35632T(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z = false;
        if (this.f368i0 == null) {
            String string = this.f371n.obtainStyledAttributes(C1432j.AppCompatTheme).getString(C1432j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f368i0 = new C0152e();
            } else {
                try {
                    this.f368i0 = (C0152e) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f368i0 = new C0152e();
                }
            }
        }
        boolean z2 = f329h;
        if (z2) {
            if (this.f369j0 == null) {
                this.f369j0 = new C0154f();
            }
            if (this.f369j0.m35499a(attributeSet)) {
                z = true;
            } else if (!(attributeSet instanceof XmlPullParser)) {
                z = m35652G0((ViewParent) view);
            } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                z = true;
            }
        } else {
            z = false;
        }
        return this.f368i0.m35505q(view, str, context, attributeSet, z, z2, true, C0303j0.m34878b());
    }

    /* renamed from: U */
    void m35631U() {
        C0178g c0178g;
        AbstractC0315o abstractC0315o = this.f378u;
        if (abstractC0315o != null) {
            abstractC0315o.mo34796g();
        }
        if (this.f383z != null) {
            this.f372o.getDecorView().removeCallbacks(this.f334A);
            if (this.f383z.isShowing()) {
                try {
                    this.f383z.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f383z = null;
        }
        m35628X();
        PanelFeatureState m35620f0 = m35620f0(0, false);
        if (m35620f0 == null || (c0178g = m35620f0.f393j) == null) {
            return;
        }
        c0178g.close();
    }

    /* renamed from: V */
    boolean m35630V(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f370m;
        boolean z = true;
        if (((obj instanceof C1630f.AbstractC1631a) || (obj instanceof DialogC0150d)) && (decorView = this.f372o.getDecorView()) != null && C1630f.m29534d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f373p.m29995a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z = false;
        }
        return z ? m35608r0(keyCode, keyEvent) : m35605u0(keyCode, keyEvent);
    }

    /* renamed from: W */
    void m35629W(int i) {
        PanelFeatureState m35620f0;
        PanelFeatureState m35620f02 = m35620f0(i, true);
        if (m35620f02.f393j != null) {
            Bundle bundle = new Bundle();
            m35620f02.f393j.m35400T(bundle);
            if (bundle.size() > 0) {
                m35620f02.f402s = bundle;
            }
            m35620f02.f393j.m35382h0();
            m35620f02.f393j.clear();
        }
        m35620f02.f401r = true;
        m35620f02.f400q = true;
        if ((i != 108 && i != 0) || this.f378u == null || (m35620f0 = m35620f0(0, false)) == null) {
            return;
        }
        m35620f0.f396m = false;
        m35656C0(m35620f0, null);
    }

    /* renamed from: X */
    void m35628X() {
        C1601a0 c1601a0 = this.f335B;
        if (c1601a0 != null) {
            c1601a0.m29641b();
        }
    }

    @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
    /* renamed from: a */
    public boolean mo4426a(C0178g c0178g, MenuItem menuItem) {
        PanelFeatureState m35625a0;
        Window.Callback m35618h0 = m35618h0();
        if (m35618h0 == null || this.f355V || (m35625a0 = m35625a0(c0178g.mo35306F())) == null) {
            return false;
        }
        return m35618h0.onMenuItemSelected(m35625a0.f384a, menuItem);
    }

    /* renamed from: a0 */
    PanelFeatureState m35625a0(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f349P;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f393j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
    /* renamed from: b */
    public void mo4425b(C0178g c0178g) {
        m35655D0(true);
    }

    /* renamed from: c0 */
    final Context m35623c0() {
        ActionBar mo35535o = mo35535o();
        Context mo35467j = mo35535o != null ? mo35535o.mo35467j() : null;
        Context context = mo35467j;
        if (mo35467j == null) {
            context = this.f371n;
        }
        return context;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: d */
    public void mo35546d(View view, ViewGroup.LayoutParams layoutParams) {
        m35627Y();
        ((ViewGroup) this.f338E.findViewById(16908290)).addView(view, layoutParams);
        this.f373p.m29995a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: e */
    public boolean mo35545e() {
        return m35650I(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0.length <= r7) goto L6;
     */
    /* renamed from: f0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState m35620f0(int r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r0.f349P
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L12
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r7
            if (r0 > r1) goto L2e
        L12:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r0]
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L28
            r0 = r9
            r1 = 0
            r2 = r10
            r3 = 0
            r4 = r9
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L28:
            r0 = r6
            r1 = r10
            r0.f349P = r1
        L2e:
            r0 = r10
            r1 = r7
            r0 = r0[r1]
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r11
            if (r0 != 0) goto L4a
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r9 = r0
            r0 = r10
            r1 = r7
            r2 = r9
            r0[r1] = r2
        L4a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m35620f0(int, boolean):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    /* renamed from: g0 */
    final CharSequence m35619g0() {
        Object obj = this.f370m;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f377t;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: h */
    public Context mo35542h(Context context) {
        boolean z = true;
        this.f352S = true;
        int m35610p0 = m35610p0(context, m35644L());
        if (f332k && (context instanceof ContextThemeWrapper)) {
            try {
                C0143r.m35579a((ContextThemeWrapper) context, m35634R(context, m35610p0, null));
                return context;
            } catch (IllegalStateException e) {
            }
        }
        if (context instanceof C1458d) {
            try {
                ((C1458d) context).m30041a(m35634R(context, m35610p0, null));
                return context;
            } catch (IllegalStateException e2) {
            }
        }
        if (!f331j) {
            return super.mo35542h(context);
        }
        Configuration configuration = null;
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = C0134j.m35590a(context, configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            configuration = null;
            if (!configuration3.equals(configuration4)) {
                configuration = m35624b0(configuration3, configuration4);
            }
        }
        Configuration m35634R = m35634R(context, m35610p0, configuration);
        C1458d c1458d = new C1458d(context, C1431i.Theme_AppCompat_Empty);
        c1458d.m30041a(m35634R);
        try {
            if (context.getTheme() == null) {
                z = false;
            }
        } catch (NullPointerException e3) {
            z = false;
        }
        if (z) {
            C0605f.C0611d.m33262a(c1458d.getTheme());
        }
        return super.mo35542h(c1458d);
    }

    /* renamed from: h0 */
    final Window.Callback m35618h0() {
        return this.f372o.getCallback();
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: k */
    public <T extends View> T mo35539k(int i) {
        m35627Y();
        return (T) this.f372o.findViewById(i);
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: m */
    public int mo35537m() {
        return this.f356W;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: n */
    public MenuInflater mo35536n() {
        if (this.f376s == null) {
            m35617i0();
            ActionBar actionBar = this.f375r;
            this.f376s = new C1462g(actionBar != null ? actionBar.mo35467j() : this.f371n);
        }
        return this.f376s;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: o */
    public ActionBar mo35535o() {
        m35617i0();
        return this.f375r;
    }

    /* renamed from: o0 */
    public boolean m35611o0() {
        return this.f336C;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m35632T(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: p */
    public void mo35534p() {
        LayoutInflater from = LayoutInflater.from(this.f371n);
        if (from.getFactory() == null) {
            C1653g.m29426b(from, this);
        } else if (from.getFactory2() instanceof AppCompatDelegateImpl) {
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* renamed from: p0 */
    int m35610p0(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i == 0) {
                    if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                        return -1;
                    }
                    return m35621e0(context).mo35581c();
                } else if (i != 1 && i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                    return m35622d0(context).mo35581c();
                }
            }
            return i;
        }
        return -1;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: q */
    public void mo35533q() {
        ActionBar mo35535o = mo35535o();
        if (mo35535o == null || !mo35535o.m35710k()) {
            m35613m0(0);
        }
    }

    /* renamed from: q0 */
    boolean m35609q0() {
        AbstractC1455b abstractC1455b = this.f381x;
        if (abstractC1455b != null) {
            abstractC1455b.mo30036c();
            return true;
        }
        ActionBar mo35535o = mo35535o();
        return mo35535o != null && mo35535o.mo35470g();
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: r */
    public void mo35532r(Configuration configuration) {
        ActionBar mo35535o;
        if (this.f343J && this.f337D && (mo35535o = mo35535o()) != null) {
            mo35535o.mo35466l(configuration);
        }
        C0287f.m34943b().m34938g(this.f371n);
        m35650I(false);
    }

    /* renamed from: r0 */
    boolean m35608r0(int i, KeyEvent keyEvent) {
        boolean z = true;
        if (i != 4) {
            if (i != 82) {
                return false;
            }
            m35607s0(0, keyEvent);
            return true;
        }
        if ((keyEvent.getFlags() & 128) == 0) {
            z = false;
        }
        this.f351R = z;
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: s */
    public void mo35531s(Bundle bundle) {
        this.f352S = true;
        m35650I(false);
        m35626Z();
        Object obj = this.f370m;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = C0563f.m33455c((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                ActionBar m35658A0 = m35658A0();
                if (m35658A0 == null) {
                    this.f365f0 = true;
                } else {
                    m35658A0.mo35464q(true);
                }
            }
            AbstractC0149c.m35547c(this);
        }
        this.f353T = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo35530t() {
        /*
            r4 = this;
            r0 = r4
            java.lang.Object r0 = r0.f370m
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto Le
            r0 = r4
            androidx.appcompat.app.AbstractC0149c.m35524z(r0)
        Le:
            r0 = r4
            boolean r0 = r0.f362c0
            if (r0 == 0) goto L24
            r0 = r4
            android.view.Window r0 = r0.f372o
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.f364e0
            boolean r0 = r0.removeCallbacks(r1)
        L24:
            r0 = r4
            r1 = 0
            r0.f354U = r1
            r0 = r4
            r1 = 1
            r0.f355V = r1
            r0 = r4
            int r0 = r0.f356W
            r1 = -100
            if (r0 == r1) goto L68
            r0 = r4
            java.lang.Object r0 = r0.f370m
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L68
            r0 = r5
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L68
            b.e.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f328g
            r1 = r4
            java.lang.Object r1 = r1.f370m
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.f356W
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L79
        L68:
            b.e.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f328g
            r1 = r4
            java.lang.Object r1 = r1.f370m
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L79:
            r0 = r4
            androidx.appcompat.app.ActionBar r0 = r0.f375r
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L86
            r0 = r5
            r0.m35709m()
        L86:
            r0 = r4
            r0.m35638O()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.mo35530t():void");
    }

    /* renamed from: t0 */
    boolean m35606t0(int i, KeyEvent keyEvent) {
        ActionBar mo35535o = mo35535o();
        if (mo35535o == null || !mo35535o.mo35465n(i, keyEvent)) {
            PanelFeatureState panelFeatureState = this.f350Q;
            if (panelFeatureState != null && m35657B0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
                PanelFeatureState panelFeatureState2 = this.f350Q;
                if (panelFeatureState2 == null) {
                    return true;
                }
                panelFeatureState2.f397n = true;
                return true;
            } else if (this.f350Q != null) {
                return false;
            } else {
                PanelFeatureState m35620f0 = m35620f0(0, true);
                m35656C0(m35620f0, keyEvent);
                boolean m35657B0 = m35657B0(m35620f0, keyEvent.getKeyCode(), keyEvent, 1);
                m35620f0.f396m = false;
                return m35657B0;
            }
        }
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: u */
    public void mo35529u(Bundle bundle) {
        m35627Y();
    }

    /* renamed from: u0 */
    boolean m35605u0(int i, KeyEvent keyEvent) {
        if (i != 4) {
            if (i != 82) {
                return false;
            }
            m35604v0(0, keyEvent);
            return true;
        }
        boolean z = this.f351R;
        this.f351R = false;
        PanelFeatureState m35620f0 = m35620f0(0, false);
        if (m35620f0 == null || !m35620f0.f398o) {
            return m35609q0();
        } else if (z) {
            return true;
        } else {
            m35635Q(m35620f0, true);
            return true;
        }
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: v */
    public void mo35528v() {
        ActionBar mo35535o = mo35535o();
        if (mo35535o != null) {
            mo35535o.mo35463r(true);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: w */
    public void mo35527w(Bundle bundle) {
    }

    /* renamed from: w0 */
    void m35603w0(int i) {
        ActionBar mo35535o;
        if (i != 108 || (mo35535o = mo35535o()) == null) {
            return;
        }
        mo35535o.mo35469h(true);
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: x */
    public void mo35526x() {
        this.f354U = true;
        mo35545e();
    }

    /* renamed from: x0 */
    void m35602x0(int i) {
        if (i == 108) {
            ActionBar mo35535o = mo35535o();
            if (mo35535o == null) {
                return;
            }
            mo35535o.mo35469h(false);
        } else if (i != 0) {
        } else {
            PanelFeatureState m35620f0 = m35620f0(i, true);
            if (!m35620f0.f398o) {
                return;
            }
            m35635Q(m35620f0, false);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0149c
    /* renamed from: y */
    public void mo35525y() {
        this.f354U = false;
        ActionBar mo35535o = mo35535o();
        if (mo35535o != null) {
            mo35535o.mo35463r(false);
        }
    }

    /* renamed from: y0 */
    void m35601y0(ViewGroup viewGroup) {
    }
}
