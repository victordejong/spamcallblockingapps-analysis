package androidx.appcompat.app;

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
import android.os.PowerManager;
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
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.view.AbstractC0172b;
import androidx.appcompat.view.C0175d;
import androidx.appcompat.view.C0176e;
import androidx.appcompat.view.C0177f;
import androidx.appcompat.view.C0179g;
import androidx.appcompat.view.Window$CallbackC0184i;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.C0196e;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.AbstractC0280aa;
import androidx.appcompat.widget.AbstractC0367w;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0317ap;
import androidx.appcompat.widget.C0326au;
import androidx.appcompat.widget.C0327av;
import androidx.appcompat.widget.C0350i;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.core.app.C0470f;
import androidx.core.p026h.AbstractC0591q;
import androidx.core.p026h.AbstractC0611z;
import androidx.core.p026h.C0570aa;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0577d;
import androidx.core.p026h.C0579e;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0607y;
import androidx.core.widget.C0627h;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0869h;
import androidx.p013b.C0373a;
import java.lang.Thread;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.appcompat.app.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f.class */
public class LayoutInflater$Factory2C0119f extends AbstractC0118e implements LayoutInflater.Factory2, C0199g.AbstractC0200a {

    /* renamed from: t */
    private static final Map<Class<?>, Integer> f336t = new C0373a();

    /* renamed from: u */
    private static final boolean f337u;

    /* renamed from: v */
    private static final int[] f338v;

    /* renamed from: w */
    private static boolean f339w;

    /* renamed from: x */
    private static final boolean f340x;

    /* renamed from: A */
    private AbstractC0367w f341A;

    /* renamed from: B */
    private C0128a f342B;

    /* renamed from: C */
    private C0138i f343C;

    /* renamed from: D */
    private boolean f344D;

    /* renamed from: E */
    private boolean f345E;

    /* renamed from: F */
    private ViewGroup f346F;

    /* renamed from: G */
    private TextView f347G;

    /* renamed from: H */
    private View f348H;

    /* renamed from: I */
    private boolean f349I;

    /* renamed from: J */
    private boolean f350J;

    /* renamed from: K */
    private boolean f351K;

    /* renamed from: L */
    private C0137h[] f352L;

    /* renamed from: M */
    private C0137h f353M;

    /* renamed from: N */
    private boolean f354N;

    /* renamed from: O */
    private boolean f355O;

    /* renamed from: P */
    private boolean f356P;

    /* renamed from: Q */
    private boolean f357Q;

    /* renamed from: R */
    private int f358R;

    /* renamed from: S */
    private int f359S;

    /* renamed from: T */
    private boolean f360T;

    /* renamed from: U */
    private boolean f361U;

    /* renamed from: V */
    private AbstractC0133e f362V;

    /* renamed from: W */
    private AbstractC0133e f363W;

    /* renamed from: X */
    private final Runnable f364X;

    /* renamed from: Y */
    private boolean f365Y;

    /* renamed from: Z */
    private Rect f366Z;

    /* renamed from: a */
    final Object f367a;

    /* renamed from: aa */
    private Rect f368aa;

    /* renamed from: ab */
    private AppCompatViewInflater f369ab;

    /* renamed from: b */
    final Context f370b;

    /* renamed from: c */
    Window f371c;

    /* renamed from: d */
    final AbstractC0117d f372d;

    /* renamed from: e */
    AbstractC0110a f373e;

    /* renamed from: f */
    MenuInflater f374f;

    /* renamed from: g */
    AbstractC0172b f375g;

    /* renamed from: h */
    ActionBarContextView f376h;

    /* renamed from: i */
    PopupWindow f377i;

    /* renamed from: j */
    Runnable f378j;

    /* renamed from: k */
    C0607y f379k;

    /* renamed from: l */
    boolean f380l;

    /* renamed from: m */
    boolean f381m;

    /* renamed from: n */
    boolean f382n;

    /* renamed from: o */
    boolean f383o;

    /* renamed from: p */
    boolean f384p;

    /* renamed from: q */
    boolean f385q;

    /* renamed from: r */
    boolean f386r;

    /* renamed from: s */
    int f387s;

    /* renamed from: y */
    private C0131c f388y;

    /* renamed from: z */
    private CharSequence f389z;

