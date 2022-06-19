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
import androidx.appcompat.C0051a;
import androidx.appcompat.app.C0082b;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.view.AbstractC0155b;
import androidx.appcompat.view.C0158d;
import androidx.appcompat.view.C0160f;
import androidx.appcompat.view.C0162g;
import androidx.appcompat.view.Window$CallbackC0167i;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.C0179e;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.AbstractC0272ac;
import androidx.appcompat.widget.AbstractC0354y;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0311as;
import androidx.appcompat.widget.C0320ax;
import androidx.appcompat.widget.C0321ay;
import androidx.appcompat.widget.C0335i;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0443f;
import androidx.core.p023g.AbstractC0548q;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0527aa;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0534d;
import androidx.core.p023g.C0536e;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0903k;
import androidx.p014c.C0374a;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.flexbox.FlexItem;
import java.lang.Thread;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
public class LayoutInflater$Factory2C0095h extends AbstractC0094g implements LayoutInflater.Factory2, C0182g.AbstractC0183a {

    /* renamed from: t */
    private static final Map<Class<?>, Integer> f267t = new C0374a();

    /* renamed from: u */
    private static final boolean f268u;

    /* renamed from: v */
    private static final int[] f269v;

    /* renamed from: w */
    private static boolean f270w;

    /* renamed from: x */
    private static final boolean f271x;

    /* renamed from: A */
    private AbstractC0354y f272A;

    /* renamed from: B */
    private C0105b f273B;

    /* renamed from: C */
    private C0115j f274C;

    /* renamed from: D */
    private boolean f275D;

    /* renamed from: E */
    private boolean f276E;

    /* renamed from: F */
    private ViewGroup f277F;

    /* renamed from: G */
    private TextView f278G;

    /* renamed from: H */
    private View f279H;

    /* renamed from: I */
    private boolean f280I;

    /* renamed from: J */
    private boolean f281J;

    /* renamed from: K */
    private boolean f282K;

    /* renamed from: L */
    private C0114i[] f283L;

    /* renamed from: M */
    private C0114i f284M;

    /* renamed from: N */
    private boolean f285N;

    /* renamed from: O */
    private boolean f286O;

    /* renamed from: P */
    private boolean f287P;

    /* renamed from: Q */
    private boolean f288Q;

    /* renamed from: R */
    private int f289R;

    /* renamed from: S */
    private int f290S;

    /* renamed from: T */
    private boolean f291T;

    /* renamed from: U */
    private boolean f292U;

    /* renamed from: V */
    private AbstractC0110f f293V;

    /* renamed from: W */
    private AbstractC0110f f294W;

    /* renamed from: X */
    private final Runnable f295X;

    /* renamed from: Y */
    private boolean f296Y;

    /* renamed from: Z */
    private Rect f297Z;

    /* renamed from: a */
    final Object f298a;

    /* renamed from: aa */
    private Rect f299aa;

    /* renamed from: ab */
    private AppCompatViewInflater f300ab;

    /* renamed from: b */
    final Context f301b;

    /* renamed from: c */
    Window f302c;

    /* renamed from: d */
    final AbstractC0093f f303d;

    /* renamed from: e */
    AbstractC0078a f304e;

    /* renamed from: f */
    MenuInflater f305f;

    /* renamed from: g */
    AbstractC0155b f306g;

    /* renamed from: h */
    ActionBarContextView f307h;

    /* renamed from: i */
    PopupWindow f308i;

    /* renamed from: j */
    Runnable f309j;

    /* renamed from: k */
    C0564y f310k;

    /* renamed from: l */
    boolean f311l;

    /* renamed from: m */
    boolean f312m;

    /* renamed from: n */
    boolean f313n;

    /* renamed from: o */
    boolean f314o;

    /* renamed from: p */
    boolean f315p;

    /* renamed from: q */
    boolean f316q;

    /* renamed from: r */
    boolean f317r;

    /* renamed from: s */
    int f318s;

    /* renamed from: y */
    private C0108d f319y;

    /* renamed from: z */
    private CharSequence f320z;

