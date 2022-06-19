package p086f;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
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
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0133c;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.widget.AbstractC0227f0;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0236h1;
import androidx.appcompat.widget.C0242j;
import androidx.appcompat.widget.C0264p0;
import androidx.appcompat.widget.C0303z0;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p026c0.C0802j;
import p066d0.C2134a;
import p086f.C2640c;
import p086f.C2680v;
import p097g.C2788a;
import p117h8.C3035k;
import p134j4.C3260w0;
import p140k.AbstractC3295a;
import p140k.C3298c;
import p140k.C3302f;
import p140k.Window$CallbackC3307h;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
import p226s.C4255d;
import p226s.C4263g;
/* renamed from: f.m */
/* loaded from: classes-dex2jar.jar:f/m.class */
public class LayoutInflater$Factory2C2654m extends AbstractC2653l implements C0136e.AbstractC0137a, LayoutInflater.Factory2 {

    /* renamed from: Z */
    public static final C4263g<String, Integer> f9098Z = new C4263g<>();

    /* renamed from: a0 */
    public static final int[] f9099a0 = {16842836};

    /* renamed from: b0 */
    public static final boolean f9100b0 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: c0 */
    public static final boolean f9101c0 = true;

    /* renamed from: A */
    public boolean f9102A;

    /* renamed from: B */
    public boolean f9103B;

    /* renamed from: C */
    public boolean f9104C;

    /* renamed from: D */
    public boolean f9105D;

    /* renamed from: E */
    public C2667k[] f9106E;

    /* renamed from: F */
    public C2667k f9107F;

    /* renamed from: G */
    public boolean f9108G;

    /* renamed from: H */
    public boolean f9109H;

    /* renamed from: I */
    public boolean f9110I;

    /* renamed from: J */
    public boolean f9111J;

    /* renamed from: K */
    public Configuration f9112K;

    /* renamed from: L */
    public int f9113L;

    /* renamed from: M */
    public int f9114M;

    /* renamed from: N */
    public boolean f9115N;

    /* renamed from: O */
    public boolean f9116O;

    /* renamed from: P */
    public AbstractC2663h f9117P;

    /* renamed from: R */
    public AbstractC2663h f9118R;

    /* renamed from: S */
    public boolean f9119S;

    /* renamed from: T */
    public int f9120T;

    /* renamed from: V */
    public boolean f9122V;

    /* renamed from: W */
    public Rect f9123W;

    /* renamed from: X */
    public Rect f9124X;

    /* renamed from: Y */
    public C2676s f9125Y;

    /* renamed from: c */
    public final Object f9126c;

    /* renamed from: d */
    public final Context f9127d;

    /* renamed from: e */
    public Window f9128e;

    /* renamed from: f */
    public C2661f f9129f;

    /* renamed from: g */
    public final AbstractC2652k f9130g;

    /* renamed from: h */
    public AbstractC2635a f9131h;

    /* renamed from: i */
    public MenuInflater f9132i;

    /* renamed from: j */
    public CharSequence f9133j;

    /* renamed from: k */
    public AbstractC0227f0 f9134k;

    /* renamed from: l */
    public C2658d f9135l;

    /* renamed from: m */
    public C2668l f9136m;

    /* renamed from: n */
    public AbstractC3295a f9137n;

    /* renamed from: o */
    public ActionBarContextView f9138o;

    /* renamed from: p */
    public PopupWindow f9139p;

    /* renamed from: q */
    public Runnable f9140q;

    /* renamed from: s */
    public boolean f9142s;

    /* renamed from: t */
    public ViewGroup f9143t;

    /* renamed from: u */
    public TextView f9144u;

    /* renamed from: v */
    public View f9145v;

    /* renamed from: w */
    public boolean f9146w;

    /* renamed from: x */
    public boolean f9147x;

    /* renamed from: y */
    public boolean f9148y;

    /* renamed from: z */
    public boolean f9149z;

    /* renamed from: r */
    public C3611y f9141r = null;

    /* renamed from: U */
    public final Runnable f9121U = new RunnableC2655a();

    /* renamed from: f.m$a */
    /* loaded from: classes-dex2jar.jar:f/m$a.class */
    public class RunnableC2655a implements Runnable {
        public RunnableC2655a() {
            LayoutInflater$Factory2C2654m.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            if ((layoutInflater$Factory2C2654m.f9120T & 1) != 0) {
                layoutInflater$Factory2C2654m.m3353J(0);
            }
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m2 = LayoutInflater$Factory2C2654m.this;
            if ((layoutInflater$Factory2C2654m2.f9120T & 4096) != 0) {
                layoutInflater$Factory2C2654m2.m3353J(108);
            }
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m3 = LayoutInflater$Factory2C2654m.this;
            layoutInflater$Factory2C2654m3.f9119S = false;
            layoutInflater$Factory2C2654m3.f9120T = 0;
        }
    }