    /* renamed from: androidx.appcompat.app.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$a.class */
    public final class C0128a implements AbstractC0214m.AbstractC0215a {
        C0128a() {
            LayoutInflater$Factory2C0119f.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public void mo21353a(C0199g c0199g, boolean z) {
            LayoutInflater$Factory2C0119f.this.m22169b(c0199g);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public boolean mo21354a(C0199g c0199g) {
            Window.Callback m22145l = LayoutInflater$Factory2C0119f.this.m22145l();
            if (m22145l != null) {
                m22145l.onMenuOpened(108, c0199g);
                return true;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$b.class */
    public class C0129b implements AbstractC0172b.AbstractC0173a {

        /* renamed from: b */
        private AbstractC0172b.AbstractC0173a f400b;

        public C0129b(AbstractC0172b.AbstractC0173a abstractC0173a) {
            LayoutInflater$Factory2C0119f.this = r4;
            this.f400b = abstractC0173a;
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: a */
        public void mo21964a(AbstractC0172b abstractC0172b) {
            this.f400b.mo21964a(abstractC0172b);
            if (LayoutInflater$Factory2C0119f.this.f377i != null) {
                LayoutInflater$Factory2C0119f.this.f371c.getDecorView().removeCallbacks(LayoutInflater$Factory2C0119f.this.f378j);
            }
            if (LayoutInflater$Factory2C0119f.this.f376h != null) {
                LayoutInflater$Factory2C0119f.this.m22139q();
                LayoutInflater$Factory2C0119f.this.f379k = C0595u.m20311m(LayoutInflater$Factory2C0119f.this.f376h).m20255a(0.0f);
                LayoutInflater$Factory2C0119f.this.f379k.m20250a(new C0570aa() { // from class: androidx.appcompat.app.f.b.1
                    @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
                    /* renamed from: b */
                    public void mo20244b(View view) {
                        LayoutInflater$Factory2C0119f.this.f376h.setVisibility(8);
                        if (LayoutInflater$Factory2C0119f.this.f377i != null) {
                            LayoutInflater$Factory2C0119f.this.f377i.dismiss();
                        } else if (LayoutInflater$Factory2C0119f.this.f376h.getParent() instanceof View) {
                            C0595u.m20307q((View) LayoutInflater$Factory2C0119f.this.f376h.getParent());
                        }
                        LayoutInflater$Factory2C0119f.this.f376h.removeAllViews();
                        LayoutInflater$Factory2C0119f.this.f379k.m20250a((AbstractC0611z) null);
                        LayoutInflater$Factory2C0119f.this.f379k = null;
                    }
                });
            }
            if (LayoutInflater$Factory2C0119f.this.f372d != null) {
                LayoutInflater$Factory2C0119f.this.f372d.mo22111b(LayoutInflater$Factory2C0119f.this.f375g);
            }
            LayoutInflater$Factory2C0119f.this.f375g = null;
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: a */
        public boolean mo21963a(AbstractC0172b abstractC0172b, Menu menu) {
            return this.f400b.mo21963a(abstractC0172b, menu);
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: a */
        public boolean mo21962a(AbstractC0172b abstractC0172b, MenuItem menuItem) {
            return this.f400b.mo21962a(abstractC0172b, menuItem);
        }

        @Override // androidx.appcompat.view.AbstractC0172b.AbstractC0173a
        /* renamed from: b */
        public boolean mo21960b(AbstractC0172b abstractC0172b, Menu menu) {
            return this.f400b.mo21960b(abstractC0172b, menu);
        }
    }

    /* renamed from: androidx.appcompat.app.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$c.class */
    public class C0131c extends Window$CallbackC0184i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0131c(Window.Callback callback) {
            super(callback);
            LayoutInflater$Factory2C0119f.this = r4;
        }

        /* renamed from: a */
        final ActionMode m22128a(ActionMode.Callback callback) {
            C0177f.C0178a c0178a = new C0177f.C0178a(LayoutInflater$Factory2C0119f.this.f370b, callback);
            AbstractC0172b m22182a = LayoutInflater$Factory2C0119f.this.m22182a(c0178a);
            return m22182a != null ? c0178a.m21961b(m22182a) : null;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C0119f.this.m22194a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || LayoutInflater$Factory2C0119f.this.m22200a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            return (i != 0 || (menu instanceof C0199g)) ? super.onCreatePanelMenu(i, menu) : false;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            LayoutInflater$Factory2C0119f.this.m22155f(i);
            return true;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            LayoutInflater$Factory2C0119f.this.m22158e(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean z;
            C0199g c0199g = menu instanceof C0199g ? (C0199g) menu : null;
            if (i == 0 && c0199g == null) {
                z = false;
            } else {
                if (c0199g != null) {
                    c0199g.m21870c(true);
                }
                boolean onPreparePanel = super.onPreparePanel(i, view, menu);
                z = onPreparePanel;
                if (c0199g != null) {
                    c0199g.m21870c(false);
                    z = onPreparePanel;
                }
            }
            return z;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0137h m22198a = LayoutInflater$Factory2C0119f.this.m22198a(0, true);
            if (m22198a == null || m22198a.f420j == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, m22198a.f420j, i);
            }
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return Build.VERSION.SDK_INT >= 23 ? null : LayoutInflater$Factory2C0119f.this.m22140p() ? m22128a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0184i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            ActionMode actionMode;
            if (LayoutInflater$Factory2C0119f.this.m22140p()) {
                switch (i) {
                    case 0:
                        actionMode = m22128a(callback);
                        break;
                }
                return actionMode;
            }
            actionMode = super.onWindowStartingActionMode(callback, i);
            return actionMode;
        }
    }

    /* renamed from: androidx.appcompat.app.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$d.class */
    public class C0132d extends AbstractC0133e {

        /* renamed from: c */
        private final PowerManager f404c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0132d(Context context) {
            super();
            LayoutInflater$Factory2C0119f.this = r5;
            this.f404c = (PowerManager) context.getSystemService("power");
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0119f.AbstractC0133e
        /* renamed from: a */
        public int mo22125a() {
            int i = 1;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 1;
                if (this.f404c.isPowerSaveMode()) {
                    i = 2;
                }
            }
            return i;
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0119f.AbstractC0133e
        /* renamed from: b */
        public void mo22124b() {
            LayoutInflater$Factory2C0119f.this.m22136t();
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0119f.AbstractC0133e
        /* renamed from: c */
        IntentFilter mo22123c() {
            IntentFilter intentFilter;
            if (Build.VERSION.SDK_INT >= 21) {
                intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            } else {
                intentFilter = null;
            }
            return intentFilter;
        }
    }

    /* renamed from: androidx.appcompat.app.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$e.class */
    public abstract class AbstractC0133e {

        /* renamed from: a */
        private BroadcastReceiver f405a;

        AbstractC0133e() {
            LayoutInflater$Factory2C0119f.this = r4;
        }

        /* renamed from: a */
        abstract int mo22125a();

        /* renamed from: b */
        abstract void mo22124b();

        /* renamed from: c */
        abstract IntentFilter mo22123c();

        /* renamed from: d */
        void m22127d() {
            m22126e();
            IntentFilter mo22123c = mo22123c();
            if (mo22123c == null || mo22123c.countActions() == 0) {
                return;
            }
            if (this.f405a == null) {
                this.f405a = new BroadcastReceiver() { // from class: androidx.appcompat.app.f.e.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        AbstractC0133e.this.mo22124b();
                    }
                };
            }
            LayoutInflater$Factory2C0119f.this.f370b.registerReceiver(this.f405a, mo22123c);
        }

        /* renamed from: e */
        void m22126e() {
            if (this.f405a != null) {
                try {
                    LayoutInflater$Factory2C0119f.this.f370b.unregisterReceiver(this.f405a);
                } catch (IllegalArgumentException e) {
                }
                this.f405a = null;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.f$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$f.class */
    public class C0135f extends AbstractC0133e {

        /* renamed from: c */
        private final C0146k f409c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0135f(C0146k c0146k) {
            super();
            LayoutInflater$Factory2C0119f.this = r4;
            this.f409c = c0146k;
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0119f.AbstractC0133e
        /* renamed from: a */
        public int mo22125a() {
            return this.f409c.m22097a() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0119f.AbstractC0133e
        /* renamed from: b */
        public void mo22124b() {
            LayoutInflater$Factory2C0119f.this.m22136t();
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0119f.AbstractC0133e
        /* renamed from: c */
        IntentFilter mo22123c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* renamed from: androidx.appcompat.app.f$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$g.class */
    public class C0136g extends ContentFrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0136g(Context context) {
            super(context);
            LayoutInflater$Factory2C0119f.this = r4;
        }

        /* renamed from: a */
        private boolean m22122a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C0119f.this.m22194a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            boolean onInterceptTouchEvent;
            if (motionEvent.getAction() != 0 || !m22122a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            } else {
                LayoutInflater$Factory2C0119f.this.m22153g(0);
                onInterceptTouchEvent = true;
            }
            return onInterceptTouchEvent;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C0094a.m22275b(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.f$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$h.class */
    public static final class C0137h {

        /* renamed from: a */
        int f411a;

        /* renamed from: b */
        int f412b;

        /* renamed from: c */
        int f413c;

        /* renamed from: d */
        int f414d;

        /* renamed from: e */
        int f415e;

        /* renamed from: f */
        int f416f;

        /* renamed from: g */
        ViewGroup f417g;

        /* renamed from: h */
        View f418h;

        /* renamed from: i */
        View f419i;

        /* renamed from: j */
        C0199g f420j;

        /* renamed from: k */
        C0196e f421k;

        /* renamed from: l */
        Context f422l;

        /* renamed from: m */
        boolean f423m;

        /* renamed from: n */
        boolean f424n;

        /* renamed from: o */
        boolean f425o;

        /* renamed from: p */
        public boolean f426p;

        /* renamed from: q */
        boolean f427q = false;

        /* renamed from: r */
        boolean f428r;

        /* renamed from: s */
        Bundle f429s;

        C0137h(int i) {
            this.f411a = i;
        }

        /* renamed from: a */
        AbstractC0216n m22118a(AbstractC0214m.AbstractC0215a abstractC0215a) {
            AbstractC0216n m21905a;
            if (this.f420j == null) {
                m21905a = null;
            } else {
                if (this.f421k == null) {
                    this.f421k = new C0196e(this.f422l, C0083a.C0090g.abc_list_menu_item_layout);
                    this.f421k.mo3585a(abstractC0215a);
                    this.f420j.m21884a(this.f421k);
                }
                m21905a = this.f421k.m21905a(this.f417g);
            }
            return m21905a;
        }

        /* renamed from: a */
        void m22120a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0083a.C0084a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(C0083a.C0084a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(C0083a.C0092i.Theme_AppCompat_CompactMenu, true);
            }
            C0175d c0175d = new C0175d(context, 0);
            c0175d.getTheme().setTo(newTheme);
            this.f422l = c0175d;
            TypedArray obtainStyledAttributes = c0175d.obtainStyledAttributes(C0083a.C0093j.AppCompatTheme);
            this.f412b = obtainStyledAttributes.getResourceId(C0083a.C0093j.AppCompatTheme_panelBackground, 0);
            this.f416f = obtainStyledAttributes.getResourceId(C0083a.C0093j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m22119a(C0199g c0199g) {
            if (c0199g == this.f420j) {
                return;
            }
            if (this.f420j != null) {
                this.f420j.m21874b(this.f421k);
            }
            this.f420j = c0199g;
            if (c0199g == null || this.f421k == null) {
                return;
            }
            c0199g.m21884a(this.f421k);
        }

        /* renamed from: a */
        public boolean m22121a() {
            boolean z;
            if (this.f418h == null) {
                z = false;
            } else {
                z = true;
                if (this.f419i == null) {
                    z = true;
                    if (this.f421k.m21907a().getCount() <= 0) {
                        z = false;
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.appcompat.app.f$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$i.class */
    public final class C0138i implements AbstractC0214m.AbstractC0215a {
        C0138i() {
            LayoutInflater$Factory2C0119f.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public void mo21353a(C0199g c0199g, boolean z) {
            C0199g mo21781q = c0199g.mo21781q();
            boolean z2 = mo21781q != c0199g;
            LayoutInflater$Factory2C0119f layoutInflater$Factory2C0119f = LayoutInflater$Factory2C0119f.this;
            if (z2) {
                c0199g = mo21781q;
            }
            C0137h m22193a = layoutInflater$Factory2C0119f.m22193a((Menu) c0199g);
            if (m22193a != null) {
                if (!z2) {
                    LayoutInflater$Factory2C0119f.this.m22183a(m22193a, z);
                    return;
                }
                LayoutInflater$Factory2C0119f.this.m22199a(m22193a.f411a, m22193a, mo21781q);
                LayoutInflater$Factory2C0119f.this.m22183a(m22193a, true);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public boolean mo21354a(C0199g c0199g) {
            Window.Callback m22145l;
            if (c0199g != null || !LayoutInflater$Factory2C0119f.this.f380l || (m22145l = LayoutInflater$Factory2C0119f.this.m22145l()) == null || LayoutInflater$Factory2C0119f.this.f385q) {
                return true;
            }
            m22145l.onMenuOpened(108, c0199g);
            return true;
        }
    }

    static {
        f337u = Build.VERSION.SDK_INT < 21;
        f338v = new int[]{16842836};
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 21) {
            z = false;
            if (Build.VERSION.SDK_INT <= 25) {
                z = true;
            }
        }
        f340x = z;
        if (!f337u || f339w) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.f.1
            /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
                if (r0.contains("Drawable") != false) goto L10;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private boolean m22129a(java.lang.Throwable r4) {
                /*
                    r3 = this;
                    r0 = 0
                    r5 = r0
                    r0 = r5
                    r6 = r0
                    r0 = r4
                    boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
                    if (r0 == 0) goto L2c
                    r0 = r4
                    java.lang.String r0 = r0.getMessage()
                    r4 = r0
                    r0 = r5
                    r6 = r0
                    r0 = r4
                    if (r0 == 0) goto L2c
                    r0 = r4
                    java.lang.String r1 = "drawable"
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L2a
                    r0 = r5
                    r6 = r0
                    r0 = r4
                    java.lang.String r1 = "Drawable"
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto L2c
                L2a:
                    r0 = 1
                    r6 = r0
                L2c:
                    r0 = r6
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.C01201.m22129a(java.lang.Throwable):boolean");
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                if (!m22129a(th)) {
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                    return;
                }
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
            }
        });
        f339w = true;
    }

    public LayoutInflater$Factory2C0119f(Activity activity, AbstractC0117d abstractC0117d) {
        this(activity, null, abstractC0117d, activity);
    }

    public LayoutInflater$Factory2C0119f(Dialog dialog, AbstractC0117d abstractC0117d) {
        this(dialog.getContext(), dialog.getWindow(), abstractC0117d, dialog);
    }

    private LayoutInflater$Factory2C0119f(Context context, Window window, AbstractC0117d abstractC0117d, Object obj) {
        Integer num;
        ActivityC0116c m22207B;
        this.f379k = null;
        this.f344D = true;
        this.f358R = -100;
        this.f364X = new Runnable() { // from class: androidx.appcompat.app.f.2
            @Override // java.lang.Runnable
            public void run() {
                if ((LayoutInflater$Factory2C0119f.this.f387s & 1) != 0) {
                    LayoutInflater$Factory2C0119f.this.m22151h(0);
                }
                if ((LayoutInflater$Factory2C0119f.this.f387s & 4096) != 0) {
                    LayoutInflater$Factory2C0119f.this.m22151h(108);
                }
                LayoutInflater$Factory2C0119f.this.f386r = false;
                LayoutInflater$Factory2C0119f.this.f387s = 0;
            }
        };
        this.f370b = context;
        this.f372d = abstractC0117d;
        this.f367a = obj;
        if (this.f358R == -100 && (this.f367a instanceof Dialog) && (m22207B = m22207B()) != null) {
            this.f358R = m22207B.m22215k().mo22150i();
        }
        if (this.f358R == -100 && (num = f336t.get(this.f367a.getClass())) != null) {
            this.f358R = num.intValue();
            f336t.remove(this.f367a.getClass());
        }
        if (window != null) {
            m22187a(window);
        }
        C0350i.m21313a();
    }

    /* renamed from: A */
    private void m22208A() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f346F.findViewById(16908290);
        View decorView = this.f371c.getDecorView();
        contentFrameLayout.m21696a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f370b.obtainStyledAttributes(C0083a.C0093j.AppCompatTheme);
        obtainStyledAttributes.getValue(C0083a.C0093j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C0083a.C0093j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0083a.C0093j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0083a.C0093j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0083a.C0093j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0083a.C0093j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: B */
    private ActivityC0116c m22207B() {
        ActivityC0116c activityC0116c;
        Context context = this.f370b;
        while (true) {
            Context context2 = context;
            if (context2 == null) {
                activityC0116c = null;
                break;
            } else if (!(context2 instanceof ActivityC0116c)) {
                if (!(context2 instanceof ContextWrapper)) {
                    activityC0116c = null;
                    break;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                activityC0116c = (ActivityC0116c) context2;
                break;
            }
        }
        return activityC0116c;
    }

    /* renamed from: C */
    private void m22206C() {
        if (this.f345E) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* renamed from: D */
    private int m22205D() {
        return this.f358R != -100 ? this.f358R : m22209j();
    }

    /* renamed from: E */
    private AbstractC0133e m22204E() {
        if (this.f363W == null) {
            this.f363W = new C0132d(this.f370b);
        }
        return this.f363W;
    }

    /* renamed from: F */
    private boolean m22203F() {
        boolean z = false;
        if (!this.f361U && (this.f367a instanceof Activity)) {
            PackageManager packageManager = this.f370b.getPackageManager();
            if (packageManager != null) {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f370b, this.f367a.getClass()), 0);
                    this.f360T = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                    this.f360T = false;
                }
            }
            return z;
        }
        this.f361U = true;
        z = this.f360T;
        return z;
    }

    /* renamed from: a */
    private void m22187a(Window window) {
        if (this.f371c != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof C0131c) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.f388y = new C0131c(callback);
        window.setCallback(this.f388y);
        C0317ap m21434a = C0317ap.m21434a(this.f370b, (AttributeSet) null, f338v);
        Drawable m21432b = m21434a.m21432b(0);
        if (m21432b != null) {
            window.setBackgroundDrawable(m21432b);
        }
        m21434a.m21441a();
        this.f371c = window;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0191, code lost:
        if (r0.width != (-1)) goto L60;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m22184a(androidx.appcompat.app.LayoutInflater$Factory2C0119f.C0137h r11, android.view.KeyEvent r12) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22184a(androidx.appcompat.app.f$h, android.view.KeyEvent):void");
    }

    /* renamed from: a */
    private void m22181a(C0199g c0199g, boolean z) {
        if (this.f341A == null || !this.f341A.mo21205e() || (ViewConfiguration.get(this.f370b).hasPermanentMenuKey() && !this.f341A.mo21203g())) {
            C0137h m22198a = m22198a(0, true);
            m22198a.f427q = true;
            m22183a(m22198a, false);
            m22184a(m22198a, (KeyEvent) null);
            return;
        }
        Window.Callback m22145l = m22145l();
        if (this.f341A.mo21204f() && z) {
            this.f341A.mo21201i();
            if (this.f385q) {
                return;
            }
            m22145l.onPanelClosed(108, m22198a(0, true).f420j);
        } else if (m22145l == null || this.f385q) {
        } else {
            if (this.f386r && (this.f387s & 1) != 0) {
                this.f371c.getDecorView().removeCallbacks(this.f364X);
                this.f364X.run();
            }
            C0137h m22198a2 = m22198a(0, true);
            if (m22198a2.f420j == null || m22198a2.f428r || !m22145l.onPreparePanel(0, m22198a2.f419i, m22198a2.f420j)) {
                return;
            }
            m22145l.onMenuOpened(108, m22198a2.f420j);
            this.f341A.mo21202h();
        }
    }

    /* renamed from: a */
    private boolean m22188a(ViewParent viewParent) {
        boolean z;
        if (viewParent == null) {
            z = false;
        } else {
            View decorView = this.f371c.getDecorView();
            while (viewParent != null) {
                if (viewParent == decorView || !(viewParent instanceof View) || C0595u.m20370B((View) viewParent)) {
                    z = false;
                    break;
                }
                viewParent = viewParent.getParent();
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private boolean m22186a(C0137h c0137h) {
        c0137h.m22120a(m22143m());
        c0137h.f417g = new C0136g(c0137h.f422l);
        c0137h.f413c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
        if (m22171b(r6, r8) != false) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22185a(androidx.appcompat.app.LayoutInflater$Factory2C0119f.C0137h r6, int r7, android.view.KeyEvent r8, int r9) {
        /*
            r5 = this;
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r8
            boolean r0 = r0.isSystem()
            if (r0 == 0) goto L14
            r0 = r11
            r10 = r0
        L11:
            r0 = r10
            return r0
        L14:
            r0 = r6
            boolean r0 = r0.f423m
            if (r0 != 0) goto L28
            r0 = r10
            r11 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m22171b(r1, r2)
            if (r0 == 0) goto L40
        L28:
            r0 = r10
            r11 = r0
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f420j
            if (r0 == 0) goto L40
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f420j
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r11 = r0
        L40:
            r0 = r11
            r10 = r0
            r0 = r11
            if (r0 == 0) goto L11
            r0 = r11
            r10 = r0
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L11
            r0 = r11
            r10 = r0
            r0 = r5
            androidx.appcompat.widget.w r0 = r0.f341A
            if (r0 != 0) goto L11
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m22183a(r1, r2)
            r0 = r11
            r10 = r0
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22185a(androidx.appcompat.app.f$h, int, android.view.KeyEvent, int):boolean");
    }

    /* renamed from: a */
    private boolean m22179a(boolean z) {
        boolean z2;
        if (this.f385q) {
            z2 = false;
        } else {
            int m22205D = m22205D();
            boolean m22175b = m22175b(m22148j(m22205D), z);
            if (m22205D == 0) {
                m22135u().m22127d();
            } else if (this.f362V != null) {
                this.f362V.m22126e();
            }
            if (m22205D == 3) {
                m22204E().m22127d();
                z2 = m22175b;
            } else {
                z2 = m22175b;
                if (this.f363W != null) {
                    this.f363W.m22126e();
                    z2 = m22175b;
                }
            }
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00df, code lost:
        if (r4.f356P != false) goto L34;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22175b(int r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22175b(int, boolean):boolean");
    }

    /* renamed from: b */
    private boolean m22172b(C0137h c0137h) {
        C0175d c0175d;
        Context context = this.f370b;
        if ((c0137h.f411a == 0 || c0137h.f411a == 108) && this.f341A != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(C0083a.C0084a.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(C0083a.C0084a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(C0083a.C0084a.actionBarWidgetTheme, typedValue, true);
            }
            Resources.Theme theme3 = theme2;
            if (typedValue.resourceId != 0) {
                theme3 = theme2;
                if (theme2 == null) {
                    theme3 = context.getResources().newTheme();
                    theme3.setTo(theme);
                }
                theme3.applyStyle(typedValue.resourceId, true);
            }
            if (theme3 != null) {
                c0175d = new C0175d(context, 0);
                c0175d.getTheme().setTo(theme3);
                C0199g c0199g = new C0199g(c0175d);
                c0199g.mo21788a(this);
                c0137h.m22119a(c0199g);
                return true;
            }
        }
        c0175d = context;
        C0199g c0199g2 = new C0199g(c0175d);
        c0199g2.mo21788a(this);
        c0137h.m22119a(c0199g2);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b3, code lost:
        if (r6.f420j != null) goto L44;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22171b(androidx.appcompat.app.LayoutInflater$Factory2C0119f.C0137h r6, android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22171b(androidx.appcompat.app.f$h, android.view.KeyEvent):boolean");
    }

    /* renamed from: c */
    private void m22165c(int i, boolean z) {
        Resources resources = this.f370b.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = (resources.getConfiguration().uiMode & (-49)) | i;
        resources.updateConfiguration(configuration, null);
        if (Build.VERSION.SDK_INT < 26) {
            C0141h.m22110a(resources);
        }
        if (this.f359S != 0) {
            this.f370b.setTheme(this.f359S);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f370b.getTheme().applyStyle(this.f359S, true);
            }
        }
        if (!z || !(this.f367a instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) this.f367a;
        if (activity instanceof AbstractC0869h) {
            if (!((AbstractC0869h) activity).mo19203b().mo19223a().m19224a(AbstractC0864e.EnumC0866b.STARTED)) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        } else if (!this.f357Q) {
        } else {
            activity.onConfigurationChanged(configuration);
        }
    }

    /* renamed from: c */
    private boolean m22163c(C0137h c0137h) {
        boolean z = true;
        if (c0137h.f419i != null) {
            c0137h.f418h = c0137h.f419i;
        } else if (c0137h.f420j == null) {
            z = false;
        } else {
            if (this.f343C == null) {
                this.f343C = new C0138i();
            }
            c0137h.f418h = (View) c0137h.m22118a(this.f343C);
            z = c0137h.f418h != null;
        }
        return z;
    }

    /* renamed from: d */
    private boolean m22160d(int i, KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getRepeatCount() == 0) {
            C0137h m22198a = m22198a(i, true);
            if (!m22198a.f425o) {
                z = m22171b(m22198a, keyEvent);
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22157e(int r5, android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22157e(int, android.view.KeyEvent):boolean");
    }

    /* renamed from: k */
    private void m22146k(int i) {
        this.f387s |= 1 << i;
        if (!this.f386r) {
            C0595u.m20341a(this.f371c.getDecorView(), this.f364X);
            this.f386r = true;
        }
    }

    /* renamed from: l */
    private int m22144l(int i) {
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
        return i2;
    }

    /* renamed from: v */
    private void m22134v() {
        m22131y();
        if (!this.f380l || this.f373e != null) {
            return;
        }
        if (this.f367a instanceof Activity) {
            this.f373e = new C0148l((Activity) this.f367a, this.f381m);
        } else if (this.f367a instanceof Dialog) {
            this.f373e = new C0148l((Dialog) this.f367a);
        }
        if (this.f373e == null) {
            return;
        }
        this.f373e.mo22078c(this.f365Y);
    }

    /* renamed from: w */
    private void m22133w() {
        if (this.f362V != null) {
            this.f362V.m22126e();
        }
        if (this.f363W != null) {
            this.f363W.m22126e();
        }
    }

    /* renamed from: x */
    private void m22132x() {
        if (this.f371c == null && (this.f367a instanceof Activity)) {
            m22187a(((Activity) this.f367a).getWindow());
        }
        if (this.f371c == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* renamed from: y */
    private void m22131y() {
        if (!this.f345E) {
            this.f346F = m22130z();
            CharSequence m22142n = m22142n();
            if (!TextUtils.isEmpty(m22142n)) {
                if (this.f341A != null) {
                    this.f341A.setWindowTitle(m22142n);
                } else if (m22147k() != null) {
                    m22147k().mo22084a(m22142n);
                } else if (this.f347G != null) {
                    this.f347G.setText(m22142n);
                }
            }
            m22208A();
            m22189a(this.f346F);
            this.f345E = true;
            C0137h m22198a = m22198a(0, false);
            if (this.f385q) {
                return;
            }
            if (m22198a != null && m22198a.f420j != null) {
                return;
            }
            m22146k(108);
        }
    }

    /* renamed from: z */
    private ViewGroup m22130z() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f370b.obtainStyledAttributes(C0083a.C0093j.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(C0083a.C0093j.AppCompatTheme_windowNoTitle, false)) {
            mo22161d(1);
        } else if (obtainStyledAttributes.getBoolean(C0083a.C0093j.AppCompatTheme_windowActionBar, false)) {
            mo22161d(108);
        }
        if (obtainStyledAttributes.getBoolean(C0083a.C0093j.AppCompatTheme_windowActionBarOverlay, false)) {
            mo22161d(109);
        }
        if (obtainStyledAttributes.getBoolean(C0083a.C0093j.AppCompatTheme_windowActionModeOverlay, false)) {
            mo22161d(10);
        }
        this.f383o = obtainStyledAttributes.getBoolean(C0083a.C0093j.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        m22132x();
        this.f371c.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f370b);
        if (this.f384p) {
            viewGroup = this.f382n ? (ViewGroup) from.inflate(C0083a.C0090g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0083a.C0090g.abc_screen_simple, (ViewGroup) null);
            if (Build.VERSION.SDK_INT >= 21) {
                C0595u.m20343a(viewGroup, new AbstractC0591q() { // from class: androidx.appcompat.app.f.3
                    @Override // androidx.core.p026h.AbstractC0591q
                    /* renamed from: a */
                    public C0572ac mo2513a(View view, C0572ac c0572ac) {
                        int m20438b = c0572ac.m20438b();
                        int m22149i = LayoutInflater$Factory2C0119f.this.m22149i(m20438b);
                        C0572ac c0572ac2 = c0572ac;
                        if (m20438b != m22149i) {
                            c0572ac2 = c0572ac.m20441a(c0572ac.m20442a(), m22149i, c0572ac.m20437c(), c0572ac.m20436d());
                        }
                        return C0595u.m20344a(view, c0572ac2);
                    }
                });
            } else {
                ((AbstractC0280aa) viewGroup).setOnFitSystemWindowsListener(new AbstractC0280aa.AbstractC0281a() { // from class: androidx.appcompat.app.f.4
                    @Override // androidx.appcompat.widget.AbstractC0280aa.AbstractC0281a
                    /* renamed from: a */
                    public void mo21561a(Rect rect) {
                        rect.top = LayoutInflater$Factory2C0119f.this.m22149i(rect.top);
                    }
                });
            }
        } else if (this.f383o) {
            viewGroup = (ViewGroup) from.inflate(C0083a.C0090g.abc_dialog_title_material, (ViewGroup) null);
            this.f381m = false;
            this.f380l = false;
        } else if (this.f380l) {
            TypedValue typedValue = new TypedValue();
            this.f370b.getTheme().resolveAttribute(C0083a.C0084a.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0175d(this.f370b, typedValue.resourceId) : this.f370b).inflate(C0083a.C0090g.abc_screen_toolbar, (ViewGroup) null);
            this.f341A = (AbstractC0367w) viewGroup.findViewById(C0083a.C0089f.decor_content_parent);
            this.f341A.setWindowCallback(m22145l());
            if (this.f381m) {
                this.f341A.mo21207a(109);
            }
            if (this.f349I) {
                this.f341A.mo21207a(2);
            }
            if (this.f350J) {
                this.f341A.mo21207a(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f380l + ", windowActionBarOverlay: " + this.f381m + ", android:windowIsFloating: " + this.f383o + ", windowActionModeOverlay: " + this.f382n + ", windowNoTitle: " + this.f384p + " }");
        }
        if (this.f341A == null) {
            this.f347G = (TextView) viewGroup.findViewById(C0083a.C0089f.title);
        }
        C0327av.m21387b(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0083a.C0089f.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f371c.findViewById(16908290);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f371c.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.AbstractC0249a() { // from class: androidx.appcompat.app.f.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0249a
            /* renamed from: a */
            public void mo21694a() {
            }

            @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0249a
            /* renamed from: b */
            public void mo21693b() {
                LayoutInflater$Factory2C0119f.this.m22137s();
            }
        });
        return viewGroup;
    }

    /* renamed from: a */
    public View m22190a(View view, String str, Context context, AttributeSet attributeSet) {
        if (this.f369ab == null) {
            String string = this.f370b.obtainStyledAttributes(C0083a.C0093j.AppCompatTheme).getString(C0083a.C0093j.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.f369ab = new AppCompatViewInflater();
            } else {
                try {
                    this.f369ab = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f369ab = new AppCompatViewInflater();
                }
            }
        }
        return this.f369ab.createView(view, str, context, attributeSet, f337u ? attributeSet instanceof XmlPullParser ? ((XmlPullParser) attributeSet).getDepth() > 1 : m22188a((ViewParent) view) : false, f337u, true, C0326au.m21392a());
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public AbstractC0110a mo22202a() {
        m22134v();
        return this.f373e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0.length <= r7) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected androidx.appcompat.app.LayoutInflater$Factory2C0119f.C0137h m22198a(int r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.f$h[] r0 = r0.f352L
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
            androidx.appcompat.app.f$h[] r0 = new androidx.appcompat.app.LayoutInflater$Factory2C0119f.C0137h[r0]
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
            r0.f352L = r1
        L2e:
            r0 = r10
            r1 = r7
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L4b
            androidx.appcompat.app.f$h r0 = new androidx.appcompat.app.f$h
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r9 = r0
            r0 = r10
            r1 = r7
            r2 = r9
            r0[r1] = r2
            r0 = r9
            r10 = r0
        L48:
            r0 = r10
            return r0
        L4b:
            r0 = r9
            r10 = r0
            goto L48
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22198a(int, boolean):androidx.appcompat.app.f$h");
    }

    /* renamed from: a */
    C0137h m22193a(Menu menu) {
        C0137h c0137h;
        C0137h[] c0137hArr = this.f352L;
        int length = c0137hArr != null ? c0137hArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                c0137h = null;
                break;
            }
            C0137h c0137h2 = c0137hArr[i];
            if (c0137h2 != null && c0137h2.f420j == menu) {
                c0137h = c0137h2;
                break;
            }
            i++;
        }
        return c0137h;
    }

    /* renamed from: a */
    public AbstractC0172b m22182a(AbstractC0172b.AbstractC0173a abstractC0173a) {
        if (abstractC0173a == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.f375g != null) {
            this.f375g.mo21971c();
        }
        C0129b c0129b = new C0129b(abstractC0173a);
        AbstractC0110a mo22202a = mo22202a();
        if (mo22202a != null) {
            this.f375g = mo22202a.mo22085a(c0129b);
            if (this.f375g != null && this.f372d != null) {
                this.f372d.mo22113a(this.f375g);
            }
        }
        if (this.f375g == null) {
            this.f375g = m22170b(c0129b);
        }
        return this.f375g;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public void mo22201a(int i) {
        this.f359S = i;
    }

    /* renamed from: a */
    void m22199a(int i, C0137h c0137h, Menu menu) {
        C0137h c0137h2 = c0137h;
        C0199g c0199g = menu;
        if (menu == null) {
            C0137h c0137h3 = c0137h;
            if (c0137h == null) {
                c0137h3 = c0137h;
                if (i >= 0) {
                    c0137h3 = c0137h;
                    if (i < this.f352L.length) {
                        c0137h3 = this.f352L[i];
                    }
                }
            }
            c0137h2 = c0137h3;
            c0199g = menu;
            if (c0137h3 != null) {
                c0199g = c0137h3.f420j;
                c0137h2 = c0137h3;
            }
        }
        if ((c0137h2 == null || c0137h2.f425o) && !this.f385q) {
            this.f388y.m21938a().onPanelClosed(i, c0199g);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public void mo22197a(Context context) {
        m22179a(false);
        this.f355O = true;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public void mo22196a(Configuration configuration) {
        AbstractC0110a mo22202a;
        if (this.f380l && this.f345E && (mo22202a = mo22202a()) != null) {
            mo22202a.mo22087a(configuration);
        }
        C0350i.m21307b().m21311a(this.f370b);
        m22179a(false);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public void mo22195a(Bundle bundle) {
        String str;
        this.f355O = true;
        m22179a(false);
        m22132x();
        if (this.f367a instanceof Activity) {
            try {
                str = C0470f.m20798b((Activity) this.f367a);
            } catch (IllegalArgumentException e) {
                str = null;
            }
            if (str != null) {
                AbstractC0110a m22147k = m22147k();
                if (m22147k == null) {
                    this.f365Y = true;
                } else {
                    m22147k.mo22078c(true);
                }
            }
        }
        this.f356P = true;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public void mo22192a(View view) {
        m22131y();
        ViewGroup viewGroup = (ViewGroup) this.f346F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f388y.m21938a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public void mo22191a(View view, ViewGroup.LayoutParams layoutParams) {
        m22131y();
        ViewGroup viewGroup = (ViewGroup) this.f346F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f388y.m21938a().onContentChanged();
    }

    /* renamed from: a */
    void m22189a(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    void m22183a(C0137h c0137h, boolean z) {
        if (z && c0137h.f411a == 0 && this.f341A != null && this.f341A.mo21204f()) {
            m22169b(c0137h.f420j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f370b.getSystemService("window");
        if (windowManager != null && c0137h.f425o && c0137h.f417g != null) {
            windowManager.removeView(c0137h.f417g);
            if (z) {
                m22199a(c0137h.f411a, c0137h, null);
            }
        }
        c0137h.f423m = false;
        c0137h.f424n = false;
        c0137h.f425o = false;
        c0137h.f418h = null;
        c0137h.f427q = true;
        if (this.f353M != c0137h) {
            return;
        }
        this.f353M = null;
    }

    @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
    /* renamed from: a */
    public void mo3619a(C0199g c0199g) {
        m22181a(c0199g, true);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: a */
    public final void mo22180a(CharSequence charSequence) {
        this.f389z = charSequence;
        if (this.f341A != null) {
            this.f341A.setWindowTitle(charSequence);
        } else if (m22147k() != null) {
            m22147k().mo22084a(charSequence);
        } else if (this.f347G == null) {
        } else {
            this.f347G.setText(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        if (r0 == false) goto L20;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m22200a(int r7, android.view.KeyEvent r8) {
        /*
            r6 = this;
            r0 = 1
            r9 = r0
            r0 = r6
            androidx.appcompat.app.a r0 = r0.mo22202a()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L1d
            r0 = r10
            r1 = r7
            r2 = r8
            boolean r0 = r0.mo22088a(r1, r2)
            if (r0 == 0) goto L1d
            r0 = r9
            r11 = r0
        L1a:
            r0 = r11
            return r0
        L1d:
            r0 = r6
            androidx.appcompat.app.f$h r0 = r0.f353M
            if (r0 == 0) goto L4d
            r0 = r6
            r1 = r6
            androidx.appcompat.app.f$h r1 = r1.f353M
            r2 = r8
            int r2 = r2.getKeyCode()
            r3 = r8
            r4 = 1
            boolean r0 = r0.m22185a(r1, r2, r3, r4)
            if (r0 == 0) goto L4d
            r0 = r9
            r11 = r0
            r0 = r6
            androidx.appcompat.app.f$h r0 = r0.f353M
            if (r0 == 0) goto L1a
            r0 = r6
            androidx.appcompat.app.f$h r0 = r0.f353M
            r1 = 1
            r0.f424n = r1
            r0 = r9
            r11 = r0
            goto L1a
        L4d:
            r0 = r6
            androidx.appcompat.app.f$h r0 = r0.f353M
            if (r0 != 0) goto L80
            r0 = r6
            r1 = 0
            r2 = 1
            androidx.appcompat.app.f$h r0 = r0.m22198a(r1, r2)
            r10 = r0
            r0 = r6
            r1 = r10
            r2 = r8
            boolean r0 = r0.m22171b(r1, r2)
            r0 = r6
            r1 = r10
            r2 = r8
            int r2 = r2.getKeyCode()
            r3 = r8
            r4 = 1
            boolean r0 = r0.m22185a(r1, r2, r3, r4)
            r12 = r0
            r0 = r10
            r1 = 0
            r0.f423m = r1
            r0 = r9
            r11 = r0
            r0 = r12
            if (r0 != 0) goto L1a
        L80:
            r0 = 0
            r11 = r0
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0119f.m22200a(int, android.view.KeyEvent):boolean");
    }

    /* renamed from: a */
    boolean m22194a(KeyEvent keyEvent) {
        View decorView;
        boolean z = true;
        boolean z2 = true;
        if (((!(this.f367a instanceof C0577d.AbstractC0578a) && !(this.f367a instanceof DialogC0139g)) || (decorView = this.f371c.getDecorView()) == null || !C0577d.m20415a(decorView, keyEvent)) && (keyEvent.getKeyCode() != 82 || !this.f388y.m21938a().dispatchKeyEvent(keyEvent))) {
            int keyCode = keyEvent.getKeyCode();
            if (keyEvent.getAction() != 0) {
                z = false;
            }
            z2 = z ? m22166c(keyCode, keyEvent) : m22176b(keyCode, keyEvent);
        }
        return z2;
    }

    @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
    /* renamed from: a */
    public boolean mo3618a(C0199g c0199g, MenuItem menuItem) {
        C0137h m22193a;
        Window.Callback m22145l = m22145l();
        return (m22145l == null || this.f385q || (m22193a = m22193a((Menu) c0199g.mo21781q())) == null) ? false : m22145l.onMenuItemSelected(m22193a.f411a, menuItem);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: b */
    public MenuInflater mo22178b() {
        if (this.f374f == null) {
            m22134v();
            this.f374f = new C0179g(this.f373e != null ? this.f373e.mo22081b() : this.f370b);
        }
        return this.f374f;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: b */
    public <T extends View> T mo22177b(int i) {
        m22131y();
        return (T) this.f371c.findViewById(i);
    }

    /* renamed from: b */
    AbstractC0172b m22170b(AbstractC0172b.AbstractC0173a abstractC0173a) {
        AbstractC0172b abstractC0172b;
        C0175d c0175d;
        m22139q();
        if (this.f375g != null) {
            this.f375g.mo21971c();
        }
        C0129b c0129b = abstractC0173a;
        if (!(abstractC0173a instanceof C0129b)) {
            c0129b = new C0129b(abstractC0173a);
        }
        if (this.f372d == null || this.f385q) {
            abstractC0172b = null;
        } else {
            try {
                abstractC0172b = this.f372d.mo22114a(c0129b);
            } catch (AbstractMethodError e) {
                abstractC0172b = null;
            }
        }
        if (abstractC0172b != null) {
            this.f375g = abstractC0172b;
        } else {
            if (this.f376h == null) {
                if (this.f383o) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f370b.getTheme();
                    theme.resolveAttribute(C0083a.C0084a.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme newTheme = this.f370b.getResources().newTheme();
                        newTheme.setTo(theme);
                        newTheme.applyStyle(typedValue.resourceId, true);
                        c0175d = new C0175d(this.f370b, 0);
                        c0175d.getTheme().setTo(newTheme);
                    } else {
                        c0175d = this.f370b;
                    }
                    this.f376h = new ActionBarContextView(c0175d);
                    this.f377i = new PopupWindow(c0175d, (AttributeSet) null, C0083a.C0084a.actionModePopupWindowStyle);
                    C0627h.m20149a(this.f377i, 2);
                    this.f377i.setContentView(this.f376h);
                    this.f377i.setWidth(-1);
                    c0175d.getTheme().resolveAttribute(C0083a.C0084a.actionBarSize, typedValue, true);
                    this.f376h.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, c0175d.getResources().getDisplayMetrics()));
                    this.f377i.setHeight(-2);
                    this.f378j = new Runnable() { // from class: androidx.appcompat.app.f.6
                        @Override // java.lang.Runnable
                        public void run() {
                            LayoutInflater$Factory2C0119f.this.f377i.showAtLocation(LayoutInflater$Factory2C0119f.this.f376h, 55, 0, 0);
                            LayoutInflater$Factory2C0119f.this.m22139q();
                            if (!LayoutInflater$Factory2C0119f.this.m22141o()) {
                                LayoutInflater$Factory2C0119f.this.f376h.setAlpha(1.0f);
                                LayoutInflater$Factory2C0119f.this.f376h.setVisibility(0);
                                return;
                            }
                            LayoutInflater$Factory2C0119f.this.f376h.setAlpha(0.0f);
                            LayoutInflater$Factory2C0119f.this.f379k = C0595u.m20311m(LayoutInflater$Factory2C0119f.this.f376h).m20255a(1.0f);
                            LayoutInflater$Factory2C0119f.this.f379k.m20250a(new C0570aa() { // from class: androidx.appcompat.app.f.6.1
                                @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
                                /* renamed from: a */
                                public void mo20245a(View view) {
                                    LayoutInflater$Factory2C0119f.this.f376h.setVisibility(0);
                                }

                                @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
                                /* renamed from: b */
                                public void mo20244b(View view) {
                                    LayoutInflater$Factory2C0119f.this.f376h.setAlpha(1.0f);
                                    LayoutInflater$Factory2C0119f.this.f379k.m20250a((AbstractC0611z) null);
                                    LayoutInflater$Factory2C0119f.this.f379k = null;
                                }
                            });
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.f346F.findViewById(C0083a.C0089f.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(m22143m()));
                        this.f376h = (ActionBarContextView) viewStubCompat.m21571a();
                    }
                }
            }
            if (this.f376h != null) {
                m22139q();
                this.f376h.m21775c();
                C0176e c0176e = new C0176e(this.f376h.getContext(), this.f376h, c0129b, this.f377i == null);
                if (c0129b.mo21963a(c0176e, c0176e.mo21974b())) {
                    c0176e.mo21970d();
                    this.f376h.m21777a(c0176e);
                    this.f375g = c0176e;
                    if (m22141o()) {
                        this.f376h.setAlpha(0.0f);
                        this.f379k = C0595u.m20311m(this.f376h).m20255a(1.0f);
                        this.f379k.m20250a(new C0570aa() { // from class: androidx.appcompat.app.f.7
                            @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
                            /* renamed from: a */
                            public void mo20245a(View view) {
                                LayoutInflater$Factory2C0119f.this.f376h.setVisibility(0);
                                LayoutInflater$Factory2C0119f.this.f376h.sendAccessibilityEvent(32);
                                if (LayoutInflater$Factory2C0119f.this.f376h.getParent() instanceof View) {
                                    C0595u.m20307q((View) LayoutInflater$Factory2C0119f.this.f376h.getParent());
                                }
                            }

                            @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
                            /* renamed from: b */
                            public void mo20244b(View view) {
                                LayoutInflater$Factory2C0119f.this.f376h.setAlpha(1.0f);
                                LayoutInflater$Factory2C0119f.this.f379k.m20250a((AbstractC0611z) null);
                                LayoutInflater$Factory2C0119f.this.f379k = null;
                            }
                        });
                    } else {
                        this.f376h.setAlpha(1.0f);
                        this.f376h.setVisibility(0);
                        this.f376h.sendAccessibilityEvent(32);
                        if (this.f376h.getParent() instanceof View) {
                            C0595u.m20307q((View) this.f376h.getParent());
                        }
                    }
                    if (this.f377i != null) {
                        this.f371c.getDecorView().post(this.f378j);
                    }
                } else {
                    this.f375g = null;
                }
            }
        }
        if (this.f375g != null && this.f372d != null) {
            this.f372d.mo22113a(this.f375g);
        }
        return this.f375g;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: b */
    public void mo22174b(Bundle bundle) {
        m22131y();
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: b */
    public void mo22173b(View view, ViewGroup.LayoutParams layoutParams) {
        m22131y();
        ((ViewGroup) this.f346F.findViewById(16908290)).addView(view, layoutParams);
        this.f388y.m21938a().onContentChanged();
    }

    /* renamed from: b */
    void m22169b(C0199g c0199g) {
        if (this.f351K) {
            return;
        }
        this.f351K = true;
        this.f341A.mo21199k();
        Window.Callback m22145l = m22145l();
        if (m22145l != null && !this.f385q) {
            m22145l.onPanelClosed(108, c0199g);
        }
        this.f351K = false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    boolean m22176b(int i, KeyEvent keyEvent) {
        boolean z;
        switch (i) {
            case 4:
                boolean z2 = this.f354N;
                this.f354N = false;
                C0137h m22198a = m22198a(0, false);
                if (m22198a != null && m22198a.f425o) {
                    z = true;
                    if (!z2) {
                        m22183a(m22198a, true);
                        z = true;
                        break;
                    }
                } else {
                    if (m22138r()) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 82:
                m22157e(0, keyEvent);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: c */
    public void mo22168c() {
        this.f357Q = true;
        m22136t();
        m22212a(this);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: c */
    public void mo22167c(int i) {
        m22131y();
        ViewGroup viewGroup = (ViewGroup) this.f346F.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f370b).inflate(i, viewGroup);
        this.f388y.m21938a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: c */
    public void mo22164c(Bundle bundle) {
        if (this.f358R != -100) {
            f336t.put(this.f367a.getClass(), Integer.valueOf(this.f358R));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    boolean m22166c(int i, KeyEvent keyEvent) {
        boolean z = true;
        switch (i) {
            case 4:
                this.f354N = (keyEvent.getFlags() & 128) != 0;
                z = false;
                break;
            case 82:
                m22160d(0, keyEvent);
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: d */
    public void mo22162d() {
        this.f357Q = false;
        m22211b(this);
        AbstractC0110a mo22202a = mo22202a();
        if (mo22202a != null) {
            mo22202a.mo22077d(false);
        }
        if (this.f367a instanceof Dialog) {
            m22133w();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: d */
    public boolean mo22161d(int i) {
        boolean z = false;
        int m22144l = m22144l(i);
        if (!this.f384p || m22144l != 108) {
            if (this.f380l && m22144l == 1) {
                this.f380l = false;
            }
            switch (m22144l) {
                case 1:
                    m22206C();
                    this.f384p = true;
                    z = true;
                    break;
                case 2:
                    m22206C();
                    this.f349I = true;
                    z = true;
                    break;
                case 5:
                    m22206C();
                    this.f350J = true;
                    z = true;
                    break;
                case 10:
                    m22206C();
                    this.f382n = true;
                    z = true;
                    break;
                case 108:
                    m22206C();
                    this.f380l = true;
                    z = true;
                    break;
                case 109:
                    m22206C();
                    this.f381m = true;
                    z = true;
                    break;
                default:
                    z = this.f371c.requestFeature(m22144l);
                    break;
            }
        }
        return z;
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: e */
    public void mo22159e() {
        AbstractC0110a mo22202a = mo22202a();
        if (mo22202a != null) {
            mo22202a.mo22077d(true);
        }
    }

    /* renamed from: e */
    void m22158e(int i) {
        if (i == 108) {
            AbstractC0110a mo22202a = mo22202a();
            if (mo22202a == null) {
                return;
            }
            mo22202a.mo22076e(false);
        } else if (i != 0) {
        } else {
            C0137h m22198a = m22198a(i, true);
            if (!m22198a.f425o) {
                return;
            }
            m22183a(m22198a, false);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: f */
    public void mo22156f() {
        AbstractC0110a mo22202a = mo22202a();
        if (mo22202a == null || !mo22202a.mo22102e()) {
            m22146k(0);
        }
    }

    /* renamed from: f */
    void m22155f(int i) {
        AbstractC0110a mo22202a;
        if (i != 108 || (mo22202a = mo22202a()) == null) {
            return;
        }
        mo22202a.mo22076e(true);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: g */
    public void mo22154g() {
        m22211b(this);
        if (this.f386r) {
            this.f371c.getDecorView().removeCallbacks(this.f364X);
        }
        this.f357Q = false;
        this.f385q = true;
        if (this.f373e != null) {
            this.f373e.mo22101g();
        }
        m22133w();
    }

    /* renamed from: g */
    void m22153g(int i) {
        m22183a(m22198a(i, true), true);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: h */
    public void mo22152h() {
        LayoutInflater from = LayoutInflater.from(this.f370b);
        if (from.getFactory() == null) {
            C0579e.m20412a(from, this);
        } else if (from.getFactory2() instanceof LayoutInflater$Factory2C0119f) {
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* renamed from: h */
    void m22151h(int i) {
        C0137h m22198a;
        C0137h m22198a2 = m22198a(i, true);
        if (m22198a2.f420j != null) {
            Bundle bundle = new Bundle();
            m22198a2.f420j.m21871c(bundle);
            if (bundle.size() > 0) {
                m22198a2.f429s = bundle;
            }
            m22198a2.f420j.m21858h();
            m22198a2.f420j.clear();
        }
        m22198a2.f428r = true;
        m22198a2.f427q = true;
        if ((i != 108 && i != 0) || this.f341A == null || (m22198a = m22198a(0, false)) == null) {
            return;
        }
        m22198a.f423m = false;
        m22171b(m22198a, (KeyEvent) null);
    }

    @Override // androidx.appcompat.app.AbstractC0118e
    /* renamed from: i */
    public int mo22150i() {
        return this.f358R;
    }

    /* renamed from: i */
    int m22149i(int i) {
        boolean z;
        boolean z2 = true;
        if (this.f376h == null || !(this.f376h.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f376h.getLayoutParams();
            if (this.f376h.isShown()) {
                if (this.f366Z == null) {
                    this.f366Z = new Rect();
                    this.f368aa = new Rect();
                }
                Rect rect = this.f366Z;
                Rect rect2 = this.f368aa;
                rect.set(0, i, 0, 0);
                C0327av.m21388a(this.f346F, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.f348H == null) {
                        this.f348H = new View(this.f370b);
                        this.f348H.setBackgroundColor(this.f370b.getResources().getColor(C0083a.C0086c.abc_input_method_navigation_guard));
                        this.f346F.addView(this.f348H, -1, new ViewGroup.LayoutParams(-1, i));
                        z = true;
                    } else {
                        ViewGroup.LayoutParams layoutParams = this.f348H.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.f348H.setLayoutParams(layoutParams);
                        }
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (this.f348H == null) {
                    z2 = false;
                }
                int i2 = i;
                if (!this.f382n) {
                    i2 = i;
                    if (z2) {
                        i2 = 0;
                    }
                }
                i = i2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = true;
                z2 = false;
            } else {
                z = false;
                z2 = false;
            }
            if (z) {
                this.f376h.setLayoutParams(marginLayoutParams);
            }
        }
        if (this.f348H != null) {
            this.f348H.setVisibility(z2 ? 0 : 8);
        }
        return i;
    }

    /* renamed from: j */
    int m22148j(int i) {
        int i2 = i;
        switch (i) {
            case -100:
                i2 = -1;
                break;
            case -1:
            case 1:
            case 2:
                break;
            case 0:
                if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f370b.getSystemService(UiModeManager.class)).getNightMode() == 0) {
                    i2 = -1;
                    break;
                } else {
                    i2 = m22135u().mo22125a();
                    break;
                }
            case 3:
                i2 = m22204E().mo22125a();
                break;
            default:
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
        }
        return i2;
    }

    /* renamed from: k */
    final AbstractC0110a m22147k() {
        return this.f373e;
    }

    /* renamed from: l */
    final Window.Callback m22145l() {
        return this.f371c.getCallback();
    }

    /* renamed from: m */
    final Context m22143m() {
        Context context = null;
        AbstractC0110a mo22202a = mo22202a();
        if (mo22202a != null) {
            context = mo22202a.mo22081b();
        }
        Context context2 = context;
        if (context == null) {
            context2 = this.f370b;
        }
        return context2;
    }

    /* renamed from: n */
    final CharSequence m22142n() {
        return this.f367a instanceof Activity ? ((Activity) this.f367a).getTitle() : this.f389z;
    }

    /* renamed from: o */
    final boolean m22141o() {
        return this.f345E && this.f346F != null && C0595u.m20299y(this.f346F);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m22190a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public boolean m22140p() {
        return this.f344D;
    }

    /* renamed from: q */
    void m22139q() {
        if (this.f379k != null) {
            this.f379k.m20249b();
        }
    }

    /* renamed from: r */
    boolean m22138r() {
        boolean z = true;
        if (this.f375g != null) {
            this.f375g.mo21971c();
        } else {
            AbstractC0110a mo22202a = mo22202a();
            if (mo22202a == null || !mo22202a.mo22075f()) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: s */
    void m22137s() {
        if (this.f341A != null) {
            this.f341A.mo21199k();
        }
        if (this.f377i != null) {
            this.f371c.getDecorView().removeCallbacks(this.f378j);
            if (this.f377i.isShowing()) {
                try {
                    this.f377i.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f377i = null;
        }
        m22139q();
        C0137h m22198a = m22198a(0, false);
        if (m22198a == null || m22198a.f420j == null) {
            return;
        }
        m22198a.f420j.close();
    }

    /* renamed from: t */
    public boolean m22136t() {
        return m22179a(true);
    }

    /* renamed from: u */
    final AbstractC0133e m22135u() {
        if (this.f362V == null) {
            this.f362V = new C0135f(C0146k.m22096a(this.f370b));
        }
        return this.f362V;
    }
}