    /* renamed from: androidx.appcompat.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$a.class */
    private class C0104a implements C0082b.AbstractC0084a {
        C0104a() {
            LayoutInflater$Factory2C0095h.this = r4;
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public Drawable mo7806a() {
            C0311as m7157a = C0311as.m7157a(mo7803b(), (AttributeSet) null, new int[]{C0051a.C0052a.homeAsUpIndicator});
            Drawable m7163a = m7157a.m7163a(0);
            m7157a.m7164a();
            return m7163a;
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public void mo7805a(int i) {
            AbstractC0078a mo7881a = LayoutInflater$Factory2C0095h.this.mo7881a();
            if (mo7881a != null) {
                mo7881a.mo7766a(i);
            }
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: a */
        public void mo7804a(Drawable drawable, int i) {
            AbstractC0078a mo7881a = LayoutInflater$Factory2C0095h.this.mo7881a();
            if (mo7881a != null) {
                mo7881a.mo7762a(drawable);
                mo7881a.mo7766a(i);
            }
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: b */
        public Context mo7803b() {
            return LayoutInflater$Factory2C0095h.this.m7819o();
        }

        @Override // androidx.appcompat.app.C0082b.AbstractC0084a
        /* renamed from: c */
        public boolean mo7802c() {
            AbstractC0078a mo7881a = LayoutInflater$Factory2C0095h.this.mo7881a();
            return (mo7881a == null || (mo7881a.mo7768a() & 4) == 0) ? false : true;
        }
    }

    /* renamed from: androidx.appcompat.app.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$b.class */
    public final class C0105b implements AbstractC0197m.AbstractC0198a {
        C0105b() {
            LayoutInflater$Factory2C0095h.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public void mo7435a(C0182g c0182g, boolean z) {
            LayoutInflater$Factory2C0095h.this.m7860a(c0182g);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public boolean mo7436a(C0182g c0182g) {
            Window.Callback m7820n = LayoutInflater$Factory2C0095h.this.m7820n();
            if (m7820n != null) {
                m7820n.onMenuOpened(108, c0182g);
                return true;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$c.class */
    public class C0106c implements AbstractC0155b.AbstractC0156a {

        /* renamed from: b */
        private AbstractC0155b.AbstractC0156a f332b;

        public C0106c(AbstractC0155b.AbstractC0156a abstractC0156a) {
            LayoutInflater$Factory2C0095h.this = r4;
            this.f332b = abstractC0156a;
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: a */
        public void mo7633a(AbstractC0155b abstractC0155b) {
            this.f332b.mo7633a(abstractC0155b);
            if (LayoutInflater$Factory2C0095h.this.f308i != null) {
                LayoutInflater$Factory2C0095h.this.f302c.getDecorView().removeCallbacks(LayoutInflater$Factory2C0095h.this.f309j);
            }
            if (LayoutInflater$Factory2C0095h.this.f307h != null) {
                LayoutInflater$Factory2C0095h.this.m7815s();
                LayoutInflater$Factory2C0095h layoutInflater$Factory2C0095h = LayoutInflater$Factory2C0095h.this;
                layoutInflater$Factory2C0095h.f310k = C0552u.m6233n(layoutInflater$Factory2C0095h.f307h).m6188a(FlexItem.FLEX_GROW_DEFAULT);
                LayoutInflater$Factory2C0095h.this.f310k.m6183a(new C0527aa() { // from class: androidx.appcompat.app.h.c.1
                    @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
                    /* renamed from: b */
                    public void mo3962b(View view) {
                        LayoutInflater$Factory2C0095h.this.f307h.setVisibility(8);
                        if (LayoutInflater$Factory2C0095h.this.f308i != null) {
                            LayoutInflater$Factory2C0095h.this.f308i.dismiss();
                        } else if (LayoutInflater$Factory2C0095h.this.f307h.getParent() instanceof View) {
                            C0552u.m6228s((View) LayoutInflater$Factory2C0095h.this.f307h.getParent());
                        }
                        LayoutInflater$Factory2C0095h.this.f307h.removeAllViews();
                        LayoutInflater$Factory2C0095h.this.f310k.m6183a((AbstractC0568z) null);
                        LayoutInflater$Factory2C0095h.this.f310k = null;
                    }
                });
            }
            if (LayoutInflater$Factory2C0095h.this.f303d != null) {
                LayoutInflater$Factory2C0095h.this.f303d.onSupportActionModeFinished(LayoutInflater$Factory2C0095h.this.f306g);
            }
            LayoutInflater$Factory2C0095h.this.f306g = null;
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: a */
        public boolean mo7632a(AbstractC0155b abstractC0155b, Menu menu) {
            return this.f332b.mo7632a(abstractC0155b, menu);
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: a */
        public boolean mo7631a(AbstractC0155b abstractC0155b, MenuItem menuItem) {
            return this.f332b.mo7631a(abstractC0155b, menuItem);
        }

        @Override // androidx.appcompat.view.AbstractC0155b.AbstractC0156a
        /* renamed from: b */
        public boolean mo7629b(AbstractC0155b abstractC0155b, Menu menu) {
            return this.f332b.mo7629b(abstractC0155b, menu);
        }
    }

    /* renamed from: androidx.appcompat.app.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$d.class */
    public class C0108d extends Window$CallbackC0167i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0108d(Window.Callback callback) {
            super(callback);
            LayoutInflater$Factory2C0095h.this = r4;
        }

        /* renamed from: a */
        final ActionMode m7801a(ActionMode.Callback callback) {
            C0160f.C0161a c0161a = new C0160f.C0161a(LayoutInflater$Factory2C0095h.this.f301b, callback);
            AbstractC0155b m7861a = LayoutInflater$Factory2C0095h.this.m7861a(c0161a);
            if (m7861a != null) {
                return c0161a.m7630b(m7861a);
            }
            return null;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C0095h.this.m7873a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || LayoutInflater$Factory2C0095h.this.m7879a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0182g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            LayoutInflater$Factory2C0095h.this.m7832g(i);
            return true;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            LayoutInflater$Factory2C0095h.this.m7834f(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0182g c0182g = menu instanceof C0182g ? (C0182g) menu : null;
            if (i == 0 && c0182g == null) {
                return false;
            }
            if (c0182g != null) {
                c0182g.setOverrideVisibleItems(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0182g != null) {
                c0182g.setOverrideVisibleItems(false);
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0114i m7877a = LayoutInflater$Factory2C0095h.this.m7877a(0, true);
            if (m7877a == null || m7877a.f352j == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, m7877a.f352j, i);
            }
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return LayoutInflater$Factory2C0095h.this.m7816r() ? m7801a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!LayoutInflater$Factory2C0095h.this.m7816r() || i != 0) ? super.onWindowStartingActionMode(callback, i) : m7801a(callback);
        }
    }

    /* renamed from: androidx.appcompat.app.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$e.class */
    public class C0109e extends AbstractC0110f {

        /* renamed from: c */
        private final PowerManager f336c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0109e(Context context) {
            super();
            LayoutInflater$Factory2C0095h.this = r5;
            this.f336c = (PowerManager) context.getSystemService("power");
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0095h.AbstractC0110f
        /* renamed from: a */
        public int mo7798a() {
            int i = 1;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 1;
                if (this.f336c.isPowerSaveMode()) {
                    i = 2;
                }
            }
            return i;
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0095h.AbstractC0110f
        /* renamed from: b */
        public void mo7797b() {
            LayoutInflater$Factory2C0095h.this.mo7827j();
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0095h.AbstractC0110f
        /* renamed from: c */
        IntentFilter mo7796c() {
            if (Build.VERSION.SDK_INT >= 21) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.app.h$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$f.class */
    public abstract class AbstractC0110f {

        /* renamed from: a */
        private BroadcastReceiver f337a;

        AbstractC0110f() {
            LayoutInflater$Factory2C0095h.this = r4;
        }

        /* renamed from: a */
        abstract int mo7798a();

        /* renamed from: b */
        abstract void mo7797b();

        /* renamed from: c */
        abstract IntentFilter mo7796c();

        /* renamed from: d */
        void m7800d() {
            m7799e();
            IntentFilter mo7796c = mo7796c();
            if (mo7796c == null || mo7796c.countActions() == 0) {
                return;
            }
            if (this.f337a == null) {
                this.f337a = new BroadcastReceiver() { // from class: androidx.appcompat.app.h.f.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        AbstractC0110f.this.mo7797b();
                    }
                };
            }
            LayoutInflater$Factory2C0095h.this.f301b.registerReceiver(this.f337a, mo7796c);
        }

        /* renamed from: e */
        void m7799e() {
            if (this.f337a != null) {
                try {
                    LayoutInflater$Factory2C0095h.this.f301b.unregisterReceiver(this.f337a);
                } catch (IllegalArgumentException e) {
                }
                this.f337a = null;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.h$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$g.class */
    public class C0112g extends AbstractC0110f {

        /* renamed from: c */
        private final C0127n f341c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0112g(C0127n c0127n) {
            super();
            LayoutInflater$Factory2C0095h.this = r4;
            this.f341c = c0127n;
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0095h.AbstractC0110f
        /* renamed from: a */
        public int mo7798a() {
            return this.f341c.m7774a() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0095h.AbstractC0110f
        /* renamed from: b */
        public void mo7797b() {
            LayoutInflater$Factory2C0095h.this.mo7827j();
        }

        @Override // androidx.appcompat.app.LayoutInflater$Factory2C0095h.AbstractC0110f
        /* renamed from: c */
        IntentFilter mo7796c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* renamed from: androidx.appcompat.app.h$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$h.class */
    public class C0113h extends ContentFrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0113h(Context context) {
            super(context);
            LayoutInflater$Factory2C0095h.this = r4;
        }

        /* renamed from: a */
        private boolean m7795a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C0095h.this.m7873a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m7795a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            LayoutInflater$Factory2C0095h.this.m7830h(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C0062a.m7983b(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.h$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$i.class */
    public static final class C0114i {

        /* renamed from: a */
        int f343a;

        /* renamed from: b */
        int f344b;

        /* renamed from: c */
        int f345c;

        /* renamed from: d */
        int f346d;

        /* renamed from: e */
        int f347e;

        /* renamed from: f */
        int f348f;

        /* renamed from: g */
        ViewGroup f349g;

        /* renamed from: h */
        View f350h;

        /* renamed from: i */
        View f351i;

        /* renamed from: j */
        C0182g f352j;

        /* renamed from: k */
        C0179e f353k;

        /* renamed from: l */
        Context f354l;

        /* renamed from: m */
        boolean f355m;

        /* renamed from: n */
        boolean f356n;

        /* renamed from: o */
        boolean f357o;

        /* renamed from: p */
        public boolean f358p;

        /* renamed from: q */
        boolean f359q = false;

        /* renamed from: r */
        boolean f360r;

        /* renamed from: s */
        Bundle f361s;

        C0114i(int i) {
            this.f343a = i;
        }

        /* renamed from: a */
        AbstractC0199n m7791a(AbstractC0197m.AbstractC0198a abstractC0198a) {
            if (this.f352j == null) {
                return null;
            }
            if (this.f353k == null) {
                this.f353k = new C0179e(this.f354l, C0051a.C0058g.abc_list_menu_item_layout);
                this.f353k.setCallback(abstractC0198a);
                this.f352j.addMenuPresenter(this.f353k);
            }
            return this.f353k.m7574a(this.f349g);
        }

        /* renamed from: a */
        void m7793a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0051a.C0052a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(C0051a.C0052a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(C0051a.C0060i.Theme_AppCompat_CompactMenu, true);
            }
            C0158d c0158d = new C0158d(context, 0);
            c0158d.getTheme().setTo(newTheme);
            this.f354l = c0158d;
            TypedArray obtainStyledAttributes = c0158d.obtainStyledAttributes(C0051a.C0061j.AppCompatTheme);
            this.f344b = obtainStyledAttributes.getResourceId(C0051a.C0061j.AppCompatTheme_panelBackground, 0);
            this.f348f = obtainStyledAttributes.getResourceId(C0051a.C0061j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m7792a(C0182g c0182g) {
            C0179e c0179e;
            C0182g c0182g2 = this.f352j;
            if (c0182g == c0182g2) {
                return;
            }
            if (c0182g2 != null) {
                c0182g2.removeMenuPresenter(this.f353k);
            }
            this.f352j = c0182g;
            if (c0182g == null || (c0179e = this.f353k) == null) {
                return;
            }
            c0182g.addMenuPresenter(c0179e);
        }

        /* renamed from: a */
        public boolean m7794a() {
            boolean z = false;
            if (this.f350h == null) {
                return false;
            }
            if (this.f351i != null) {
                return true;
            }
            if (this.f353k.m7576a().getCount() > 0) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: androidx.appcompat.app.h$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$j.class */
    public final class C0115j implements AbstractC0197m.AbstractC0198a {
        C0115j() {
            LayoutInflater$Factory2C0095h.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public void mo7435a(C0182g c0182g, boolean z) {
            C0182g rootMenu = c0182g.getRootMenu();
            boolean z2 = rootMenu != c0182g;
            LayoutInflater$Factory2C0095h layoutInflater$Factory2C0095h = LayoutInflater$Factory2C0095h.this;
            if (z2) {
                c0182g = rootMenu;
            }
            C0114i m7872a = layoutInflater$Factory2C0095h.m7872a((Menu) c0182g);
            if (m7872a != null) {
                if (!z2) {
                    LayoutInflater$Factory2C0095h.this.m7862a(m7872a, z);
                    return;
                }
                LayoutInflater$Factory2C0095h.this.m7878a(m7872a.f343a, m7872a, rootMenu);
                LayoutInflater$Factory2C0095h.this.m7862a(m7872a, true);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public boolean mo7436a(C0182g c0182g) {
            Window.Callback m7820n;
            if (c0182g != null || !LayoutInflater$Factory2C0095h.this.f311l || (m7820n = LayoutInflater$Factory2C0095h.this.m7820n()) == null || LayoutInflater$Factory2C0095h.this.f316q) {
                return true;
            }
            m7820n.onMenuOpened(108, c0182g);
            return true;
        }
    }

    static {
        f268u = Build.VERSION.SDK_INT < 21;
        f269v = new int[]{16842836};
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 21) {
            z = false;
            if (Build.VERSION.SDK_INT <= 25) {
                z = true;
            }
        }
        f271x = z;
        if (!f268u || f270w) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.h.1
            /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
                if (r0.contains("Drawable") != false) goto L10;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private boolean m7807a(java.lang.Throwable r4) {
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
                throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.C00961.m7807a(java.lang.Throwable):boolean");
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                if (!m7807a(th)) {
                    defaultUncaughtExceptionHandler.uncaughtException(thread, th);
                    return;
                }
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
            }
        });
        f270w = true;
    }

    public LayoutInflater$Factory2C0095h(Activity activity, AbstractC0093f abstractC0093f) {
        this(activity, null, abstractC0093f, activity);
    }

    public LayoutInflater$Factory2C0095h(Dialog dialog, AbstractC0093f abstractC0093f) {
        this(dialog.getContext(), dialog.getWindow(), abstractC0093f, dialog);
    }

    private LayoutInflater$Factory2C0095h(Context context, Window window, AbstractC0093f abstractC0093f, Object obj) {
        Integer num;
        ActivityC0092e m7886C;
        this.f310k = null;
        this.f275D = true;
        this.f289R = -100;
        this.f295X = new Runnable() { // from class: androidx.appcompat.app.h.2
            @Override // java.lang.Runnable
            public void run() {
                if ((LayoutInflater$Factory2C0095h.this.f318s & 1) != 0) {
                    LayoutInflater$Factory2C0095h.this.m7828i(0);
                }
                if ((LayoutInflater$Factory2C0095h.this.f318s & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0) {
                    LayoutInflater$Factory2C0095h.this.m7828i(108);
                }
                LayoutInflater$Factory2C0095h layoutInflater$Factory2C0095h = LayoutInflater$Factory2C0095h.this;
                layoutInflater$Factory2C0095h.f317r = false;
                layoutInflater$Factory2C0095h.f318s = 0;
            }
        };
        this.f301b = context;
        this.f303d = abstractC0093f;
        this.f298a = obj;
        if (this.f289R == -100 && (this.f298a instanceof Dialog) && (m7886C = m7886C()) != null) {
            this.f289R = m7886C.m7897h().mo7825k();
        }
        if (this.f289R == -100 && (num = f267t.get(this.f298a.getClass())) != null) {
            this.f289R = num.intValue();
            f267t.remove(this.f298a.getClass());
        }
        if (window != null) {
            m7866a(window);
        }
        C0335i.m7074a();
    }

    /* renamed from: A */
    private ViewGroup m7888A() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f301b.obtainStyledAttributes(C0051a.C0061j.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(C0051a.C0061j.AppCompatTheme_windowNoTitle, false)) {
            mo7839d(1);
        } else if (obtainStyledAttributes.getBoolean(C0051a.C0061j.AppCompatTheme_windowActionBar, false)) {
            mo7839d(108);
        }
        if (obtainStyledAttributes.getBoolean(C0051a.C0061j.AppCompatTheme_windowActionBarOverlay, false)) {
            mo7839d(109);
        }
        if (obtainStyledAttributes.getBoolean(C0051a.C0061j.AppCompatTheme_windowActionModeOverlay, false)) {
            mo7839d(10);
        }
        this.f314o = obtainStyledAttributes.getBoolean(C0051a.C0061j.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        m7809y();
        this.f302c.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f301b);
        if (this.f315p) {
            viewGroup = this.f313n ? (ViewGroup) from.inflate(C0051a.C0058g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0051a.C0058g.abc_screen_simple, (ViewGroup) null);
            if (Build.VERSION.SDK_INT >= 21) {
                C0552u.m6267a(viewGroup, new AbstractC0548q() { // from class: androidx.appcompat.app.h.3
                    @Override // androidx.core.p023g.AbstractC0548q
                    public C0529ac onApplyWindowInsets(View view, C0529ac c0529ac) {
                        int m6363b = c0529ac.m6363b();
                        int m7826j = LayoutInflater$Factory2C0095h.this.m7826j(m6363b);
                        C0529ac c0529ac2 = c0529ac;
                        if (m6363b != m7826j) {
                            c0529ac2 = c0529ac.m6366a(c0529ac.m6367a(), m7826j, c0529ac.m6362c(), c0529ac.m6361d());
                        }
                        return C0552u.m6268a(view, c0529ac2);
                    }
                });
            } else {
                ((AbstractC0272ac) viewGroup).setOnFitSystemWindowsListener(new AbstractC0272ac.AbstractC0273a() { // from class: androidx.appcompat.app.h.4
                    @Override // androidx.appcompat.widget.AbstractC0272ac.AbstractC0273a
                    /* renamed from: a */
                    public void mo7289a(Rect rect) {
                        rect.top = LayoutInflater$Factory2C0095h.this.m7826j(rect.top);
                    }
                });
            }
        } else if (this.f314o) {
            viewGroup = (ViewGroup) from.inflate(C0051a.C0058g.abc_dialog_title_material, (ViewGroup) null);
            this.f312m = false;
            this.f311l = false;
        } else if (this.f311l) {
            TypedValue typedValue = new TypedValue();
            this.f301b.getTheme().resolveAttribute(C0051a.C0052a.actionBarTheme, typedValue, true);
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0158d(this.f301b, typedValue.resourceId) : this.f301b).inflate(C0051a.C0058g.abc_screen_toolbar, (ViewGroup) null);
            this.f272A = (AbstractC0354y) viewGroup2.findViewById(C0051a.C0057f.decor_content_parent);
            this.f272A.setWindowCallback(m7820n());
            if (this.f312m) {
                this.f272A.mo6968a(109);
            }
            if (this.f280I) {
                this.f272A.mo6968a(2);
            }
            viewGroup = viewGroup2;
            if (this.f281J) {
                this.f272A.mo6968a(5);
                viewGroup = viewGroup2;
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f311l + ", windowActionBarOverlay: " + this.f312m + ", android:windowIsFloating: " + this.f314o + ", windowActionModeOverlay: " + this.f313n + ", windowNoTitle: " + this.f315p + " }");
        }
        if (this.f272A == null) {
            this.f278G = (TextView) viewGroup.findViewById(C0051a.C0057f.title);
        }
        C0321ay.m7113b(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0051a.C0057f.action_bar_activity_content);
        ViewGroup viewGroup3 = (ViewGroup) this.f302c.findViewById(16908290);
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
        this.f302c.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.AbstractC0239a() { // from class: androidx.appcompat.app.h.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0239a
            /* renamed from: a */
            public void mo7391a() {
            }

            @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0239a
            /* renamed from: b */
            public void mo7390b() {
                LayoutInflater$Factory2C0095h.this.m7813u();
            }
        });
        return viewGroup;
    }

    /* renamed from: B */
    private void m7887B() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f277F.findViewById(16908290);
        View decorView = this.f302c.getDecorView();
        contentFrameLayout.m7393a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f301b.obtainStyledAttributes(C0051a.C0061j.AppCompatTheme);
        obtainStyledAttributes.getValue(C0051a.C0061j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C0051a.C0061j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0051a.C0061j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0051a.C0061j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0051a.C0061j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0051a.C0061j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: C */
    private ActivityC0092e m7886C() {
        Context context = this.f301b;
        while (true) {
            Context context2 = context;
            if (context2 != null) {
                if (context2 instanceof ActivityC0092e) {
                    return (ActivityC0092e) context2;
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

    /* renamed from: D */
    private void m7885D() {
        if (!this.f276E) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    /* renamed from: E */
    private int m7884E() {
        int i = this.f289R;
        if (i == -100) {
            i = m7890l();
        }
        return i;
    }

    /* renamed from: F */
    private AbstractC0110f m7883F() {
        if (this.f294W == null) {
            this.f294W = new C0109e(this.f301b);
        }
        return this.f294W;
    }

    /* renamed from: G */
    private boolean m7882G() {
        if (!this.f292U && (this.f298a instanceof Activity)) {
            PackageManager packageManager = this.f301b.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f301b, this.f298a.getClass()), 0);
                this.f291T = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.f291T = false;
            }
        }
        this.f292U = true;
        return this.f291T;
    }

    /* renamed from: a */
    private void m7866a(Window window) {
        if (this.f302c == null) {
            Window.Callback callback = window.getCallback();
            if (callback instanceof C0108d) {
                throw new IllegalStateException("AppCompat has already installed itself into the Window");
            }
            this.f319y = new C0108d(callback);
            window.setCallback(this.f319y);
            C0311as m7157a = C0311as.m7157a(this.f301b, (AttributeSet) null, f269v);
            Drawable m7155b = m7157a.m7155b(0);
            if (m7155b != null) {
                window.setBackgroundDrawable(m7155b);
            }
            m7157a.m7164a();
            this.f302c = window;
            return;
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: a */
    private void m7863a(C0114i c0114i, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (c0114i.f357o || this.f316q) {
            return;
        }
        if (c0114i.f343a == 0) {
            if ((this.f301b.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback m7820n = m7820n();
        if (m7820n != null && !m7820n.onMenuOpened(c0114i.f343a, c0114i.f352j)) {
            m7862a(c0114i, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f301b.getSystemService("window");
        if (windowManager == null || !m7848b(c0114i, keyEvent)) {
            return;
        }
        if (c0114i.f349g == null || c0114i.f359q) {
            if (c0114i.f349g == null) {
                if (!m7865a(c0114i) || c0114i.f349g == null) {
                    return;
                }
            } else if (c0114i.f359q && c0114i.f349g.getChildCount() > 0) {
                c0114i.f349g.removeAllViews();
            }
            if (!m7841c(c0114i) || !c0114i.m7794a()) {
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = c0114i.f350h.getLayoutParams();
            ViewGroup.LayoutParams layoutParams3 = layoutParams2;
            if (layoutParams2 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            c0114i.f349g.setBackgroundResource(c0114i.f344b);
            ViewParent parent = c0114i.f350h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(c0114i.f350h);
            }
            c0114i.f349g.addView(c0114i.f350h, layoutParams3);
            if (!c0114i.f350h.hasFocus()) {
                c0114i.f350h.requestFocus();
            }
        } else if (c0114i.f351i != null && (layoutParams = c0114i.f351i.getLayoutParams()) != null && layoutParams.width == -1) {
            i = -1;
            c0114i.f356n = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, c0114i.f346d, c0114i.f347e, 1002, 8519680, -3);
            layoutParams4.gravity = c0114i.f345c;
            layoutParams4.windowAnimations = c0114i.f348f;
            windowManager.addView(c0114i.f349g, layoutParams4);
            c0114i.f357o = true;
        }
        i = -2;
        c0114i.f356n = false;
        WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i, -2, c0114i.f346d, c0114i.f347e, 1002, 8519680, -3);
        layoutParams42.gravity = c0114i.f345c;
        layoutParams42.windowAnimations = c0114i.f348f;
        windowManager.addView(c0114i.f349g, layoutParams42);
        c0114i.f357o = true;
    }

    /* renamed from: a */
    private void m7859a(C0182g c0182g, boolean z) {
        AbstractC0354y abstractC0354y = this.f272A;
        if (abstractC0354y == null || !abstractC0354y.mo6966e() || (ViewConfiguration.get(this.f301b).hasPermanentMenuKey() && !this.f272A.mo6964g())) {
            C0114i m7877a = m7877a(0, true);
            m7877a.f359q = true;
            m7862a(m7877a, false);
            m7863a(m7877a, (KeyEvent) null);
            return;
        }
        Window.Callback m7820n = m7820n();
        if (this.f272A.mo6965f() && z) {
            this.f272A.mo6962i();
            if (this.f316q) {
                return;
            }
            m7820n.onPanelClosed(108, m7877a(0, true).f352j);
        } else if (m7820n == null || this.f316q) {
        } else {
            if (this.f317r && (this.f318s & 1) != 0) {
                this.f302c.getDecorView().removeCallbacks(this.f295X);
                this.f295X.run();
            }
            C0114i m7877a2 = m7877a(0, true);
            if (m7877a2.f352j == null || m7877a2.f360r || !m7820n.onPreparePanel(0, m7877a2.f351i, m7877a2.f352j)) {
                return;
            }
            m7820n.onMenuOpened(108, m7877a2.f352j);
            this.f272A.mo6963h();
        }
    }

    /* renamed from: a */
    private boolean m7867a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f302c.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C0552u.m6292D((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: a */
    private boolean m7865a(C0114i c0114i) {
        c0114i.m7793a(m7819o());
        c0114i.f349g = new C0113h(c0114i.f354l);
        c0114i.f345c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m7848b(r6, r8) != false) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7864a(androidx.appcompat.app.LayoutInflater$Factory2C0095h.C0114i r6, int r7, android.view.KeyEvent r8, int r9) {
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
            boolean r0 = r0.f355m
            if (r0 != 0) goto L24
            r0 = r11
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m7848b(r1, r2)
            if (r0 == 0) goto L3c
        L24:
            r0 = r11
            r10 = r0
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f352j
            if (r0 == 0) goto L3c
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f352j
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r10 = r0
        L3c:
            r0 = r10
            if (r0 == 0) goto L55
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L55
            r0 = r5
            androidx.appcompat.widget.y r0 = r0.f272A
            if (r0 != 0) goto L55
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m7862a(r1, r2)
        L55:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.m7864a(androidx.appcompat.app.h$i, int, android.view.KeyEvent, int):boolean");
    }

    /* renamed from: a */
    private boolean m7856a(boolean z) {
        if (this.f316q) {
            return false;
        }
        int m7884E = m7884E();
        boolean m7852b = m7852b(m7824k(m7884E), z);
        if (m7884E == 0) {
            m7812v().m7800d();
        } else {
            AbstractC0110f abstractC0110f = this.f293V;
            if (abstractC0110f != null) {
                abstractC0110f.m7799e();
            }
        }
        if (m7884E == 3) {
            m7883F().m7800d();
        } else {
            AbstractC0110f abstractC0110f2 = this.f294W;
            if (abstractC0110f2 != null) {
                abstractC0110f2.m7799e();
            }
        }
        return m7852b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004c, code lost:
        if (r9 != r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010a, code lost:
        if (r4.f287P != false) goto L40;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7852b(int r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.m7852b(int, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r6.f343a == 108) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7849b(androidx.appcompat.app.LayoutInflater$Factory2C0095h.C0114i r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.m7849b(androidx.appcompat.app.h$i):boolean");
    }

    /* renamed from: b */
    private boolean m7848b(C0114i c0114i, KeyEvent keyEvent) {
        AbstractC0354y abstractC0354y;
        AbstractC0354y abstractC0354y2;
        AbstractC0354y abstractC0354y3;
        if (this.f316q) {
            return false;
        }
        if (c0114i.f355m) {
            return true;
        }
        C0114i c0114i2 = this.f284M;
        if (c0114i2 != null && c0114i2 != c0114i) {
            m7862a(c0114i2, false);
        }
        Window.Callback m7820n = m7820n();
        if (m7820n != null) {
            c0114i.f351i = m7820n.onCreatePanelView(c0114i.f343a);
        }
        boolean z = c0114i.f343a == 0 || c0114i.f343a == 108;
        if (z && (abstractC0354y3 = this.f272A) != null) {
            abstractC0354y3.mo6961j();
        }
        if (c0114i.f351i == null && (!z || !(m7822m() instanceof C0120l))) {
            if (c0114i.f352j == null || c0114i.f360r) {
                if (c0114i.f352j == null && (!m7849b(c0114i) || c0114i.f352j == null)) {
                    return false;
                }
                if (z && this.f272A != null) {
                    if (this.f273B == null) {
                        this.f273B = new C0105b();
                    }
                    this.f272A.mo6967a(c0114i.f352j, this.f273B);
                }
                c0114i.f352j.stopDispatchingItemsChanged();
                if (!m7820n.onCreatePanelMenu(c0114i.f343a, c0114i.f352j)) {
                    c0114i.m7792a((C0182g) null);
                    if (!z || (abstractC0354y2 = this.f272A) == null) {
                        return false;
                    }
                    abstractC0354y2.mo6967a(null, this.f273B);
                    return false;
                }
                c0114i.f360r = false;
            }
            c0114i.f352j.stopDispatchingItemsChanged();
            if (c0114i.f361s != null) {
                c0114i.f352j.restoreActionViewStates(c0114i.f361s);
                c0114i.f361s = null;
            }
            if (!m7820n.onPreparePanel(0, c0114i.f351i, c0114i.f352j)) {
                if (z && (abstractC0354y = this.f272A) != null) {
                    abstractC0354y.mo6967a(null, this.f273B);
                }
                c0114i.f352j.startDispatchingItemsChanged();
                return false;
            }
            c0114i.f358p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            c0114i.f352j.setQwertyMode(c0114i.f358p);
            c0114i.f352j.startDispatchingItemsChanged();
        }
        c0114i.f355m = true;
        c0114i.f356n = false;
        this.f284M = c0114i;
        return true;
    }

    /* renamed from: c */
    private void m7843c(int i, boolean z) {
        Resources resources = this.f301b.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration, null);
        if (Build.VERSION.SDK_INT < 26) {
            C0119k.m7790a(resources);
        }
        int i2 = this.f290S;
        if (i2 != 0) {
            this.f301b.setTheme(i2);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f301b.getTheme().applyStyle(this.f290S, true);
            }
        }
        if (z) {
            Object obj = this.f298a;
            if (!(obj instanceof Activity)) {
                return;
            }
            Activity activity = (Activity) obj;
            if (activity instanceof AbstractC0903k) {
                if (!((AbstractC0903k) activity).getLifecycle().mo5112a().m5114a(AbstractC0896g.EnumC0898b.STARTED)) {
                    return;
                }
                activity.onConfigurationChanged(configuration);
            } else if (!this.f288Q) {
            } else {
                activity.onConfigurationChanged(configuration);
            }
        }
    }

    /* renamed from: c */
    private boolean m7841c(C0114i c0114i) {
        boolean z = true;
        if (c0114i.f351i != null) {
            c0114i.f350h = c0114i.f351i;
            return true;
        } else if (c0114i.f352j == null) {
            return false;
        } else {
            if (this.f274C == null) {
                this.f274C = new C0115j();
            }
            c0114i.f350h = (View) c0114i.m7791a(this.f274C);
            if (c0114i.f350h == null) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: d */
    private boolean m7838d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            C0114i m7877a = m7877a(i, true);
            if (m7877a.f357o) {
                return false;
            }
            return m7848b(m7877a, keyEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7836e(int r5, android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.m7836e(int, android.view.KeyEvent):boolean");
    }

    /* renamed from: l */
    private void m7823l(int i) {
        this.f318s = (1 << i) | this.f318s;
        if (!this.f317r) {
            C0552u.m6265a(this.f302c.getDecorView(), this.f295X);
            this.f317r = true;
        }
    }

    /* renamed from: m */
    private int m7821m(int i) {
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

    /* renamed from: w */
    private void m7811w() {
        m7808z();
        if (!this.f311l || this.f304e != null) {
            return;
        }
        Object obj = this.f298a;
        if (obj instanceof Activity) {
            this.f304e = new C0129o((Activity) obj, this.f312m);
        } else if (obj instanceof Dialog) {
            this.f304e = new C0129o((Dialog) obj);
        }
        AbstractC0078a abstractC0078a = this.f304e;
        if (abstractC0078a == null) {
            return;
        }
        abstractC0078a.mo7751d(this.f296Y);
    }

    /* renamed from: x */
    private void m7810x() {
        AbstractC0110f abstractC0110f = this.f293V;
        if (abstractC0110f != null) {
            abstractC0110f.m7799e();
        }
        AbstractC0110f abstractC0110f2 = this.f294W;
        if (abstractC0110f2 != null) {
            abstractC0110f2.m7799e();
        }
    }

    /* renamed from: y */
    private void m7809y() {
        if (this.f302c == null) {
            Object obj = this.f298a;
            if (obj instanceof Activity) {
                m7866a(((Activity) obj).getWindow());
            }
        }
        if (this.f302c != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    /* renamed from: z */
    private void m7808z() {
        if (!this.f276E) {
            this.f277F = m7888A();
            CharSequence m7818p = m7818p();
            if (!TextUtils.isEmpty(m7818p)) {
                AbstractC0354y abstractC0354y = this.f272A;
                if (abstractC0354y != null) {
                    abstractC0354y.setWindowTitle(m7818p);
                } else if (m7822m() != null) {
                    m7822m().mo7754b(m7818p);
                } else {
                    TextView textView = this.f278G;
                    if (textView != null) {
                        textView.setText(m7818p);
                    }
                }
            }
            m7887B();
            m7868a(this.f277F);
            this.f276E = true;
            C0114i m7877a = m7877a(0, false);
            if (this.f316q) {
                return;
            }
            if (m7877a != null && m7877a.f352j != null) {
                return;
            }
            m7823l(108);
        }
    }

    /* renamed from: a */
    public View m7869a(View view, String str, Context context, AttributeSet attributeSet) {
        if (this.f300ab == null) {
            String string = this.f301b.obtainStyledAttributes(C0051a.C0061j.AppCompatTheme).getString(C0051a.C0061j.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                this.f300ab = new AppCompatViewInflater();
            } else {
                try {
                    this.f300ab = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f300ab = new AppCompatViewInflater();
                }
            }
        }
        boolean z = false;
        if (f268u) {
            if (attributeSet instanceof XmlPullParser) {
                z = false;
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z = true;
                }
            } else {
                z = m7867a((ViewParent) view);
            }
        }
        return this.f300ab.createView(view, str, context, attributeSet, z, f268u, true, C0320ax.m7118a());
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public AbstractC0078a mo7881a() {
        m7811w();
        return this.f304e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0.length <= r7) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected androidx.appcompat.app.LayoutInflater$Factory2C0095h.C0114i m7877a(int r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.h$i[] r0 = r0.f283L
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
            androidx.appcompat.app.h$i[] r0 = new androidx.appcompat.app.LayoutInflater$Factory2C0095h.C0114i[r0]
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
            r0.f283L = r1
        L2e:
            r0 = r10
            r1 = r7
            r0 = r0[r1]
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r11
            if (r0 != 0) goto L4a
            androidx.appcompat.app.h$i r0 = new androidx.appcompat.app.h$i
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.m7877a(int, boolean):androidx.appcompat.app.h$i");
    }

    /* renamed from: a */
    C0114i m7872a(Menu menu) {
        C0114i[] c0114iArr = this.f283L;
        int length = c0114iArr != null ? c0114iArr.length : 0;
        for (int i = 0; i < length; i++) {
            C0114i c0114i = c0114iArr[i];
            if (c0114i != null && c0114i.f352j == menu) {
                return c0114i;
            }
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC0155b m7861a(AbstractC0155b.AbstractC0156a abstractC0156a) {
        AbstractC0093f abstractC0093f;
        if (abstractC0156a != null) {
            AbstractC0155b abstractC0155b = this.f306g;
            if (abstractC0155b != null) {
                abstractC0155b.mo7640c();
            }
            C0106c c0106c = new C0106c(abstractC0156a);
            AbstractC0078a mo7881a = mo7881a();
            if (mo7881a != null) {
                this.f306g = mo7881a.mo7760a(c0106c);
                AbstractC0155b abstractC0155b2 = this.f306g;
                if (abstractC0155b2 != null && (abstractC0093f = this.f303d) != null) {
                    abstractC0093f.onSupportActionModeStarted(abstractC0155b2);
                }
            }
            if (this.f306g == null) {
                this.f306g = m7847b(c0106c);
            }
            return this.f306g;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7880a(int i) {
        this.f290S = i;
    }

    /* renamed from: a */
    void m7878a(int i, C0114i c0114i, Menu menu) {
        C0114i c0114i2 = c0114i;
        C0182g c0182g = menu;
        if (menu == null) {
            C0114i c0114i3 = c0114i;
            if (c0114i == null) {
                c0114i3 = c0114i;
                if (i >= 0) {
                    C0114i[] c0114iArr = this.f283L;
                    c0114i3 = c0114i;
                    if (i < c0114iArr.length) {
                        c0114i3 = c0114iArr[i];
                    }
                }
            }
            c0114i2 = c0114i3;
            c0182g = menu;
            if (c0114i3 != null) {
                c0182g = c0114i3.f352j;
                c0114i2 = c0114i3;
            }
        }
        if ((c0114i2 == null || c0114i2.f357o) && !this.f316q) {
            this.f319y.m7607a().onPanelClosed(i, c0182g);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7876a(Context context) {
        m7856a(false);
        this.f286O = true;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7875a(Configuration configuration) {
        AbstractC0078a mo7881a;
        if (this.f311l && this.f276E && (mo7881a = mo7881a()) != null) {
            mo7881a.mo7763a(configuration);
        }
        C0335i.m7068b().m7072a(this.f301b);
        m7856a(false);
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7874a(Bundle bundle) {
        this.f286O = true;
        m7856a(false);
        m7809y();
        Object obj = this.f298a;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = C0443f.m6651b((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                AbstractC0078a m7822m = m7822m();
                if (m7822m == null) {
                    this.f296Y = true;
                } else {
                    m7822m.mo7751d(true);
                }
            }
        }
        this.f287P = true;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7871a(View view) {
        m7808z();
        ViewGroup viewGroup = (ViewGroup) this.f277F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f319y.m7607a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7870a(View view, ViewGroup.LayoutParams layoutParams) {
        m7808z();
        ViewGroup viewGroup = (ViewGroup) this.f277F.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f319y.m7607a().onContentChanged();
    }

    /* renamed from: a */
    void m7868a(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    void m7862a(C0114i c0114i, boolean z) {
        AbstractC0354y abstractC0354y;
        if (z && c0114i.f343a == 0 && (abstractC0354y = this.f272A) != null && abstractC0354y.mo6965f()) {
            m7860a(c0114i.f352j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f301b.getSystemService("window");
        if (windowManager != null && c0114i.f357o && c0114i.f349g != null) {
            windowManager.removeView(c0114i.f349g);
            if (z) {
                m7878a(c0114i.f343a, c0114i, null);
            }
        }
        c0114i.f355m = false;
        c0114i.f356n = false;
        c0114i.f357o = false;
        c0114i.f350h = null;
        c0114i.f359q = true;
        if (this.f284M != c0114i) {
            return;
        }
        this.f284M = null;
    }

    /* renamed from: a */
    void m7860a(C0182g c0182g) {
        if (this.f282K) {
            return;
        }
        this.f282K = true;
        this.f272A.mo6960k();
        Window.Callback m7820n = m7820n();
        if (m7820n != null && !this.f316q) {
            m7820n.onPanelClosed(108, c0182g);
        }
        this.f282K = false;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public void mo7858a(Toolbar toolbar) {
        if (!(this.f298a instanceof Activity)) {
            return;
        }
        AbstractC0078a mo7881a = mo7881a();
        if (mo7881a instanceof C0129o) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.f305f = null;
        if (mo7881a != null) {
            mo7881a.mo7780g();
        }
        if (toolbar != null) {
            C0120l c0120l = new C0120l(toolbar, m7818p(), this.f319y);
            this.f304e = c0120l;
            this.f302c.setCallback(c0120l.m7779h());
        } else {
            this.f304e = null;
            this.f302c.setCallback(this.f319y);
        }
        mo7835f();
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: a */
    public final void mo7857a(CharSequence charSequence) {
        this.f320z = charSequence;
        AbstractC0354y abstractC0354y = this.f272A;
        if (abstractC0354y != null) {
            abstractC0354y.setWindowTitle(charSequence);
        } else if (m7822m() != null) {
            m7822m().mo7754b(charSequence);
        } else {
            TextView textView = this.f278G;
            if (textView == null) {
                return;
            }
            textView.setText(charSequence);
        }
    }

    /* renamed from: a */
    boolean m7879a(int i, KeyEvent keyEvent) {
        AbstractC0078a mo7881a = mo7881a();
        if (mo7881a == null || !mo7881a.mo7764a(i, keyEvent)) {
            C0114i c0114i = this.f284M;
            if (c0114i != null && m7864a(c0114i, keyEvent.getKeyCode(), keyEvent, 1)) {
                C0114i c0114i2 = this.f284M;
                if (c0114i2 == null) {
                    return true;
                }
                c0114i2.f356n = true;
                return true;
            } else if (this.f284M != null) {
                return false;
            } else {
                C0114i m7877a = m7877a(0, true);
                m7848b(m7877a, keyEvent);
                boolean m7864a = m7864a(m7877a, keyEvent.getKeyCode(), keyEvent, 1);
                m7877a.f355m = false;
                return m7864a;
            }
        }
        return true;
    }

    /* renamed from: a */
    boolean m7873a(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f298a;
        boolean z = true;
        if (((obj instanceof C0534d.AbstractC0535a) || (obj instanceof DialogC0116i)) && (decorView = this.f302c.getDecorView()) != null && C0534d.m6338a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f319y.m7607a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z = false;
        }
        return z ? m7844c(keyCode, keyEvent) : m7853b(keyCode, keyEvent);
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: b */
    public MenuInflater mo7855b() {
        if (this.f305f == null) {
            m7811w();
            AbstractC0078a abstractC0078a = this.f304e;
            this.f305f = new C0162g(abstractC0078a != null ? abstractC0078a.mo7756b() : this.f301b);
        }
        return this.f305f;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: b */
    public <T extends View> T mo7854b(int i) {
        m7808z();
        return (T) this.f302c.findViewById(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.appcompat.view.AbstractC0155b m7847b(androidx.appcompat.view.AbstractC0155b.AbstractC0156a r8) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.LayoutInflater$Factory2C0095h.m7847b(androidx.appcompat.view.b$a):androidx.appcompat.view.b");
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: b */
    public void mo7851b(Bundle bundle) {
        m7808z();
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: b */
    public void mo7850b(View view, ViewGroup.LayoutParams layoutParams) {
        m7808z();
        ((ViewGroup) this.f277F.findViewById(16908290)).addView(view, layoutParams);
        this.f319y.m7607a().onContentChanged();
    }

    /* renamed from: b */
    boolean m7853b(int i, KeyEvent keyEvent) {
        if (i != 4) {
            if (i != 82) {
                return false;
            }
            m7836e(0, keyEvent);
            return true;
        }
        boolean z = this.f285N;
        this.f285N = false;
        C0114i m7877a = m7877a(0, false);
        if (m7877a == null || !m7877a.f357o) {
            return m7814t();
        } else if (z) {
            return true;
        } else {
            m7862a(m7877a, true);
            return true;
        }
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: c */
    public void mo7846c() {
        this.f288Q = true;
        mo7827j();
        m7894a(this);
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: c */
    public void mo7845c(int i) {
        m7808z();
        ViewGroup viewGroup = (ViewGroup) this.f277F.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f301b).inflate(i, viewGroup);
        this.f319y.m7607a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: c */
    public void mo7842c(Bundle bundle) {
        if (this.f289R != -100) {
            f267t.put(this.f298a.getClass(), Integer.valueOf(this.f289R));
        }
    }

    /* renamed from: c */
    boolean m7844c(int i, KeyEvent keyEvent) {
        boolean z = true;
        if (i != 4) {
            if (i != 82) {
                return false;
            }
            m7838d(0, keyEvent);
            return true;
        }
        if ((keyEvent.getFlags() & 128) == 0) {
            z = false;
        }
        this.f285N = z;
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: d */
    public void mo7840d() {
        this.f288Q = false;
        m7893b(this);
        AbstractC0078a mo7881a = mo7881a();
        if (mo7881a != null) {
            mo7881a.mo7750e(false);
        }
        if (this.f298a instanceof Dialog) {
            m7810x();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: d */
    public boolean mo7839d(int i) {
        int m7821m = m7821m(i);
        if (!this.f315p || m7821m != 108) {
            if (this.f311l && m7821m == 1) {
                this.f311l = false;
            }
            if (m7821m == 1) {
                m7885D();
                this.f315p = true;
                return true;
            } else if (m7821m == 2) {
                m7885D();
                this.f280I = true;
                return true;
            } else if (m7821m == 5) {
                m7885D();
                this.f281J = true;
                return true;
            } else if (m7821m == 10) {
                m7885D();
                this.f313n = true;
                return true;
            } else if (m7821m == 108) {
                m7885D();
                this.f311l = true;
                return true;
            } else if (m7821m != 109) {
                return this.f302c.requestFeature(m7821m);
            } else {
                m7885D();
                this.f312m = true;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: e */
    public void mo7837e() {
        AbstractC0078a mo7881a = mo7881a();
        if (mo7881a != null) {
            mo7881a.mo7750e(true);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: f */
    public void mo7835f() {
        AbstractC0078a mo7881a = mo7881a();
        if (mo7881a == null || !mo7881a.mo7781e()) {
            m7823l(0);
        }
    }

    /* renamed from: f */
    void m7834f(int i) {
        if (i == 108) {
            AbstractC0078a mo7881a = mo7881a();
            if (mo7881a == null) {
                return;
            }
            mo7881a.mo7748f(false);
        } else if (i != 0) {
        } else {
            C0114i m7877a = m7877a(i, true);
            if (!m7877a.f357o) {
                return;
            }
            m7862a(m7877a, false);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: g */
    public void mo7833g() {
        m7893b(this);
        if (this.f317r) {
            this.f302c.getDecorView().removeCallbacks(this.f295X);
        }
        this.f288Q = false;
        this.f316q = true;
        AbstractC0078a abstractC0078a = this.f304e;
        if (abstractC0078a != null) {
            abstractC0078a.mo7780g();
        }
        m7810x();
    }

    /* renamed from: g */
    void m7832g(int i) {
        AbstractC0078a mo7881a;
        if (i != 108 || (mo7881a = mo7881a()) == null) {
            return;
        }
        mo7881a.mo7748f(true);
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: h */
    public final C0082b.AbstractC0084a mo7831h() {
        return new C0104a();
    }

    /* renamed from: h */
    void m7830h(int i) {
        m7862a(m7877a(i, true), true);
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: i */
    public void mo7829i() {
        LayoutInflater from = LayoutInflater.from(this.f301b);
        if (from.getFactory() == null) {
            C0536e.m6335a(from, this);
        } else if (from.getFactory2() instanceof LayoutInflater$Factory2C0095h) {
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* renamed from: i */
    void m7828i(int i) {
        C0114i m7877a;
        C0114i m7877a2 = m7877a(i, true);
        if (m7877a2.f352j != null) {
            Bundle bundle = new Bundle();
            m7877a2.f352j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                m7877a2.f361s = bundle;
            }
            m7877a2.f352j.stopDispatchingItemsChanged();
            m7877a2.f352j.clear();
        }
        m7877a2.f360r = true;
        m7877a2.f359q = true;
        if ((i != 108 && i != 0) || this.f272A == null || (m7877a = m7877a(0, false)) == null) {
            return;
        }
        m7877a.f355m = false;
        m7848b(m7877a, (KeyEvent) null);
    }

    /* renamed from: j */
    int m7826j(int i) {
        boolean z;
        int i2;
        boolean z2;
        boolean z3;
        boolean z4;
        ActionBarContextView actionBarContextView = this.f307h;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f307h.getLayoutParams();
            boolean z5 = true;
            if (this.f307h.isShown()) {
                if (this.f297Z == null) {
                    this.f297Z = new Rect();
                    this.f299aa = new Rect();
                }
                Rect rect = this.f297Z;
                Rect rect2 = this.f299aa;
                rect.set(0, i, 0, 0);
                C0321ay.m7114a(this.f277F, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    View view = this.f279H;
                    if (view == null) {
                        this.f279H = new View(this.f301b);
                        this.f279H.setBackgroundColor(this.f301b.getResources().getColor(C0051a.C0054c.abc_input_method_navigation_guard));
                        this.f277F.addView(this.f279H, -1, new ViewGroup.LayoutParams(-1, i));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.f279H.setLayoutParams(layoutParams);
                        }
                    }
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (this.f279H == null) {
                    z5 = false;
                }
                z2 = z4;
                z3 = z5;
                i2 = i;
                if (!this.f313n) {
                    z2 = z4;
                    z3 = z5;
                    i2 = i;
                    if (z5) {
                        i2 = 0;
                        z2 = z4;
                        z3 = z5;
                    }
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = true;
                z3 = false;
                i2 = i;
            } else {
                z2 = false;
                z3 = false;
                i2 = i;
            }
            z = z3;
            i = i2;
            if (z2) {
                this.f307h.setLayoutParams(marginLayoutParams);
                z = z3;
                i = i2;
            }
        }
        View view2 = this.f279H;
        if (view2 != null) {
            view2.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: j */
    public boolean mo7827j() {
        return m7856a(true);
    }

    @Override // androidx.appcompat.app.AbstractC0094g
    /* renamed from: k */
    public int mo7825k() {
        return this.f289R;
    }

    /* renamed from: k */
    int m7824k(int i) {
        if (i != -100) {
            int i2 = i;
            if (i != -1) {
                if (i != 0) {
                    i2 = i;
                    if (i != 1) {
                        i2 = i;
                        if (i != 2) {
                            if (i != 3) {
                                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                            }
                            return m7883F().mo7798a();
                        }
                    }
                } else if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f301b.getSystemService(UiModeManager.class)).getNightMode() == 0) {
                    return -1;
                } else {
                    i2 = m7812v().mo7798a();
                }
            }
            return i2;
        }
        return -1;
    }

    /* renamed from: m */
    final AbstractC0078a m7822m() {
        return this.f304e;
    }

    /* renamed from: n */
    final Window.Callback m7820n() {
        return this.f302c.getCallback();
    }

    /* renamed from: o */
    final Context m7819o() {
        AbstractC0078a mo7881a = mo7881a();
        Context mo7756b = mo7881a != null ? mo7881a.mo7756b() : null;
        Context context = mo7756b;
        if (mo7756b == null) {
            context = this.f301b;
        }
        return context;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m7869a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
    public boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
        C0114i m7872a;
        Window.Callback m7820n = m7820n();
        if (m7820n == null || this.f316q || (m7872a = m7872a((Menu) c0182g.getRootMenu())) == null) {
            return false;
        }
        return m7820n.onMenuItemSelected(m7872a.f343a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
    public void onMenuModeChange(C0182g c0182g) {
        m7859a(c0182g, true);
    }

    /* renamed from: p */
    final CharSequence m7818p() {
        Object obj = this.f298a;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f320z;
    }

    /* renamed from: q */
    final boolean m7817q() {
        ViewGroup viewGroup;
        return this.f276E && (viewGroup = this.f277F) != null && C0552u.m6295A(viewGroup);
    }

    /* renamed from: r */
    public boolean m7816r() {
        return this.f275D;
    }

    /* renamed from: s */
    void m7815s() {
        C0564y c0564y = this.f310k;
        if (c0564y != null) {
            c0564y.m6182b();
        }
    }

    /* renamed from: t */
    boolean m7814t() {
        AbstractC0155b abstractC0155b = this.f306g;
        if (abstractC0155b != null) {
            abstractC0155b.mo7640c();
            return true;
        }
        AbstractC0078a mo7881a = mo7881a();
        return mo7881a != null && mo7881a.mo7749f();
    }

    /* renamed from: u */
    void m7813u() {
        AbstractC0354y abstractC0354y = this.f272A;
        if (abstractC0354y != null) {
            abstractC0354y.mo6960k();
        }
        if (this.f308i != null) {
            this.f302c.getDecorView().removeCallbacks(this.f309j);
            if (this.f308i.isShowing()) {
                try {
                    this.f308i.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f308i = null;
        }
        m7815s();
        C0114i m7877a = m7877a(0, false);
        if (m7877a == null || m7877a.f352j == null) {
            return;
        }
        m7877a.f352j.close();
    }

    /* renamed from: v */
    final AbstractC0110f m7812v() {
        if (this.f293V == null) {
            this.f293V = new C0112g(C0127n.m7773a(this.f301b));
        }
        return this.f293V;
    }
}