    /* renamed from: f.m$b */
    /* loaded from: classes-dex2jar.jar:f/m$b.class */
    public class C2656b implements C2640c.AbstractC2641a {
        public C2656b() {
            LayoutInflater$Factory2C2654m.this = r4;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: a */
        public void mo3312a(Drawable drawable, int i) {
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            layoutInflater$Factory2C2654m.m3344S();
            AbstractC2635a abstractC2635a = layoutInflater$Factory2C2654m.f9131h;
            if (abstractC2635a != null) {
                abstractC2635a.mo3268n(drawable);
                abstractC2635a.mo3269m(i);
            }
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: b */
        public boolean mo3311b() {
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            layoutInflater$Factory2C2654m.m3344S();
            AbstractC2635a abstractC2635a = layoutInflater$Factory2C2654m.f9131h;
            return (abstractC2635a == null || (abstractC2635a.mo3274d() & 4) == 0) ? false : true;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: c */
        public Drawable mo3310c() {
            C0303z0 m8384p = C0303z0.m8384p(LayoutInflater$Factory2C2654m.this.m3348O(), null, new int[]{C3681R.attr.homeAsUpIndicator});
            Drawable m8393g = m8384p.m8393g(0);
            m8384p.f1164b.recycle();
            return m8393g;
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: d */
        public void mo3309d(int i) {
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            layoutInflater$Factory2C2654m.m3344S();
            AbstractC2635a abstractC2635a = layoutInflater$Factory2C2654m.f9131h;
            if (abstractC2635a != null) {
                abstractC2635a.mo3269m(i);
            }
        }

        @Override // p086f.C2640c.AbstractC2641a
        /* renamed from: e */
        public Context mo3308e() {
            return LayoutInflater$Factory2C2654m.this.m3348O();
        }
    }

    /* renamed from: f.m$c */
    /* loaded from: classes-dex2jar.jar:f/m$c.class */
    public interface AbstractC2657c {
    }

    /* renamed from: f.m$d */
    /* loaded from: classes-dex2jar.jar:f/m$d.class */
    public final class C2658d implements AbstractC0144i.AbstractC0145a {
        public C2658d() {
            LayoutInflater$Factory2C2654m.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: a */
        public void mo3279a(C0136e c0136e, boolean z) {
            LayoutInflater$Factory2C2654m.this.m3357F(c0136e);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: b */
        public boolean mo3278b(C0136e c0136e) {
            Window.Callback m3345R = LayoutInflater$Factory2C2654m.this.m3345R();
            if (m3345R != null) {
                m3345R.onMenuOpened(108, c0136e);
                return true;
            }
            return true;
        }
    }

    /* renamed from: f.m$e */
    /* loaded from: classes-dex2jar.jar:f/m$e.class */
    public class C2659e implements AbstractC3295a.AbstractC3296a {

        /* renamed from: a */
        public AbstractC3295a.AbstractC3296a f9153a;

        /* renamed from: f.m$e$a */
        /* loaded from: classes-dex2jar.jar:f/m$e$a.class */
        public class C2660a extends C3260w0 {
            public C2660a() {
                C2659e.this = r4;
            }

            @Override // p163m0.AbstractC3614z
            /* renamed from: c */
            public void mo1976c(View view) {
                LayoutInflater$Factory2C2654m.this.f9138o.setVisibility(8);
                LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
                PopupWindow popupWindow = layoutInflater$Factory2C2654m.f9139p;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflater$Factory2C2654m.f9138o.getParent() instanceof View) {
                    View view2 = (View) LayoutInflater$Factory2C2654m.this.f9138o.getParent();
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    C3589v.C3597h.m2051c(view2);
                }
                LayoutInflater$Factory2C2654m.this.f9138o.m8668h();
                LayoutInflater$Factory2C2654m.this.f9141r.m1981d(null);
                LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m2 = LayoutInflater$Factory2C2654m.this;
                layoutInflater$Factory2C2654m2.f9141r = null;
                ViewGroup viewGroup = layoutInflater$Factory2C2654m2.f9143t;
                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                C3589v.C3597h.m2051c(viewGroup);
            }
        }

        public C2659e(AbstractC3295a.AbstractC3296a abstractC3296a) {
            LayoutInflater$Factory2C2654m.this = r4;
            this.f9153a = abstractC3296a;
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: a */
        public boolean mo2408a(AbstractC3295a abstractC3295a, MenuItem menuItem) {
            return this.f9153a.mo2408a(abstractC3295a, menuItem);
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: b */
        public boolean mo2407b(AbstractC3295a abstractC3295a, Menu menu) {
            return this.f9153a.mo2407b(abstractC3295a, menu);
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: c */
        public boolean mo2406c(AbstractC3295a abstractC3295a, Menu menu) {
            ViewGroup viewGroup = LayoutInflater$Factory2C2654m.this.f9143t;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3597h.m2051c(viewGroup);
            return this.f9153a.mo2406c(abstractC3295a, menu);
        }

        @Override // p140k.AbstractC3295a.AbstractC3296a
        /* renamed from: d */
        public void mo2405d(AbstractC3295a abstractC3295a) {
            this.f9153a.mo2405d(abstractC3295a);
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            if (layoutInflater$Factory2C2654m.f9139p != null) {
                layoutInflater$Factory2C2654m.f9128e.getDecorView().removeCallbacks(LayoutInflater$Factory2C2654m.this.f9140q);
            }
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m2 = LayoutInflater$Factory2C2654m.this;
            if (layoutInflater$Factory2C2654m2.f9138o != null) {
                layoutInflater$Factory2C2654m2.m3352K();
                LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m3 = LayoutInflater$Factory2C2654m.this;
                C3611y m2122b = C3589v.m2122b(layoutInflater$Factory2C2654m3.f9138o);
                m2122b.m1984a(0.0f);
                layoutInflater$Factory2C2654m3.f9141r = m2122b;
                C3611y c3611y = LayoutInflater$Factory2C2654m.this.f9141r;
                C2660a c2660a = new C2660a();
                View view = c3611y.f11802a.get();
                if (view != null) {
                    c3611y.m1980e(view, c2660a);
                }
            }
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m4 = LayoutInflater$Factory2C2654m.this;
            AbstractC2652k abstractC2652k = layoutInflater$Factory2C2654m4.f9130g;
            if (abstractC2652k != null) {
                abstractC2652k.mo3298c(layoutInflater$Factory2C2654m4.f9137n);
            }
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m5 = LayoutInflater$Factory2C2654m.this;
            layoutInflater$Factory2C2654m5.f9137n = null;
            ViewGroup viewGroup = layoutInflater$Factory2C2654m5.f9143t;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3597h.m2051c(viewGroup);
        }
    }

    /* renamed from: f.m$f */
    /* loaded from: classes-dex2jar.jar:f/m$f.class */
    public class C2661f extends Window$CallbackC3307h {

        /* renamed from: b */
        public AbstractC2657c f9156b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2661f(Window.Callback callback) {
            super(callback);
            LayoutInflater$Factory2C2654m.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00a4  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.ActionMode m3307a(android.view.ActionMode.Callback r8) {
            /*
                Method dump skipped, instructions count: 736
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.C2661f.m3307a(android.view.ActionMode$Callback):android.view.ActionMode");
        }

        @Override // android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C2654m.this.m3354I(keyEvent) || this.f11215a.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
            if (r0 != false) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00a6, code lost:
            if (r11 == false) goto L24;
         */
        @Override // android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchKeyShortcutEvent(android.view.KeyEvent r7) {
            /*
                r6 = this;
                r0 = r6
                android.view.Window$Callback r0 = r0.f11215a
                r1 = r7
                boolean r0 = r0.dispatchKeyShortcutEvent(r1)
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 != 0) goto La9
                r0 = r6
                f.m r0 = p086f.LayoutInflater$Factory2C2654m.this
                r10 = r0
                r0 = r7
                int r0 = r0.getKeyCode()
                r11 = r0
                r0 = r10
                r0.m3344S()
                r0 = r10
                f.a r0 = r0.f9131h
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L3f
                r0 = r12
                r1 = r11
                r2 = r7
                boolean r0 = r0.mo3271i(r1, r2)
                if (r0 == 0) goto L3f
            L39:
                r0 = 1
                r11 = r0
                goto La4
            L3f:
                r0 = r10
                f.m$k r0 = r0.f9107F
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L6d
                r0 = r10
                r1 = r12
                r2 = r7
                int r2 = r2.getKeyCode()
                r3 = r7
                r4 = 1
                boolean r0 = r0.m3340W(r1, r2, r3, r4)
                if (r0 == 0) goto L6d
                r0 = r10
                f.m$k r0 = r0.f9107F
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L39
                r0 = r7
                r1 = 1
                r0.f9177l = r1
                goto L39
            L6d:
                r0 = r10
                f.m$k r0 = r0.f9107F
                if (r0 != 0) goto La1
                r0 = r10
                r1 = 0
                f.m$k r0 = r0.m3346Q(r1)
                r12 = r0
                r0 = r10
                r1 = r12
                r2 = r7
                boolean r0 = r0.m3339X(r1, r2)
                r0 = r10
                r1 = r12
                r2 = r7
                int r2 = r2.getKeyCode()
                r3 = r7
                r4 = 1
                boolean r0 = r0.m3340W(r1, r2, r3, r4)
                r8 = r0
                r0 = r12
                r1 = 0
                r0.f9176k = r1
                r0 = r8
                if (r0 == 0) goto La1
                goto L39
            La1:
                r0 = 0
                r11 = r0
            La4:
                r0 = r11
                if (r0 == 0) goto Lab
            La9:
                r0 = 1
                r9 = r0
            Lab:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.C2661f.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0136e)) {
                return this.f11215a.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // android.view.Window.Callback
        public View onCreatePanelView(int i) {
            AbstractC2657c abstractC2657c = this.f9156b;
            if (abstractC2657c != null) {
                C2680v.C2685e c2685e = (C2680v.C2685e) abstractC2657c;
                Objects.requireNonNull(c2685e);
                View view = i == 0 ? new View(C2680v.this.f9212a.getContext()) : null;
                if (view != null) {
                    return view;
                }
            }
            return this.f11215a.onCreatePanelView(i);
        }

        @Override // android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            this.f11215a.onMenuOpened(i, menu);
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            Objects.requireNonNull(layoutInflater$Factory2C2654m);
            if (i == 108) {
                layoutInflater$Factory2C2654m.m3344S();
                AbstractC2635a abstractC2635a = layoutInflater$Factory2C2654m.f9131h;
                if (abstractC2635a == null) {
                    return true;
                }
                abstractC2635a.mo3275c(true);
                return true;
            }
            return true;
        }

        @Override // android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            this.f11215a.onPanelClosed(i, menu);
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            Objects.requireNonNull(layoutInflater$Factory2C2654m);
            if (i == 108) {
                layoutInflater$Factory2C2654m.m3344S();
                AbstractC2635a abstractC2635a = layoutInflater$Factory2C2654m.f9131h;
                if (abstractC2635a == null) {
                    return;
                }
                abstractC2635a.mo3275c(false);
            } else if (i != 0) {
            } else {
                C2667k m3346Q = layoutInflater$Factory2C2654m.m3346Q(i);
                if (!m3346Q.f9178m) {
                    return;
                }
                layoutInflater$Factory2C2654m.m3356G(m3346Q, false);
            }
        }

        @Override // android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0136e c0136e = menu instanceof C0136e ? (C0136e) menu : null;
            if (i == 0 && c0136e == null) {
                return false;
            }
            if (c0136e != null) {
                c0136e.f450x = true;
            }
            AbstractC2657c abstractC2657c = this.f9156b;
            if (abstractC2657c != null) {
                C2680v.C2685e c2685e = (C2680v.C2685e) abstractC2657c;
                if (i == 0) {
                    C2680v c2680v = C2680v.this;
                    if (!c2680v.f9215d) {
                        c2680v.f9212a.mo8523c();
                        C2680v.this.f9215d = true;
                    }
                }
            }
            boolean onPreparePanel = this.f11215a.onPreparePanel(i, view, menu);
            if (c0136e != null) {
                c0136e.f450x = false;
            }
            return onPreparePanel;
        }

        @Override // android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0136e c0136e = LayoutInflater$Factory2C2654m.this.m3346Q(0).f9173h;
            if (c0136e != null) {
                this.f11215a.onProvideKeyboardShortcuts(list, c0136e, i);
            } else {
                this.f11215a.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            Objects.requireNonNull(LayoutInflater$Factory2C2654m.this);
            return m3307a(callback);
        }

        @Override // android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            Objects.requireNonNull(LayoutInflater$Factory2C2654m.this);
            return i != 0 ? this.f11215a.onWindowStartingActionMode(callback, i) : m3307a(callback);
        }
    }

    /* renamed from: f.m$g */
    /* loaded from: classes-dex2jar.jar:f/m$g.class */
    public class C2662g extends AbstractC2663h {

        /* renamed from: c */
        public final PowerManager f9158c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2662g(Context context) {
            super();
            LayoutInflater$Factory2C2654m.this = r5;
            this.f9158c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // p086f.LayoutInflater$Factory2C2654m.AbstractC2663h
        /* renamed from: b */
        public IntentFilter mo3304b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // p086f.LayoutInflater$Factory2C2654m.AbstractC2663h
        /* renamed from: c */
        public int mo3303c() {
            return this.f9158c.isPowerSaveMode() ? 2 : 1;
        }

        @Override // p086f.LayoutInflater$Factory2C2654m.AbstractC2663h
        /* renamed from: d */
        public void mo3302d() {
            LayoutInflater$Factory2C2654m.this.m3361B();
        }
    }

    /* renamed from: f.m$h */
    /* loaded from: classes-dex2jar.jar:f/m$h.class */
    public abstract class AbstractC2663h {

        /* renamed from: a */
        public BroadcastReceiver f9160a;

        /* renamed from: f.m$h$a */
        /* loaded from: classes-dex2jar.jar:f/m$h$a.class */
        public class C2664a extends BroadcastReceiver {
            public C2664a() {
                AbstractC2663h.this = r4;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                AbstractC2663h.this.mo3302d();
            }
        }

        public AbstractC2663h() {
            LayoutInflater$Factory2C2654m.this = r4;
        }

        /* renamed from: a */
        public void m3306a() {
            BroadcastReceiver broadcastReceiver = this.f9160a;
            if (broadcastReceiver != null) {
                try {
                    LayoutInflater$Factory2C2654m.this.f9127d.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException e) {
                }
                this.f9160a = null;
            }
        }

        /* renamed from: b */
        public abstract IntentFilter mo3304b();

        /* renamed from: c */
        public abstract int mo3303c();

        /* renamed from: d */
        public abstract void mo3302d();

        /* renamed from: e */
        public void m3305e() {
            m3306a();
            IntentFilter mo3304b = mo3304b();
            if (mo3304b == null || mo3304b.countActions() == 0) {
                return;
            }
            if (this.f9160a == null) {
                this.f9160a = new C2664a();
            }
            LayoutInflater$Factory2C2654m.this.f9127d.registerReceiver(this.f9160a, mo3304b);
        }
    }

    /* renamed from: f.m$i */
    /* loaded from: classes-dex2jar.jar:f/m$i.class */
    public class C2665i extends AbstractC2663h {

        /* renamed from: c */
        public final C2687x f9163c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2665i(C2687x c2687x) {
            super();
            LayoutInflater$Factory2C2654m.this = r4;
            this.f9163c = c2687x;
        }

        @Override // p086f.LayoutInflater$Factory2C2654m.AbstractC2663h
        /* renamed from: b */
        public IntentFilter mo3304b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x00b8, code lost:
            if (r21.getTime() > r20.getTime()) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00c4, code lost:
            if (r21 == null) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00c7, code lost:
            r19 = r21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00cd, code lost:
            if (r19 == null) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d0, code lost:
            r0 = r0.f9233c;
            r0 = java.lang.System.currentTimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00de, code lost:
            if (p086f.C2686w.f9226d != null) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00e1, code lost:
            p086f.C2686w.f9226d = new p086f.C2686w();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00eb, code lost:
            r0 = p086f.C2686w.f9226d;
            r0.m3277a(r0 - 86400000, r19.getLatitude(), r19.getLongitude());
            r0.m3277a(r0, r19.getLatitude(), r19.getLongitude());
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x011c, code lost:
            if (r0.f9229c != 1) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x011f, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0122, code lost:
            r0 = r0.f9228b;
            r0 = r0.f9227a;
            r0.m3277a(r0 + 86400000, r19.getLatitude(), r19.getLongitude());
            r0 = r0.f9228b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0150, code lost:
            if (r0 == (-1)) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0159, code lost:
            if (r0 != (-1)) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0164, code lost:
            if (r0 <= r0) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0167, code lost:
            r11 = r0 + 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0173, code lost:
            if (r0 <= r0) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0176, code lost:
            r11 = r0 + 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x017e, code lost:
            r11 = r0 + 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0182, code lost:
            r11 = r11 + 60000;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x018b, code lost:
            r11 = 43200000 + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0192, code lost:
            r0.f9234a = r16;
            r0.f9235b = r11;
            r16 = r0.f9234a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x01a8, code lost:
            android.util.Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
            r0 = java.util.Calendar.getInstance().get(11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x01be, code lost:
            if (r0 < 6) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x01c1, code lost:
            r16 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x01c9, code lost:
            if (r0 < 22) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x01cc, code lost:
            r16 = true;
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x007b  */
        /* JADX WARN: Type inference failed for: r0v65, types: [long] */
        /* JADX WARN: Type inference failed for: r0v71, types: [long] */
        /* JADX WARN: Type inference failed for: r0v75, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        @Override // p086f.LayoutInflater$Factory2C2654m.AbstractC2663h
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo3303c() {
            /*
                Method dump skipped, instructions count: 483
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.C2665i.mo3303c():int");
        }

        @Override // p086f.LayoutInflater$Factory2C2654m.AbstractC2663h
        /* renamed from: d */
        public void mo3302d() {
            LayoutInflater$Factory2C2654m.this.m3361B();
        }
    }

    /* renamed from: f.m$j */
    /* loaded from: classes-dex2jar.jar:f/m$j.class */
    public class C2666j extends ContentFrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2666j(Context context) {
            super(context, null);
            LayoutInflater$Factory2C2654m.this = r5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C2654m.this.m3354I(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
                    layoutInflater$Factory2C2654m.m3356G(layoutInflater$Factory2C2654m.m3346Q(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C2788a.m3015b(getContext(), i));
        }
    }

    /* renamed from: f.m$k */
    /* loaded from: classes-dex2jar.jar:f/m$k.class */
    public static final class C2667k {

        /* renamed from: a */
        public int f9166a;

        /* renamed from: b */
        public int f9167b;

        /* renamed from: c */
        public int f9168c;

        /* renamed from: d */
        public int f9169d;

        /* renamed from: e */
        public ViewGroup f9170e;

        /* renamed from: f */
        public View f9171f;

        /* renamed from: g */
        public View f9172g;

        /* renamed from: h */
        public C0136e f9173h;

        /* renamed from: i */
        public C0133c f9174i;

        /* renamed from: j */
        public Context f9175j;

        /* renamed from: k */
        public boolean f9176k;

        /* renamed from: l */
        public boolean f9177l;

        /* renamed from: m */
        public boolean f9178m;

        /* renamed from: n */
        public boolean f9179n = false;

        /* renamed from: o */
        public boolean f9180o;

        /* renamed from: p */
        public Bundle f9181p;

        public C2667k(int i) {
            this.f9166a = i;
        }

        /* renamed from: a */
        public void m3301a(C0136e c0136e) {
            C0133c c0133c;
            C0136e c0136e2 = this.f9173h;
            if (c0136e == c0136e2) {
                return;
            }
            if (c0136e2 != null) {
                c0136e2.m8704t(this.f9174i);
            }
            this.f9173h = c0136e;
            if (c0136e == null || (c0133c = this.f9174i) == null) {
                return;
            }
            c0136e.m8713b(c0133c, c0136e.f427a);
        }
    }

    /* renamed from: f.m$l */
    /* loaded from: classes-dex2jar.jar:f/m$l.class */
    public final class C2668l implements AbstractC0144i.AbstractC0145a {
        public C2668l() {
            LayoutInflater$Factory2C2654m.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: a */
        public void mo3279a(C0136e c0136e, boolean z) {
            C0136e mo8676k = c0136e.mo8676k();
            boolean z2 = mo8676k != c0136e;
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
            if (z2) {
                c0136e = mo8676k;
            }
            C2667k m3349N = layoutInflater$Factory2C2654m.m3349N(c0136e);
            if (m3349N != null) {
                if (!z2) {
                    LayoutInflater$Factory2C2654m.this.m3356G(m3349N, z);
                    return;
                }
                LayoutInflater$Factory2C2654m.this.m3358E(m3349N.f9166a, m3349N, mo8676k);
                LayoutInflater$Factory2C2654m.this.m3356G(m3349N, true);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: b */
        public boolean mo3278b(C0136e c0136e) {
            Window.Callback m3345R;
            if (c0136e == c0136e.mo8676k()) {
                LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = LayoutInflater$Factory2C2654m.this;
                if (!layoutInflater$Factory2C2654m.f9148y || (m3345R = layoutInflater$Factory2C2654m.m3345R()) == null || LayoutInflater$Factory2C2654m.this.f9111J) {
                    return true;
                }
                m3345R.onMenuOpened(108, c0136e);
                return true;
            }
            return true;
        }
    }

    public LayoutInflater$Factory2C2654m(Context context, Window window, AbstractC2652k abstractC2652k, Object obj) {
        C4263g<String, Integer> c4263g;
        Integer orDefault;
        ActivityC2651j activityC2651j;
        this.f9113L = -100;
        this.f9127d = context;
        this.f9130g = abstractC2652k;
        this.f9126c = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof ActivityC2651j)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    activityC2651j = (ActivityC2651j) context;
                    break;
                }
            }
            activityC2651j = null;
            if (activityC2651j != null) {
                this.f9113L = activityC2651j.m3366r().mo3331g();
            }
        }
        if (this.f9113L == -100 && (orDefault = (c4263g = f9098Z).getOrDefault(this.f9126c.getClass().getName(), null)) != null) {
            this.f9113L = orDefault.intValue();
            c4263g.remove(this.f9126c.getClass().getName());
        }
        if (window != null) {
            m3359D(window);
        }
        C0242j.m8482e();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: A */
    public final void mo3362A(CharSequence charSequence) {
        this.f9133j = charSequence;
        AbstractC0227f0 abstractC0227f0 = this.f9134k;
        if (abstractC0227f0 != null) {
            abstractC0227f0.setWindowTitle(charSequence);
            return;
        }
        AbstractC2635a abstractC2635a = this.f9131h;
        if (abstractC2635a != null) {
            abstractC2635a.mo3264r(charSequence);
            return;
        }
        TextView textView = this.f9144u;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    /* renamed from: B */
    public boolean m3361B() {
        return m3360C(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x029a  */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3360C(boolean r7) {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.m3360C(boolean):boolean");
    }

    /* renamed from: D */
    public final void m3359D(Window window) {
        if (this.f9128e == null) {
            Window.Callback callback = window.getCallback();
            if (callback instanceof C2661f) {
                throw new IllegalStateException("AppCompat has already installed itself into the Window");
            }
            C2661f c2661f = new C2661f(callback);
            this.f9129f = c2661f;
            window.setCallback(c2661f);
            C0303z0 m8384p = C0303z0.m8384p(this.f9127d, null, f9099a0);
            Drawable m8392h = m8384p.m8392h(0);
            if (m8392h != null) {
                window.setBackgroundDrawable(m8392h);
            }
            m8384p.f1164b.recycle();
            this.f9128e = window;
            return;
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: E */
    public void m3358E(int i, C2667k c2667k, Menu menu) {
        C0136e c0136e = menu;
        if (menu == null) {
            c0136e = c2667k.f9173h;
        }
        if (c2667k.f9178m && !this.f9111J) {
            this.f9129f.f11215a.onPanelClosed(i, c0136e);
        }
    }

    /* renamed from: F */
    public void m3357F(C0136e c0136e) {
        if (this.f9105D) {
            return;
        }
        this.f9105D = true;
        this.f9134k.mo8527l();
        Window.Callback m3345R = m3345R();
        if (m3345R != null && !this.f9111J) {
            m3345R.onPanelClosed(108, c0136e);
        }
        this.f9105D = false;
    }

    /* renamed from: G */
    public void m3356G(C2667k c2667k, boolean z) {
        ViewGroup viewGroup;
        AbstractC0227f0 abstractC0227f0;
        if (z && c2667k.f9166a == 0 && (abstractC0227f0 = this.f9134k) != null && abstractC0227f0.mo8534b()) {
            m3357F(c2667k.f9173h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f9127d.getSystemService("window");
        if (windowManager != null && c2667k.f9178m && (viewGroup = c2667k.f9170e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                m3358E(c2667k.f9166a, c2667k, null);
            }
        }
        c2667k.f9176k = false;
        c2667k.f9177l = false;
        c2667k.f9178m = false;
        c2667k.f9171f = null;
        c2667k.f9179n = true;
        if (this.f9107F != c2667k) {
            return;
        }
        this.f9107F = null;
    }

    /* renamed from: H */
    public final Configuration m3355H(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0220  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3354I(android.view.KeyEvent r5) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.m3354I(android.view.KeyEvent):boolean");
    }

    /* renamed from: J */
    public void m3353J(int i) {
        C2667k m3346Q = m3346Q(i);
        if (m3346Q.f9173h != null) {
            Bundle bundle = new Bundle();
            m3346Q.f9173h.m8702v(bundle);
            if (bundle.size() > 0) {
                m3346Q.f9181p = bundle;
            }
            m3346Q.f9173h.m8699y();
            m3346Q.f9173h.clear();
        }
        m3346Q.f9180o = true;
        m3346Q.f9179n = true;
        if ((i == 108 || i == 0) && this.f9134k != null) {
            C2667k m3346Q2 = m3346Q(0);
            m3346Q2.f9176k = false;
            m3339X(m3346Q2, null);
        }
    }

    /* renamed from: K */
    public void m3352K() {
        C3611y c3611y = this.f9141r;
        if (c3611y != null) {
            c3611y.m1983b();
        }
    }

    /* renamed from: L */
    public final void m3351L() {
        ViewGroup viewGroup;
        if (!this.f9142s) {
            TypedArray obtainStyledAttributes = this.f9127d.obtainStyledAttributes(C3035k.f10223j);
            if (!obtainStyledAttributes.hasValue(C3681R.styleable.AppCompatTheme_windowActionBar)) {
                obtainStyledAttributes.recycle();
                throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
            }
            if (obtainStyledAttributes.getBoolean(C3681R.styleable.AppCompatTheme_windowNoTitle, false)) {
                mo3318u(1);
            } else if (obtainStyledAttributes.getBoolean(C3681R.styleable.AppCompatTheme_windowActionBar, false)) {
                mo3318u(108);
            }
            if (obtainStyledAttributes.getBoolean(C3681R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                mo3318u(109);
            }
            if (obtainStyledAttributes.getBoolean(C3681R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                mo3318u(10);
            }
            this.f9103B = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
            m3350M();
            this.f9128e.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f9127d);
            if (this.f9104C) {
                viewGroup = this.f9102A ? (ViewGroup) from.inflate(C3681R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C3681R.layout.abc_screen_simple, (ViewGroup) null);
            } else if (this.f9103B) {
                viewGroup = (ViewGroup) from.inflate(C3681R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.f9149z = false;
                this.f9148y = false;
            } else if (this.f9148y) {
                TypedValue typedValue = new TypedValue();
                this.f9127d.getTheme().resolveAttribute(C3681R.attr.actionBarTheme, typedValue, true);
                ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C3298c(this.f9127d, typedValue.resourceId) : this.f9127d).inflate(C3681R.layout.abc_screen_toolbar, (ViewGroup) null);
                AbstractC0227f0 abstractC0227f0 = (AbstractC0227f0) viewGroup2.findViewById(C3681R.C3684id.decor_content_parent);
                this.f9134k = abstractC0227f0;
                abstractC0227f0.setWindowCallback(m3345R());
                if (this.f9149z) {
                    this.f9134k.mo8528k(109);
                }
                if (this.f9146w) {
                    this.f9134k.mo8528k(2);
                }
                viewGroup = viewGroup2;
                if (this.f9147x) {
                    this.f9134k.mo8528k(5);
                    viewGroup = viewGroup2;
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup == null) {
                StringBuilder m8752j = C0082b.m8752j("AppCompat does not support the current theme features: { windowActionBar: ");
                m8752j.append(this.f9148y);
                m8752j.append(", windowActionBarOverlay: ");
                m8752j.append(this.f9149z);
                m8752j.append(", android:windowIsFloating: ");
                m8752j.append(this.f9103B);
                m8752j.append(", windowActionModeOverlay: ");
                m8752j.append(this.f9102A);
                m8752j.append(", windowNoTitle: ");
                m8752j.append(this.f9104C);
                m8752j.append(" }");
                throw new IllegalArgumentException(m8752j.toString());
            }
            C2669n c2669n = new C2669n(this);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2030u(viewGroup, c2669n);
            if (this.f9134k == null) {
                this.f9144u = (TextView) viewGroup.findViewById(2131297155);
            }
            Method method = C0236h1.f963a;
            try {
                Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method2.isAccessible()) {
                    method2.setAccessible(true);
                }
                method2.invoke(viewGroup, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            }
            ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C3681R.C3684id.action_bar_activity_content);
            ViewGroup viewGroup3 = (ViewGroup) this.f9128e.findViewById(16908290);
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
            this.f9128e.setContentView(viewGroup);
            contentFrameLayout.setAttachListener(new C2670o(this));
            this.f9143t = viewGroup;
            Object obj = this.f9126c;
            CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f9133j;
            if (!TextUtils.isEmpty(title)) {
                AbstractC0227f0 abstractC0227f02 = this.f9134k;
                if (abstractC0227f02 != null) {
                    abstractC0227f02.setWindowTitle(title);
                } else {
                    AbstractC2635a abstractC2635a = this.f9131h;
                    if (abstractC2635a != null) {
                        abstractC2635a.mo3264r(title);
                    } else {
                        TextView textView = this.f9144u;
                        if (textView != null) {
                            textView.setText(title);
                        }
                    }
                }
            }
            ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f9143t.findViewById(16908290);
            View decorView = this.f9128e.getDecorView();
            contentFrameLayout2.f613g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            if (C3589v.C3596g.m2058c(contentFrameLayout2)) {
                contentFrameLayout2.requestLayout();
            }
            TypedArray obtainStyledAttributes2 = this.f9127d.obtainStyledAttributes(C3035k.f10223j);
            obtainStyledAttributes2.getValue(C3681R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
            obtainStyledAttributes2.getValue(C3681R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
            if (obtainStyledAttributes2.hasValue(C3681R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
                obtainStyledAttributes2.getValue(C3681R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout2.getFixedWidthMajor());
            }
            if (obtainStyledAttributes2.hasValue(C3681R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
                obtainStyledAttributes2.getValue(C3681R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout2.getFixedWidthMinor());
            }
            if (obtainStyledAttributes2.hasValue(C3681R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
                obtainStyledAttributes2.getValue(C3681R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout2.getFixedHeightMajor());
            }
            if (obtainStyledAttributes2.hasValue(C3681R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
                obtainStyledAttributes2.getValue(C3681R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout2.getFixedHeightMinor());
            }
            obtainStyledAttributes2.recycle();
            contentFrameLayout2.requestLayout();
            this.f9142s = true;
            C2667k m3346Q = m3346Q(0);
            if (this.f9111J || m3346Q.f9173h != null) {
                return;
            }
            m3343T(108);
        }
    }

    /* renamed from: M */
    public final void m3350M() {
        if (this.f9128e == null) {
            Object obj = this.f9126c;
            if (obj instanceof Activity) {
                m3359D(((Activity) obj).getWindow());
            }
        }
        if (this.f9128e != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    /* renamed from: N */
    public C2667k m3349N(Menu menu) {
        C2667k[] c2667kArr = this.f9106E;
        int length = c2667kArr != null ? c2667kArr.length : 0;
        for (int i = 0; i < length; i++) {
            C2667k c2667k = c2667kArr[i];
            if (c2667k != null && c2667k.f9173h == menu) {
                return c2667k;
            }
        }
        return null;
    }

    /* renamed from: O */
    public final Context m3348O() {
        m3344S();
        AbstractC2635a abstractC2635a = this.f9131h;
        Context mo3273e = abstractC2635a != null ? abstractC2635a.mo3273e() : null;
        Context context = mo3273e;
        if (mo3273e == null) {
            context = this.f9127d;
        }
        return context;
    }

    /* renamed from: P */
    public final AbstractC2663h m3347P(Context context) {
        if (this.f9117P == null) {
            if (C2687x.f9230d == null) {
                Context applicationContext = context.getApplicationContext();
                C2687x.f9230d = new C2687x(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f9117P = new C2665i(C2687x.f9230d);
        }
        return this.f9117P;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0.length <= r7) goto L6;
     */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p086f.LayoutInflater$Factory2C2654m.C2667k m3346Q(int r7) {
        /*
            r6 = this;
            r0 = r6
            f.m$k[] r0 = r0.f9106E
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L11
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = r0.length
            r1 = r7
            if (r0 > r1) goto L2a
        L11:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            f.m$k[] r0 = new p086f.LayoutInflater$Factory2C2654m.C2667k[r0]
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L25
            r0 = r8
            r1 = 0
            r2 = r9
            r3 = 0
            r4 = r8
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L25:
            r0 = r6
            r1 = r9
            r0.f9106E = r1
        L2a:
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            if (r0 != 0) goto L44
            f.m$k r0 = new f.m$k
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r8
            r0[r1] = r2
        L44:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.m3346Q(int):f.m$k");
    }

    /* renamed from: R */
    public final Window.Callback m3345R() {
        return this.f9128e.getCallback();
    }

    /* renamed from: S */
    public final void m3344S() {
        m3351L();
        if (!this.f9148y || this.f9131h != null) {
            return;
        }
        Object obj = this.f9126c;
        if (obj instanceof Activity) {
            this.f9131h = new C2689y((Activity) this.f9126c, this.f9149z);
        } else if (obj instanceof Dialog) {
            this.f9131h = new C2689y((Dialog) this.f9126c);
        }
        AbstractC2635a abstractC2635a = this.f9131h;
        if (abstractC2635a == null) {
            return;
        }
        abstractC2635a.mo3270l(this.f9122V);
    }

    /* renamed from: T */
    public final void m3343T(int i) {
        this.f9120T = (1 << i) | this.f9120T;
        if (!this.f9119S) {
            View decorView = this.f9128e.getDecorView();
            Runnable runnable = this.f9121U;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2081m(decorView, runnable);
            this.f9119S = true;
        }
    }

    /* renamed from: U */
    public int m3342U(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i == 0) {
                    if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                        return -1;
                    }
                    return m3347P(context).mo3303c();
                } else if (i != 1 && i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                    if (this.f9118R == null) {
                        this.f9118R = new C2662g(context);
                    }
                    return this.f9118R.mo3303c();
                }
            }
            return i;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0245, code lost:
        if (r0 != null) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0253  */
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3341V(p086f.LayoutInflater$Factory2C2654m.C2667k r11, android.view.KeyEvent r12) {
        /*
            Method dump skipped, instructions count: 815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.m3341V(f.m$k, android.view.KeyEvent):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m3339X(r6, r8) != false) goto L9;
     */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3340W(p086f.LayoutInflater$Factory2C2654m.C2667k r6, int r7, android.view.KeyEvent r8, int r9) {
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
            boolean r0 = r0.f9176k
            if (r0 != 0) goto L24
            r0 = r11
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m3339X(r1, r2)
            if (r0 == 0) goto L3e
        L24:
            r0 = r6
            androidx.appcompat.view.menu.e r0 = r0.f9173h
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
            androidx.appcompat.widget.f0 r0 = r0.f9134k
            if (r0 != 0) goto L57
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m3356G(r1, r2)
        L57:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.m3340W(f.m$k, int, android.view.KeyEvent, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b4, code lost:
        if (r0 == 108) goto L43;
     */
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3339X(p086f.LayoutInflater$Factory2C2654m.C2667k r6, android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.m3339X(f.m$k, android.view.KeyEvent):boolean");
    }

    /* renamed from: Y */
    public final boolean m3338Y() {
        boolean z;
        ViewGroup viewGroup;
        if (this.f9142s && (viewGroup = this.f9143t) != null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3596g.m2058c(viewGroup)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: Z */
    public final void m3337Z() {
        if (!this.f9142s) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
    /* renamed from: a */
    public boolean mo2424a(C0136e c0136e, MenuItem menuItem) {
        C2667k m3349N;
        Window.Callback m3345R = m3345R();
        if (m3345R == null || this.f9111J || (m3349N = m3349N(c0136e.mo8676k())) == null) {
            return false;
        }
        return m3345R.onMenuItemSelected(m3349N.f9166a, menuItem);
    }

    /* renamed from: a0 */
    public final int m3336a0(C3551b0 c3551b0, Rect rect) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        int m2178e = c3551b0.m2178e();
        ActionBarContextView actionBarContextView = this.f9138o;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
            i = m2178e;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f9138o.getLayoutParams();
            boolean z5 = true;
            if (this.f9138o.isShown()) {
                if (this.f9123W == null) {
                    this.f9123W = new Rect();
                    this.f9124X = new Rect();
                }
                Rect rect2 = this.f9123W;
                Rect rect3 = this.f9124X;
                rect2.set(c3551b0.m2180c(), c3551b0.m2178e(), c3551b0.m2179d(), c3551b0.m2181b());
                ViewGroup viewGroup = this.f9143t;
                Method method = C0236h1.f963a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect2, rect3);
                    } catch (Exception e) {
                    }
                }
                int i2 = rect2.top;
                int i3 = rect2.left;
                int i4 = rect2.right;
                ViewGroup viewGroup2 = this.f9143t;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3551b0 m2024a = Build.VERSION.SDK_INT >= 23 ? C3589v.C3600j.m2024a(viewGroup2) : C3589v.C3598i.m2041j(viewGroup2);
                int m2180c = m2024a == null ? 0 : m2024a.m2180c();
                int m2179d = m2024a == null ? 0 : m2024a.m2179d();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z4 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z4 = true;
                }
                if (i2 <= 0 || this.f9145v != null) {
                    View view = this.f9145v;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != m2180c || marginLayoutParams2.rightMargin != m2179d) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = m2180c;
                            marginLayoutParams2.rightMargin = m2179d;
                            this.f9145v.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f9127d);
                    this.f9145v = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = m2180c;
                    layoutParams.rightMargin = m2179d;
                    this.f9143t.addView(this.f9145v, -1, layoutParams);
                }
                View view3 = this.f9145v;
                z2 = view3 != null;
                if (z2 && view3.getVisibility() != 0) {
                    View view4 = this.f9145v;
                    view4.setBackgroundColor((C3589v.C3593d.m2087g(view4) & 8192) != 0 ? C2134a.m3845b(this.f9127d, 2131099658) : C2134a.m3845b(this.f9127d, 2131099657));
                }
                int i7 = m2178e;
                if (!this.f9102A) {
                    i7 = m2178e;
                    if (z2) {
                        i7 = 0;
                    }
                }
                z3 = z4;
                m2178e = i7;
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                } else {
                    z5 = false;
                }
                z2 = false;
                z3 = z5;
            }
            z = z2;
            i = m2178e;
            if (z3) {
                this.f9138o.setLayoutParams(marginLayoutParams);
                z = z2;
                i = m2178e;
            }
        }
        View view5 = this.f9145v;
        if (view5 != null) {
            int i8 = 8;
            if (z) {
                i8 = 0;
            }
            view5.setVisibility(i8);
        }
        return i;
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
    /* renamed from: b */
    public void mo2423b(C0136e c0136e) {
        AbstractC0227f0 abstractC0227f0 = this.f9134k;
        if (abstractC0227f0 == null || !abstractC0227f0.mo8529g() || (ViewConfiguration.get(this.f9127d).hasPermanentMenuKey() && !this.f9134k.mo8532d())) {
            C2667k m3346Q = m3346Q(0);
            m3346Q.f9179n = true;
            m3356G(m3346Q, false);
            m3341V(m3346Q, null);
            return;
        }
        Window.Callback m3345R = m3345R();
        if (this.f9134k.mo8534b()) {
            this.f9134k.mo8531e();
            if (this.f9111J) {
                return;
            }
            m3345R.onPanelClosed(108, m3346Q(0).f9173h);
        } else if (m3345R == null || this.f9111J) {
        } else {
            if (this.f9119S && (1 & this.f9120T) != 0) {
                this.f9128e.getDecorView().removeCallbacks(this.f9121U);
                this.f9121U.run();
            }
            C2667k m3346Q2 = m3346Q(0);
            C0136e c0136e2 = m3346Q2.f9173h;
            if (c0136e2 == null || m3346Q2.f9180o || !m3345R.onPreparePanel(0, m3346Q2.f9172g, c0136e2)) {
                return;
            }
            m3345R.onMenuOpened(108, m3346Q2.f9173h);
            this.f9134k.mo8530f();
        }
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: c */
    public void mo3335c(View view, ViewGroup.LayoutParams layoutParams) {
        m3351L();
        ((ViewGroup) this.f9143t.findViewById(16908290)).addView(view, layoutParams);
        this.f9129f.f11215a.onContentChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x03df  */
    @Override // p086f.AbstractC2653l
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.Context mo3334d(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.mo3334d(android.content.Context):android.content.Context");
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: e */
    public <T extends View> T mo3333e(int i) {
        m3351L();
        return (T) this.f9128e.findViewById(i);
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: f */
    public final C2640c.AbstractC2641a mo3332f() {
        return new C2656b();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: g */
    public int mo3331g() {
        return this.f9113L;
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: h */
    public MenuInflater mo3330h() {
        if (this.f9132i == null) {
            m3344S();
            AbstractC2635a abstractC2635a = this.f9131h;
            this.f9132i = new C3302f(abstractC2635a != null ? abstractC2635a.mo3273e() : this.f9127d);
        }
        return this.f9132i;
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: i */
    public AbstractC2635a mo3329i() {
        m3344S();
        return this.f9131h;
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: j */
    public void mo3328j() {
        LayoutInflater from = LayoutInflater.from(this.f9127d);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (from.getFactory2() instanceof LayoutInflater$Factory2C2654m) {
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: k */
    public void mo3327k() {
        m3344S();
        AbstractC2635a abstractC2635a = this.f9131h;
        if (abstractC2635a == null || !abstractC2635a.mo3284f()) {
            m3343T(0);
        }
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: l */
    public void mo3326l(Configuration configuration) {
        if (this.f9148y && this.f9142s) {
            m3344S();
            AbstractC2635a abstractC2635a = this.f9131h;
            if (abstractC2635a != null) {
                abstractC2635a.mo3272g(configuration);
            }
        }
        C0242j m8486a = C0242j.m8486a();
        Context context = this.f9127d;
        synchronized (m8486a) {
            C0264p0 c0264p0 = m8486a.f987a;
            synchronized (c0264p0) {
                C4255d<WeakReference<Drawable.ConstantState>> c4255d = c0264p0.f1071d.get(context);
                if (c4255d != null) {
                    c4255d.m1223b();
                }
            }
        }
        this.f9112K = new Configuration(this.f9127d.getResources().getConfiguration());
        m3360C(false);
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: m */
    public void mo3325m(Bundle bundle) {
        this.f9109H = true;
        m3360C(false);
        m3350M();
        Object obj = this.f9126c;
        if (obj instanceof Activity) {
            String str = null;
            try {
                Activity activity = (Activity) obj;
                try {
                    str = C0802j.m7361c(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException e2) {
            }
            if (str != null) {
                AbstractC2635a abstractC2635a = this.f9131h;
                if (abstractC2635a == null) {
                    this.f9122V = true;
                } else {
                    abstractC2635a.mo3270l(true);
                }
            }
            synchronized (AbstractC2653l.f9097b) {
                AbstractC2653l.m3363t(this);
                AbstractC2653l.f9096a.add(new WeakReference<>(this));
            }
        }
        this.f9112K = new Configuration(this.f9127d.getResources().getConfiguration());
        this.f9110I = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // p086f.AbstractC2653l
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo3324n() {
        /*
            r4 = this;
            r0 = r4
            java.lang.Object r0 = r0.f9126c
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L1e
            java.lang.Object r0 = p086f.AbstractC2653l.f9097b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r4
            p086f.AbstractC2653l.m3363t(r0)     // Catch: java.lang.Throwable -> L19
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
            goto L1e
        L19:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
            r0 = r6
            throw r0
        L1e:
            r0 = r4
            boolean r0 = r0.f9119S
            if (r0 == 0) goto L34
            r0 = r4
            android.view.Window r0 = r0.f9128e
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.f9121U
            boolean r0 = r0.removeCallbacks(r1)
        L34:
            r0 = r4
            r1 = 1
            r0.f9111J = r1
            r0 = r4
            int r0 = r0.f9113L
            r1 = -100
            if (r0 == r1) goto L73
            r0 = r4
            java.lang.Object r0 = r0.f9126c
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L73
            r0 = r6
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L73
            s.g<java.lang.String, java.lang.Integer> r0 = p086f.LayoutInflater$Factory2C2654m.f9098Z
            r1 = r4
            java.lang.Object r1 = r1.f9126c
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.f9113L
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L84
        L73:
            s.g<java.lang.String, java.lang.Integer> r0 = p086f.LayoutInflater$Factory2C2654m.f9098Z
            r1 = r4
            java.lang.Object r1 = r1.f9126c
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L84:
            r0 = r4
            f.a r0 = r0.f9131h
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L91
            r0 = r6
            r0.mo3283h()
        L91:
            r0 = r4
            f.m$h r0 = r0.f9117P
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L9e
            r0 = r6
            r0.m3306a()
        L9e:
            r0 = r4
            f.m$h r0 = r0.f9118R
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lab
            r0 = r6
            r0.m3306a()
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.mo3324n():void");
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: o */
    public void mo3323o(Bundle bundle) {
        m3351L();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0231, code lost:
        if (r8.equals("ImageButton") == false) goto L64;
     */
    /* JADX WARN: Finally extract failed */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10) {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.LayoutInflater$Factory2C2654m.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: p */
    public void mo3322p() {
        m3344S();
        AbstractC2635a abstractC2635a = this.f9131h;
        if (abstractC2635a != null) {
            abstractC2635a.mo3267o(true);
        }
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: q */
    public void mo3321q(Bundle bundle) {
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: r */
    public void mo3320r() {
        m3361B();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: s */
    public void mo3319s() {
        m3344S();
        AbstractC2635a abstractC2635a = this.f9131h;
        if (abstractC2635a != null) {
            abstractC2635a.mo3267o(false);
        }
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: u */
    public boolean mo3318u(int i) {
        int i2;
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else {
            i2 = i;
            if (i == 9) {
                Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
                i2 = 109;
            }
        }
        if (!this.f9104C || i2 != 108) {
            if (this.f9148y && i2 == 1) {
                this.f9148y = false;
            }
            if (i2 == 1) {
                m3337Z();
                this.f9104C = true;
                return true;
            } else if (i2 == 2) {
                m3337Z();
                this.f9146w = true;
                return true;
            } else if (i2 == 5) {
                m3337Z();
                this.f9147x = true;
                return true;
            } else if (i2 == 10) {
                m3337Z();
                this.f9102A = true;
                return true;
            } else if (i2 == 108) {
                m3337Z();
                this.f9148y = true;
                return true;
            } else if (i2 != 109) {
                return this.f9128e.requestFeature(i2);
            } else {
                m3337Z();
                this.f9149z = true;
                return true;
            }
        }
        return false;
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: v */
    public void mo3317v(int i) {
        m3351L();
        ViewGroup viewGroup = (ViewGroup) this.f9143t.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f9127d).inflate(i, viewGroup);
        this.f9129f.f11215a.onContentChanged();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: w */
    public void mo3316w(View view) {
        m3351L();
        ViewGroup viewGroup = (ViewGroup) this.f9143t.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f9129f.f11215a.onContentChanged();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: x */
    public void mo3315x(View view, ViewGroup.LayoutParams layoutParams) {
        m3351L();
        ViewGroup viewGroup = (ViewGroup) this.f9143t.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f9129f.f11215a.onContentChanged();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: y */
    public void mo3314y(Toolbar toolbar) {
        if (!(this.f9126c instanceof Activity)) {
            return;
        }
        m3344S();
        AbstractC2635a abstractC2635a = this.f9131h;
        if (abstractC2635a instanceof C2689y) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.f9132i = null;
        if (abstractC2635a != null) {
            abstractC2635a.mo3283h();
        }
        this.f9131h = null;
        if (toolbar != null) {
            Object obj = this.f9126c;
            C2680v c2680v = new C2680v(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.f9133j, this.f9129f);
            this.f9131h = c2680v;
            this.f9129f.f9156b = c2680v.f9214c;
        } else {
            this.f9129f.f9156b = null;
        }
        mo3327k();
    }

    @Override // p086f.AbstractC2653l
    /* renamed from: z */
    public void mo3313z(int i) {
        this.f9114M = i;
    }
}
