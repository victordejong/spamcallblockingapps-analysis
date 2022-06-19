package p1727n3.p1734b.p1735a;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
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
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1735a.C25398c;
import p1727n3.p1734b.p1735a.C25426r;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1741e.C25453c;
import p1727n3.p1734b.p1741e.C25455e;
import p1727n3.p1734b.p1741e.C25457f;
import p1727n3.p1734b.p1741e.Window$CallbackC25461h;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.C25466e;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.AbstractC25547u;
import p1727n3.p1734b.p1743f.C25502e;
import p1727n3.p1734b.p1743f.C25507g;
import p1727n3.p1734b.p1743f.C25512h0;
import p1727n3.p1734b.p1743f.C25524k;
import p1727n3.p1734b.p1743f.C25528m;
import p1727n3.p1734b.p1743f.C25540r0;
import p1727n3.p1734b.p1743f.C25545t;
import p1727n3.p1734b.p1743f.C25554w0;
import p1727n3.p1734b.p1743f.C25558x0;
import p1727n3.p1788g.C26179e;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26625z;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.a.k */
/* loaded from: classes-dex2jar.jar:n3/b/a/k.class */
public class LayoutInflater$Factory2C25408k extends AbstractC25407j implements C25469g.AbstractC25470a, LayoutInflater.Factory2 {

    /* renamed from: i0 */
    public static final C26187h<String, Integer> f70860i0 = new C26187h<>();

    /* renamed from: j0 */
    public static final int[] f70861j0 = {16842836};

    /* renamed from: k0 */
    public static final boolean f70862k0 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: l0 */
    public static final boolean f70863l0 = true;

    /* renamed from: A */
    public boolean f70864A;

    /* renamed from: B */
    public boolean f70865B;

    /* renamed from: C */
    public boolean f70866C;

    /* renamed from: D */
    public boolean f70867D;

    /* renamed from: E */
    public C25419j[] f70868E;

    /* renamed from: J */
    public C25419j f70869J;

    /* renamed from: K */
    public boolean f70870K;

    /* renamed from: L */
    public boolean f70871L;

    /* renamed from: M */
    public boolean f70872M;

    /* renamed from: N */
    public boolean f70873N;

    /* renamed from: O */
    public boolean f70874O;

    /* renamed from: P */
    public int f70875P;

    /* renamed from: Q */
    public int f70876Q;

    /* renamed from: R */
    public boolean f70877R;

    /* renamed from: S */
    public boolean f70878S;

    /* renamed from: T */
    public AbstractC25415g f70879T;

    /* renamed from: U */
    public AbstractC25415g f70880U;

    /* renamed from: V */
    public boolean f70881V;

    /* renamed from: W */
    public int f70882W;

    /* renamed from: Y */
    public boolean f70884Y;

    /* renamed from: Z */
    public Rect f70885Z;

    /* renamed from: c */
    public final Object f70886c;

    /* renamed from: d */
    public final Context f70887d;

    /* renamed from: e */
    public Window f70888e;

    /* renamed from: f */
    public C25413e f70889f;

    /* renamed from: g */
    public final AbstractC25406i f70890g;

    /* renamed from: g0 */
    public Rect f70891g0;

    /* renamed from: h */
    public AbstractC25393a f70892h;

    /* renamed from: h0 */
    public C25426r f70893h0;

    /* renamed from: i */
    public MenuInflater f70894i;

    /* renamed from: j */
    public CharSequence f70895j;

    /* renamed from: k */
    public AbstractC25547u f70896k;

    /* renamed from: l */
    public C25411c f70897l;

    /* renamed from: m */
    public C25420k f70898m;

    /* renamed from: n */
    public AbstractC25450a f70899n;

    /* renamed from: o */
    public ActionBarContextView f70900o;

    /* renamed from: p */
    public PopupWindow f70901p;

    /* renamed from: q */
    public Runnable f70902q;

    /* renamed from: s */
    public boolean f70904s;

    /* renamed from: t */
    public ViewGroup f70905t;

    /* renamed from: u */
    public TextView f70906u;

    /* renamed from: v */
    public View f70907v;

    /* renamed from: w */
    public boolean f70908w;

    /* renamed from: x */
    public boolean f70909x;

    /* renamed from: y */
    public boolean f70910y;

    /* renamed from: z */
    public boolean f70911z;

    /* renamed from: r */
    public C26625z f70903r = null;

    /* renamed from: X */
    public final Runnable f70883X = new RunnableC25409a();

    /* renamed from: n3.b.a.k$a */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$a.class */
    public class RunnableC25409a implements Runnable {
        public RunnableC25409a() {
            LayoutInflater$Factory2C25408k.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            if ((layoutInflater$Factory2C25408k.f70882W & 1) != 0) {
                layoutInflater$Factory2C25408k.m3640K(0);
            }
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k2 = LayoutInflater$Factory2C25408k.this;
            if ((layoutInflater$Factory2C25408k2.f70882W & 4096) != 0) {
                layoutInflater$Factory2C25408k2.m3640K(108);
            }
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k3 = LayoutInflater$Factory2C25408k.this;
            layoutInflater$Factory2C25408k3.f70881V = false;
            layoutInflater$Factory2C25408k3.f70882W = 0;
        }
    }

    /* renamed from: n3.b.a.k$b */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$b.class */
    public class C25410b implements C25398c.AbstractC25399a {
        public C25410b() {
            LayoutInflater$Factory2C25408k.this = r4;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: a */
        public Context mo3599a() {
            return LayoutInflater$Factory2C25408k.this.m3635P();
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: b */
        public boolean mo3598b() {
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            layoutInflater$Factory2C25408k.m3631T();
            AbstractC25393a abstractC25393a = layoutInflater$Factory2C25408k.f70892h;
            return (abstractC25393a == null || (abstractC25393a.mo3559d() & 4) == 0) ? false : true;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: c */
        public Drawable mo3597c() {
            C25540r0 m3307p = C25540r0.m3307p(LayoutInflater$Factory2C25408k.this.m3635P(), null, new int[]{C0032R.attr.homeAsUpIndicator});
            Drawable m3316g = m3307p.m3316g(0);
            m3307p.f71466b.recycle();
            return m3316g;
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: d */
        public void mo3596d(Drawable drawable, int i) {
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            layoutInflater$Factory2C25408k.m3631T();
            AbstractC25393a abstractC25393a = layoutInflater$Factory2C25408k.f70892h;
            if (abstractC25393a != null) {
                abstractC25393a.mo3547t(drawable);
                abstractC25393a.mo3549r(i);
            }
        }

        @Override // p1727n3.p1734b.p1735a.C25398c.AbstractC25399a
        /* renamed from: e */
        public void mo3595e(int i) {
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            layoutInflater$Factory2C25408k.m3631T();
            AbstractC25393a abstractC25393a = layoutInflater$Factory2C25408k.f70892h;
            if (abstractC25393a != null) {
                abstractC25393a.mo3549r(i);
            }
        }
    }

    /* renamed from: n3.b.a.k$c */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$c.class */
    public final class C25411c implements AbstractC25483m.AbstractC25484a {
        public C25411c() {
            LayoutInflater$Factory2C25408k.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: a */
        public void mo3413a(C25469g c25469g, boolean z) {
            LayoutInflater$Factory2C25408k.this.m3644G(c25469g);
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: b */
        public boolean mo3412b(C25469g c25469g) {
            Window.Callback m3632S = LayoutInflater$Factory2C25408k.this.m3632S();
            if (m3632S != null) {
                m3632S.onMenuOpened(108, c25469g);
                return true;
            }
            return true;
        }
    }

    /* renamed from: n3.b.a.k$d */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$d.class */
    public class C25412d implements AbstractC25450a.AbstractC25451a {

        /* renamed from: a */
        public AbstractC25450a.AbstractC25451a f70915a;

        public C25412d(AbstractC25450a.AbstractC25451a abstractC25451a) {
            LayoutInflater$Factory2C25408k.this = r4;
            this.f70915a = abstractC25451a;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            return this.f70915a.mo3503c9(abstractC25450a, menu);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            ViewGroup viewGroup = LayoutInflater$Factory2C25408k.this.f70905t;
            AtomicInteger atomicInteger = C26614s.f74505a;
            viewGroup.requestApplyInsets();
            return this.f70915a.mo3502gi(abstractC25450a, menu);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            return this.f70915a.mo3501sd(abstractC25450a, menuItem);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            this.f70915a.mo3500zn(abstractC25450a);
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            if (layoutInflater$Factory2C25408k.f70901p != null) {
                layoutInflater$Factory2C25408k.f70888e.getDecorView().removeCallbacks(LayoutInflater$Factory2C25408k.this.f70902q);
            }
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k2 = LayoutInflater$Factory2C25408k.this;
            if (layoutInflater$Factory2C25408k2.f70900o != null) {
                layoutInflater$Factory2C25408k2.m3639L();
                LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k3 = LayoutInflater$Factory2C25408k.this;
                C26625z m1579b = C26614s.m1579b(layoutInflater$Factory2C25408k3.f70900o);
                m1579b.m1551a(0.0f);
                layoutInflater$Factory2C25408k3.f70903r = m1579b;
                C26625z c26625z = LayoutInflater$Factory2C25408k.this.f70903r;
                a aVar = new a(this);
                View view = c26625z.f74523a.get();
                if (view != null) {
                    c26625z.m1547e(view, aVar);
                }
            }
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k4 = LayoutInflater$Factory2C25408k.this;
            AbstractC25406i abstractC25406i = layoutInflater$Factory2C25408k4.f70890g;
            if (abstractC25406i != null) {
                abstractC25406i.onSupportActionModeFinished(layoutInflater$Factory2C25408k4.f70899n);
            }
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k5 = LayoutInflater$Factory2C25408k.this;
            layoutInflater$Factory2C25408k5.f70899n = null;
            ViewGroup viewGroup = layoutInflater$Factory2C25408k5.f70905t;
            AtomicInteger atomicInteger = C26614s.f74505a;
            viewGroup.requestApplyInsets();
        }
    }

    /* renamed from: n3.b.a.k$e */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$e.class */
    public class C25413e extends Window$CallbackC25461h {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25413e(Window.Callback callback) {
            super(callback);
            LayoutInflater$Factory2C25408k.this = r4;
        }

        /* renamed from: a */
        public final ActionMode m3594a(ActionMode.Callback callback) {
            C25455e.C25456a c25456a = new C25455e.C25456a(LayoutInflater$Factory2C25408k.this.f70887d, callback);
            AbstractC25450a mo3649B = LayoutInflater$Factory2C25408k.this.mo3649B(c25456a);
            if (mo3649B != null) {
                return c25456a.m3505a(mo3649B);
            }
            return null;
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C25408k.this.m3641J(keyEvent) || this.f71161a.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
            if (r0 != false) goto L8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00a6, code lost:
            if (r11 == false) goto L24;
         */
        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchKeyShortcutEvent(android.view.KeyEvent r7) {
            /*
                r6 = this;
                r0 = r6
                android.view.Window$Callback r0 = r0.f71161a
                r1 = r7
                boolean r0 = r0.dispatchKeyShortcutEvent(r1)
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 != 0) goto La9
                r0 = r6
                n3.b.a.k r0 = p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.this
                r10 = r0
                r0 = r7
                int r0 = r0.getKeyCode()
                r11 = r0
                r0 = r10
                r0.m3631T()
                r0 = r10
                n3.b.a.a r0 = r0.f70892h
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L3f
                r0 = r12
                r1 = r11
                r2 = r7
                boolean r0 = r0.mo3555j(r1, r2)
                if (r0 == 0) goto L3f
            L39:
                r0 = 1
                r11 = r0
                goto La4
            L3f:
                r0 = r10
                n3.b.a.k$j r0 = r0.f70869J
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L6d
                r0 = r10
                r1 = r12
                r2 = r7
                int r2 = r2.getKeyCode()
                r3 = r7
                r4 = 1
                boolean r0 = r0.m3627X(r1, r2, r3, r4)
                if (r0 == 0) goto L6d
                r0 = r10
                n3.b.a.k$j r0 = r0.f70869J
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L39
                r0 = r7
                r1 = 1
                r0.f70937l = r1
                goto L39
            L6d:
                r0 = r10
                n3.b.a.k$j r0 = r0.f70869J
                if (r0 != 0) goto La1
                r0 = r10
                r1 = 0
                n3.b.a.k$j r0 = r0.m3633R(r1)
                r12 = r0
                r0 = r10
                r1 = r12
                r2 = r7
                boolean r0 = r0.m3626Y(r1, r2)
                r0 = r10
                r1 = r12
                r2 = r7
                int r2 = r2.getKeyCode()
                r3 = r7
                r4 = 1
                boolean r0 = r0.m3627X(r1, r2, r3, r4)
                r8 = r0
                r0 = r12
                r1 = 0
                r0.f70936k = r1
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
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25413e.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C25469g)) {
                return this.f71161a.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            this.f71161a.onMenuOpened(i, menu);
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            Objects.requireNonNull(layoutInflater$Factory2C25408k);
            if (i == 108) {
                layoutInflater$Factory2C25408k.m3631T();
                AbstractC25393a abstractC25393a = layoutInflater$Factory2C25408k.f70892h;
                if (abstractC25393a == null) {
                    return true;
                }
                abstractC25393a.mo3560c(true);
                return true;
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            this.f71161a.onPanelClosed(i, menu);
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            Objects.requireNonNull(layoutInflater$Factory2C25408k);
            if (i == 108) {
                layoutInflater$Factory2C25408k.m3631T();
                AbstractC25393a abstractC25393a = layoutInflater$Factory2C25408k.f70892h;
                if (abstractC25393a == null) {
                    return;
                }
                abstractC25393a.mo3560c(false);
            } else if (i != 0) {
            } else {
                C25419j m3633R = layoutInflater$Factory2C25408k.m3633R(i);
                if (!m3633R.f70938m) {
                    return;
                }
                layoutInflater$Factory2C25408k.m3643H(m3633R, false);
            }
        }

        @Override // android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C25469g c25469g = menu instanceof C25469g ? (C25469g) menu : null;
            if (i == 0 && c25469g == null) {
                return false;
            }
            if (c25469g != null) {
                c25469g.f71239x = true;
            }
            boolean onPreparePanel = this.f71161a.onPreparePanel(i, view, menu);
            if (c25469g != null) {
                c25469g.f71239x = false;
            }
            return onPreparePanel;
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C25469g c25469g = LayoutInflater$Factory2C25408k.this.m3633R(0).f70933h;
            if (c25469g != null) {
                this.f71161a.onProvideKeyboardShortcuts(list, c25469g, i);
            } else {
                this.f71161a.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            Objects.requireNonNull(LayoutInflater$Factory2C25408k.this);
            return i != 0 ? this.f71161a.onWindowStartingActionMode(callback, i) : m3594a(callback);
        }
    }

    /* renamed from: n3.b.a.k$f */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$f.class */
    public class C25414f extends AbstractC25415g {

        /* renamed from: c */
        public final PowerManager f70918c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25414f(Context context) {
            super();
            LayoutInflater$Factory2C25408k.this = r5;
            this.f70918c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.AbstractC25415g
        /* renamed from: b */
        public IntentFilter mo3591b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.AbstractC25415g
        /* renamed from: c */
        public int mo3590c() {
            return this.f70918c.isPowerSaveMode() ? 2 : 1;
        }

        @Override // p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.AbstractC25415g
        /* renamed from: d */
        public void mo3589d() {
            LayoutInflater$Factory2C25408k.this.m3648C();
        }
    }

    /* renamed from: n3.b.a.k$g */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$g.class */
    public abstract class AbstractC25415g {

        /* renamed from: a */
        public BroadcastReceiver f70920a;

        /* renamed from: n3.b.a.k$g$a */
        /* loaded from: classes-dex2jar.jar:n3/b/a/k$g$a.class */
        public class C25416a extends BroadcastReceiver {
            public C25416a() {
                AbstractC25415g.this = r4;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                AbstractC25415g.this.mo3589d();
            }
        }

        public AbstractC25415g() {
            LayoutInflater$Factory2C25408k.this = r4;
        }

        /* renamed from: a */
        public void m3593a() {
            BroadcastReceiver broadcastReceiver = this.f70920a;
            if (broadcastReceiver != null) {
                try {
                    LayoutInflater$Factory2C25408k.this.f70887d.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException e) {
                }
                this.f70920a = null;
            }
        }

        /* renamed from: b */
        public abstract IntentFilter mo3591b();

        /* renamed from: c */
        public abstract int mo3590c();

        /* renamed from: d */
        public abstract void mo3589d();

        /* renamed from: e */
        public void m3592e() {
            m3593a();
            IntentFilter mo3591b = mo3591b();
            if (mo3591b == null || mo3591b.countActions() == 0) {
                return;
            }
            if (this.f70920a == null) {
                this.f70920a = new C25416a();
            }
            LayoutInflater$Factory2C25408k.this.f70887d.registerReceiver(this.f70920a, mo3591b);
        }
    }

    /* renamed from: n3.b.a.k$h */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$h.class */
    public class C25417h extends AbstractC25415g {

        /* renamed from: c */
        public final C25435u f70923c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25417h(C25435u c25435u) {
            super();
            LayoutInflater$Factory2C25408k.this = r4;
            this.f70923c = c25435u;
        }

        @Override // p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.AbstractC25415g
        /* renamed from: b */
        public IntentFilter mo3591b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x00a9, code lost:
            if (r20.getTime() > r19.getTime()) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00b5, code lost:
            if (r20 == null) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00b8, code lost:
            r18 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00be, code lost:
            if (r18 == null) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c1, code lost:
            r0 = r0.f70980c;
            r0 = java.lang.System.currentTimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00cf, code lost:
            if (p1727n3.p1734b.p1735a.C25434t.f70973d != null) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d2, code lost:
            p1727n3.p1734b.p1735a.C25434t.f70973d = new p1727n3.p1734b.p1735a.C25434t();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00dc, code lost:
            r0 = p1727n3.p1734b.p1735a.C25434t.f70973d;
            r0.m3569a(r0 - com.amazon.device.ads.DtbConstants.SIS_CHECKIN_INTERVAL, r18.getLatitude(), r18.getLongitude());
            r0.m3569a(r0, r18.getLatitude(), r18.getLongitude());
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x010d, code lost:
            if (r0.f70976c != 1) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0110, code lost:
            r17 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0116, code lost:
            r17 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0119, code lost:
            r0 = r0.f70975b;
            r0 = r0.f70974a;
            r0.m3569a(r0 + com.amazon.device.ads.DtbConstants.SIS_CHECKIN_INTERVAL, r18.getLatitude(), r18.getLongitude());
            r0 = r0.f70975b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0148, code lost:
            if (r0 == (-1)) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0150, code lost:
            if (r0 != (-1)) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x015a, code lost:
            if (r0 <= r0) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x015d, code lost:
            r13 = r0 + 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x016b, code lost:
            if (r0 <= r0) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x016e, code lost:
            r13 = r0 + 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0176, code lost:
            r13 = r0 + 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x017c, code lost:
            r13 = r13 + com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0187, code lost:
            r13 = r0 + 43200000;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x018f, code lost:
            r0.f70981a = r17;
            r0.f70982b = r13;
            r17 = r0.f70981a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x01a6, code lost:
            r0 = java.util.Calendar.getInstance().get(11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x01b4, code lost:
            if (r0 < 6) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x01bb, code lost:
            if (r0 < 22) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x01c1, code lost:
            r17 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x01c7, code lost:
            r17 = true;
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r0v67, types: [long] */
        /* JADX WARN: Type inference failed for: r0v71, types: [long] */
        /* JADX WARN: Type inference failed for: r0v73, types: [long] */
        /* JADX WARN: Type inference failed for: r0v75, types: [long] */
        @Override // p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.AbstractC25415g
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo3590c() {
            /*
                Method dump skipped, instructions count: 487
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25417h.mo3590c():int");
        }

        @Override // p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.AbstractC25415g
        /* renamed from: d */
        public void mo3589d() {
            LayoutInflater$Factory2C25408k.this.m3648C();
        }
    }

    /* renamed from: n3.b.a.k$i */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$i.class */
    public class C25418i extends ContentFrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25418i(Context context) {
            super(context, null);
            LayoutInflater$Factory2C25408k.this = r5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflater$Factory2C25408k.this.m3641J(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
                    layoutInflater$Factory2C25408k.m3643H(layoutInflater$Factory2C25408k.m3633R(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C25440a.m3540a(getContext(), i));
        }
    }

    /* renamed from: n3.b.a.k$j */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$j.class */
    public static final class C25419j {

        /* renamed from: a */
        public int f70926a;

        /* renamed from: b */
        public int f70927b;

        /* renamed from: c */
        public int f70928c;

        /* renamed from: d */
        public int f70929d;

        /* renamed from: e */
        public ViewGroup f70930e;

        /* renamed from: f */
        public View f70931f;

        /* renamed from: g */
        public View f70932g;

        /* renamed from: h */
        public C25469g f70933h;

        /* renamed from: i */
        public C25466e f70934i;

        /* renamed from: j */
        public Context f70935j;

        /* renamed from: k */
        public boolean f70936k;

        /* renamed from: l */
        public boolean f70937l;

        /* renamed from: m */
        public boolean f70938m;

        /* renamed from: n */
        public boolean f70939n;

        /* renamed from: o */
        public boolean f70940o = false;

        /* renamed from: p */
        public boolean f70941p;

        /* renamed from: q */
        public Bundle f70942q;

        public C25419j(int i) {
            this.f70926a = i;
        }

        /* renamed from: a */
        public void m3588a(C25469g c25469g) {
            C25466e c25466e;
            C25469g c25469g2 = this.f70933h;
            if (c25469g == c25469g2) {
                return;
            }
            if (c25469g2 != null) {
                c25469g2.m3463u(this.f70934i);
            }
            this.f70933h = c25469g;
            if (c25469g == null || (c25466e = this.f70934i) == null) {
                return;
            }
            c25469g.m3482b(c25466e, c25469g.f71216a);
        }
    }

    /* renamed from: n3.b.a.k$k */
    /* loaded from: classes-dex2jar.jar:n3/b/a/k$k.class */
    public final class C25420k implements AbstractC25483m.AbstractC25484a {
        public C25420k() {
            LayoutInflater$Factory2C25408k.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: a */
        public void mo3413a(C25469g c25469g, boolean z) {
            C25469g m3473k = c25469g.m3473k();
            boolean z2 = m3473k != c25469g;
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
            if (z2) {
                c25469g = m3473k;
            }
            C25419j m3636O = layoutInflater$Factory2C25408k.m3636O(c25469g);
            if (m3636O != null) {
                if (!z2) {
                    LayoutInflater$Factory2C25408k.this.m3643H(m3636O, z);
                    return;
                }
                LayoutInflater$Factory2C25408k.this.m3645F(m3636O.f70926a, m3636O, m3473k);
                LayoutInflater$Factory2C25408k.this.m3643H(m3636O, true);
            }
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: b */
        public boolean mo3412b(C25469g c25469g) {
            Window.Callback m3632S;
            if (c25469g == c25469g.m3473k()) {
                LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = LayoutInflater$Factory2C25408k.this;
                if (!layoutInflater$Factory2C25408k.f70910y || (m3632S = layoutInflater$Factory2C25408k.m3632S()) == null || LayoutInflater$Factory2C25408k.this.f70874O) {
                    return true;
                }
                m3632S.onMenuOpened(108, c25469g);
                return true;
            }
            return true;
        }
    }

    public LayoutInflater$Factory2C25408k(Context context, Window window, AbstractC25406i abstractC25406i, Object obj) {
        C26187h<String, Integer> c26187h;
        Integer orDefault;
        h hVar;
        this.f70875P = -100;
        this.f70887d = context;
        this.f70890g = abstractC25406i;
        this.f70886c = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof h)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    hVar = (h) context;
                    break;
                }
            }
            hVar = null;
            if (hVar != null) {
                this.f70875P = hVar.getDelegate().mo3618g();
            }
        }
        if (this.f70875P == -100 && (orDefault = (c26187h = f70860i0).getOrDefault(this.f70886c.getClass().getName(), null)) != null) {
            this.f70875P = orDefault.intValue();
            c26187h.remove(this.f70886c.getClass().getName());
        }
        if (window != null) {
            m3646E(window);
        }
        C25502e.m3376e();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: A */
    public final void mo3650A(CharSequence charSequence) {
        this.f70895j = charSequence;
        AbstractC25547u abstractC25547u = this.f70896k;
        if (abstractC25547u != null) {
            abstractC25547u.setWindowTitle(charSequence);
            return;
        }
        AbstractC25393a abstractC25393a = this.f70892h;
        if (abstractC25393a != null) {
            abstractC25393a.mo3541z(charSequence);
            return;
        }
        TextView textView = this.f70906u;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p1727n3.p1734b.p1741e.AbstractC25450a mo3649B(p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a r8) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.mo3649B(n3.b.e.a$a):n3.b.e.a");
    }

    /* renamed from: C */
    public boolean m3648C() {
        return m3647D(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0271  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3647D(boolean r7) {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.m3647D(boolean):boolean");
    }

    /* renamed from: E */
    public final void m3646E(Window window) {
        if (this.f70888e == null) {
            Window.Callback callback = window.getCallback();
            if (callback instanceof C25413e) {
                throw new IllegalStateException("AppCompat has already installed itself into the Window");
            }
            C25413e c25413e = new C25413e(callback);
            this.f70889f = c25413e;
            window.setCallback(c25413e);
            C25540r0 m3307p = C25540r0.m3307p(this.f70887d, null, f70861j0);
            Drawable m3315h = m3307p.m3315h(0);
            if (m3315h != null) {
                window.setBackgroundDrawable(m3315h);
            }
            m3307p.f71466b.recycle();
            this.f70888e = window;
            return;
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: F */
    public void m3645F(int i, C25419j c25419j, Menu menu) {
        C25469g c25469g = menu;
        if (menu == null) {
            c25469g = menu;
            if (c25419j != null) {
                c25469g = c25419j.f70933h;
            }
        }
        if ((c25419j == null || c25419j.f70938m) && !this.f70874O) {
            this.f70889f.f71161a.onPanelClosed(i, c25469g);
        }
    }

    /* renamed from: G */
    public void m3644G(C25469g c25469g) {
        if (this.f70867D) {
            return;
        }
        this.f70867D = true;
        this.f70896k.m3282i();
        Window.Callback m3632S = m3632S();
        if (m3632S != null && !this.f70874O) {
            m3632S.onPanelClosed(108, c25469g);
        }
        this.f70867D = false;
    }

    /* renamed from: H */
    public void m3643H(C25419j c25419j, boolean z) {
        ViewGroup viewGroup;
        AbstractC25547u abstractC25547u;
        if (z && c25419j.f70926a == 0 && (abstractC25547u = this.f70896k) != null && abstractC25547u.m3288c()) {
            m3644G(c25419j.f70933h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f70887d.getSystemService("window");
        if (windowManager != null && c25419j.f70938m && (viewGroup = c25419j.f70930e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                m3645F(c25419j.f70926a, c25419j, null);
            }
        }
        c25419j.f70936k = false;
        c25419j.f70937l = false;
        c25419j.f70938m = false;
        c25419j.f70931f = null;
        c25419j.f70940o = true;
        if (this.f70869J != c25419j) {
            return;
        }
        this.f70869J = null;
    }

    /* renamed from: I */
    public final Configuration m3642I(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x021a  */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3641J(android.view.KeyEvent r5) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.m3641J(android.view.KeyEvent):boolean");
    }

    /* renamed from: K */
    public void m3640K(int i) {
        C25419j m3633R = m3633R(i);
        if (m3633R.f70933h != null) {
            Bundle bundle = new Bundle();
            m3633R.f70933h.m3461w(bundle);
            if (bundle.size() > 0) {
                m3633R.f70942q = bundle;
            }
            m3633R.f70933h.m3484A();
            m3633R.f70933h.clear();
        }
        m3633R.f70941p = true;
        m3633R.f70940o = true;
        if ((i == 108 || i == 0) && this.f70896k != null) {
            C25419j m3633R2 = m3633R(0);
            m3633R2.f70936k = false;
            m3626Y(m3633R2, null);
        }
    }

    /* renamed from: L */
    public void m3639L() {
        C26625z c26625z = this.f70903r;
        if (c26625z != null) {
            c26625z.m1550b();
        }
    }

    /* renamed from: M */
    public final void m3638M() {
        ViewGroup viewGroup;
        if (!this.f70904s) {
            TypedArray obtainStyledAttributes = this.f70887d.obtainStyledAttributes(C0032R.styleable.AppCompatTheme);
            int i = C0032R.styleable.AppCompatTheme_windowActionBar;
            if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
            }
            if (obtainStyledAttributes.getBoolean(C0032R.styleable.AppCompatTheme_windowNoTitle, false)) {
                mo3605u(1);
            } else if (obtainStyledAttributes.getBoolean(i, false)) {
                mo3605u(108);
            }
            if (obtainStyledAttributes.getBoolean(C0032R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                mo3605u(109);
            }
            if (obtainStyledAttributes.getBoolean(C0032R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                mo3605u(10);
            }
            this.f70865B = obtainStyledAttributes.getBoolean(C0032R.styleable.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            m3637N();
            this.f70888e.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f70887d);
            if (this.f70866C) {
                viewGroup = this.f70864A ? (ViewGroup) from.inflate(C0032R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0032R.layout.abc_screen_simple, (ViewGroup) null);
            } else if (this.f70865B) {
                viewGroup = (ViewGroup) from.inflate(C0032R.layout.abc_dialog_title_material, (ViewGroup) null);
                this.f70911z = false;
                this.f70910y = false;
            } else if (this.f70910y) {
                TypedValue typedValue = new TypedValue();
                this.f70887d.getTheme().resolveAttribute(C0032R.attr.actionBarTheme, typedValue, true);
                ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C25453c(this.f70887d, typedValue.resourceId) : this.f70887d).inflate(C0032R.layout.abc_screen_toolbar, (ViewGroup) null);
                AbstractC25547u abstractC25547u = (AbstractC25547u) viewGroup2.findViewById(C0032R.C0034id.decor_content_parent);
                this.f70896k = abstractC25547u;
                abstractC25547u.setWindowCallback(m3632S());
                if (this.f70911z) {
                    this.f70896k.m3283h(109);
                }
                if (this.f70908w) {
                    this.f70896k.m3283h(2);
                }
                viewGroup = viewGroup2;
                if (this.f70909x) {
                    this.f70896k.m3283h(5);
                    viewGroup = viewGroup2;
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup == null) {
                StringBuilder m8728C = C22128a.m8728C("AppCompat does not support the current theme features: { windowActionBar: ");
                m8728C.append(this.f70910y);
                m8728C.append(", windowActionBarOverlay: ");
                m8728C.append(this.f70911z);
                m8728C.append(", android:windowIsFloating: ");
                m8728C.append(this.f70865B);
                m8728C.append(", windowActionModeOverlay: ");
                m8728C.append(this.f70864A);
                m8728C.append(", windowNoTitle: ");
                throw new IllegalArgumentException(C22128a.m8590o(m8728C, this.f70866C, " }"));
            }
            C26614s.m1563r(viewGroup, new C25421l(this));
            if (this.f70896k == null) {
                this.f70906u = (TextView) viewGroup.findViewById(C0032R.C0034id.title);
            }
            Method method = C25558x0.f71542a;
            try {
                Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method2.isAccessible()) {
                    method2.setAccessible(true);
                }
                method2.invoke(viewGroup, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            }
            ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0032R.C0034id.action_bar_activity_content);
            ViewGroup viewGroup3 = (ViewGroup) this.f70888e.findViewById(16908290);
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
            this.f70888e.setContentView(viewGroup);
            contentFrameLayout.setAttachListener(new C25422m(this));
            this.f70905t = viewGroup;
            Object obj = this.f70886c;
            CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f70895j;
            if (!TextUtils.isEmpty(title)) {
                AbstractC25547u abstractC25547u2 = this.f70896k;
                if (abstractC25547u2 != null) {
                    abstractC25547u2.setWindowTitle(title);
                } else {
                    AbstractC25393a abstractC25393a = this.f70892h;
                    if (abstractC25393a != null) {
                        abstractC25393a.mo3541z(title);
                    } else {
                        TextView textView = this.f70906u;
                        if (textView != null) {
                            textView.setText(title);
                        }
                    }
                }
            }
            ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f70905t.findViewById(16908290);
            View decorView = this.f70888e.getDecorView();
            contentFrameLayout2.f305g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (contentFrameLayout2.isLaidOut()) {
                contentFrameLayout2.requestLayout();
            }
            TypedArray obtainStyledAttributes2 = this.f70887d.obtainStyledAttributes(C0032R.styleable.AppCompatTheme);
            obtainStyledAttributes2.getValue(C0032R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
            obtainStyledAttributes2.getValue(C0032R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
            int i2 = C0032R.styleable.AppCompatTheme_windowFixedWidthMajor;
            if (obtainStyledAttributes2.hasValue(i2)) {
                obtainStyledAttributes2.getValue(i2, contentFrameLayout2.getFixedWidthMajor());
            }
            int i3 = C0032R.styleable.AppCompatTheme_windowFixedWidthMinor;
            if (obtainStyledAttributes2.hasValue(i3)) {
                obtainStyledAttributes2.getValue(i3, contentFrameLayout2.getFixedWidthMinor());
            }
            int i4 = C0032R.styleable.AppCompatTheme_windowFixedHeightMajor;
            if (obtainStyledAttributes2.hasValue(i4)) {
                obtainStyledAttributes2.getValue(i4, contentFrameLayout2.getFixedHeightMajor());
            }
            int i5 = C0032R.styleable.AppCompatTheme_windowFixedHeightMinor;
            if (obtainStyledAttributes2.hasValue(i5)) {
                obtainStyledAttributes2.getValue(i5, contentFrameLayout2.getFixedHeightMinor());
            }
            obtainStyledAttributes2.recycle();
            contentFrameLayout2.requestLayout();
            this.f70904s = true;
            C25419j m3633R = m3633R(0);
            if (this.f70874O || m3633R.f70933h != null) {
                return;
            }
            m3630U(108);
        }
    }

    /* renamed from: N */
    public final void m3637N() {
        if (this.f70888e == null) {
            Object obj = this.f70886c;
            if (obj instanceof Activity) {
                m3646E(((Activity) obj).getWindow());
            }
        }
        if (this.f70888e != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    /* renamed from: O */
    public C25419j m3636O(Menu menu) {
        C25419j[] c25419jArr = this.f70868E;
        int length = c25419jArr != null ? c25419jArr.length : 0;
        for (int i = 0; i < length; i++) {
            C25419j c25419j = c25419jArr[i];
            if (c25419j != null && c25419j.f70933h == menu) {
                return c25419j;
            }
        }
        return null;
    }

    /* renamed from: P */
    public final Context m3635P() {
        m3631T();
        AbstractC25393a abstractC25393a = this.f70892h;
        Context mo3558e = abstractC25393a != null ? abstractC25393a.mo3558e() : null;
        Context context = mo3558e;
        if (mo3558e == null) {
            context = this.f70887d;
        }
        return context;
    }

    /* renamed from: Q */
    public final AbstractC25415g m3634Q(Context context) {
        if (this.f70879T == null) {
            if (C25435u.f70977d == null) {
                Context applicationContext = context.getApplicationContext();
                C25435u.f70977d = new C25435u(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f70879T = new C25417h(C25435u.f70977d);
        }
        return this.f70879T;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0.length <= r7) goto L6;
     */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25419j m3633R(int r7) {
        /*
            r6 = this;
            r0 = r6
            n3.b.a.k$j[] r0 = r0.f70868E
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
            n3.b.a.k$j[] r0 = new p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25419j[r0]
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
            r0.f70868E = r1
        L2a:
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            if (r0 != 0) goto L44
            n3.b.a.k$j r0 = new n3.b.a.k$j
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.m3633R(int):n3.b.a.k$j");
    }

    /* renamed from: S */
    public final Window.Callback m3632S() {
        return this.f70888e.getCallback();
    }

    /* renamed from: T */
    public final void m3631T() {
        m3638M();
        if (!this.f70910y || this.f70892h != null) {
            return;
        }
        Object obj = this.f70886c;
        if (obj instanceof Activity) {
            this.f70892h = new C25437v((Activity) this.f70886c, this.f70911z);
        } else if (obj instanceof Dialog) {
            this.f70892h = new C25437v((Dialog) this.f70886c);
        }
        AbstractC25393a abstractC25393a = this.f70892h;
        if (abstractC25393a == null) {
            return;
        }
        abstractC25393a.mo3554m(this.f70884Y);
    }

    /* renamed from: U */
    public final void m3630U(int i) {
        this.f70882W = (1 << i) | this.f70882W;
        if (!this.f70881V) {
            View decorView = this.f70888e.getDecorView();
            Runnable runnable = this.f70883X;
            AtomicInteger atomicInteger = C26614s.f74505a;
            decorView.postOnAnimation(runnable);
            this.f70881V = true;
        }
    }

    /* renamed from: V */
    public int m3629V(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i == 0) {
                    if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                        return m3634Q(context).mo3590c();
                    }
                    return -1;
                } else if (i != 1 && i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                    if (this.f70880U == null) {
                        this.f70880U = new C25414f(context);
                    }
                    return this.f70880U.mo3590c();
                }
            }
            return i;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0248, code lost:
        if (r0 != null) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0256  */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3628W(p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25419j r11, android.view.KeyEvent r12) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.m3628W(n3.b.a.k$j, android.view.KeyEvent):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m3626Y(r6, r8) != false) goto L9;
     */
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3627X(p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25419j r6, int r7, android.view.KeyEvent r8, int r9) {
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
            boolean r0 = r0.f70936k
            if (r0 != 0) goto L24
            r0 = r11
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m3626Y(r1, r2)
            if (r0 == 0) goto L3e
        L24:
            r0 = r6
            n3.b.e.i.g r0 = r0.f70933h
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
            n3.b.f.u r0 = r0.f70896k
            if (r0 != 0) goto L57
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m3643H(r1, r2)
        L57:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.m3627X(n3.b.a.k$j, int, android.view.KeyEvent, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b4, code lost:
        if (r0 == 108) goto L43;
     */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3626Y(p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.C25419j r6, android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.m3626Y(n3.b.a.k$j, android.view.KeyEvent):boolean");
    }

    /* renamed from: Z */
    public final boolean m3625Z() {
        boolean z;
        ViewGroup viewGroup;
        if (this.f70904s && (viewGroup = this.f70905t) != null) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (viewGroup.isLaidOut()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: a */
    public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
        C25419j m3636O;
        Window.Callback m3632S = m3632S();
        if (m3632S == null || this.f70874O || (m3636O = m3636O(c25469g.m3473k())) == null) {
            return false;
        }
        return m3632S.onMenuItemSelected(m3636O.f70926a, menuItem);
    }

    /* renamed from: a0 */
    public final void m3624a0() {
        if (!this.f70904s) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: b */
    public void mo3368b(C25469g c25469g) {
        AbstractC25547u abstractC25547u = this.f70896k;
        if (abstractC25547u == null || !abstractC25547u.m3290a() || (ViewConfiguration.get(this.f70887d).hasPermanentMenuKey() && !this.f70896k.m3284g())) {
            C25419j m3633R = m3633R(0);
            m3633R.f70940o = true;
            m3643H(m3633R, false);
            m3628W(m3633R, null);
            return;
        }
        Window.Callback m3632S = m3632S();
        if (this.f70896k.m3288c()) {
            this.f70896k.m3287d();
            if (this.f70874O) {
                return;
            }
            m3632S.onPanelClosed(108, m3633R(0).f70933h);
        } else if (m3632S == null || this.f70874O) {
        } else {
            if (this.f70881V && (1 & this.f70882W) != 0) {
                this.f70888e.getDecorView().removeCallbacks(this.f70883X);
                this.f70883X.run();
            }
            C25419j m3633R2 = m3633R(0);
            C25469g c25469g2 = m3633R2.f70933h;
            if (c25469g2 == null || m3633R2.f70941p || !m3632S.onPreparePanel(0, m3633R2.f70932g, c25469g2)) {
                return;
            }
            m3632S.onMenuOpened(108, m3633R2.f70933h);
            this.f70896k.m3289b();
        }
    }

    /* renamed from: b0 */
    public final int m3623b0(C26568d0 c26568d0, Rect rect) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        int m1661f = c26568d0.m1661f();
        ActionBarContextView actionBarContextView = this.f70900o;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
            i = m1661f;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f70900o.getLayoutParams();
            boolean z4 = true;
            if (this.f70900o.isShown()) {
                if (this.f70885Z == null) {
                    this.f70885Z = new Rect();
                    this.f70891g0 = new Rect();
                }
                Rect rect2 = this.f70885Z;
                Rect rect3 = this.f70891g0;
                rect2.set(c26568d0.m1663d(), c26568d0.m1661f(), c26568d0.m1662e(), c26568d0.m1664c());
                ViewGroup viewGroup = this.f70905t;
                Method method = C25558x0.f71542a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect2, rect3);
                    } catch (Exception e) {
                    }
                }
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                C26568d0 m1572i = C26614s.m1572i(this.f70905t);
                int m1663d = m1572i == null ? 0 : m1572i.m1663d();
                int m1662e = m1572i == null ? 0 : m1572i.m1662e();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z3 = true;
                }
                if (i3 <= 0 || this.f70907v != null) {
                    View view = this.f70907v;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i6 = marginLayoutParams2.height;
                        int i7 = marginLayoutParams.topMargin;
                        if (i6 != i7 || marginLayoutParams2.leftMargin != m1663d || marginLayoutParams2.rightMargin != m1662e) {
                            marginLayoutParams2.height = i7;
                            marginLayoutParams2.leftMargin = m1663d;
                            marginLayoutParams2.rightMargin = m1662e;
                            this.f70907v.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f70887d);
                    this.f70907v = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = m1663d;
                    layoutParams.rightMargin = m1662e;
                    this.f70905t.addView(this.f70907v, -1, layoutParams);
                }
                View view3 = this.f70907v;
                boolean z5 = view3 != null;
                if (z5 && view3.getVisibility() != 0) {
                    View view4 = this.f70907v;
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    if ((view4.getWindowSystemUiVisibility() & 8192) != 0) {
                        Context context = this.f70887d;
                        int i8 = C0032R.color.abc_decor_view_status_guard_light;
                        Object obj = C26467a.f74235a;
                        i2 = C26467a.C26471d.m1787a(context, i8);
                    } else {
                        Context context2 = this.f70887d;
                        int i9 = C0032R.color.abc_decor_view_status_guard;
                        Object obj2 = C26467a.f74235a;
                        i2 = C26467a.C26471d.m1787a(context2, i9);
                    }
                    view4.setBackgroundColor(i2);
                }
                int i10 = m1661f;
                if (!this.f70864A) {
                    i10 = m1661f;
                    if (z5) {
                        i10 = 0;
                    }
                }
                z4 = z3;
                z2 = z5;
                m1661f = i10;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z4 = false;
                z2 = false;
            }
            z = z2;
            i = m1661f;
            if (z4) {
                this.f70900o.setLayoutParams(marginLayoutParams);
                z = z2;
                i = m1661f;
            }
        }
        View view5 = this.f70907v;
        if (view5 != null) {
            int i11 = 8;
            if (z) {
                i11 = 0;
            }
            view5.setVisibility(i11);
        }
        return i;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: c */
    public void mo3622c(View view, ViewGroup.LayoutParams layoutParams) {
        m3638M();
        ((ViewGroup) this.f70905t.findViewById(16908290)).addView(view, layoutParams);
        this.f70889f.f71161a.onContentChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0406  */
    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.Context mo3621d(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 1162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.mo3621d(android.content.Context):android.content.Context");
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: e */
    public <T extends View> T mo3620e(int i) {
        m3638M();
        return (T) this.f70888e.findViewById(i);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: f */
    public final C25398c.AbstractC25399a mo3619f() {
        return new C25410b();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: g */
    public int mo3618g() {
        return this.f70875P;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: h */
    public MenuInflater mo3617h() {
        if (this.f70894i == null) {
            m3631T();
            AbstractC25393a abstractC25393a = this.f70892h;
            this.f70894i = new C25457f(abstractC25393a != null ? abstractC25393a.mo3558e() : this.f70887d);
        }
        return this.f70894i;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: i */
    public AbstractC25393a mo3616i() {
        m3631T();
        return this.f70892h;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: j */
    public void mo3615j() {
        LayoutInflater from = LayoutInflater.from(this.f70887d);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            boolean z = from.getFactory2() instanceof LayoutInflater$Factory2C25408k;
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: k */
    public void mo3614k() {
        m3631T();
        AbstractC25393a abstractC25393a = this.f70892h;
        if (abstractC25393a == null || !abstractC25393a.mo3573g()) {
            m3630U(0);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: l */
    public void mo3613l(Configuration configuration) {
        if (this.f70910y && this.f70904s) {
            m3631T();
            AbstractC25393a abstractC25393a = this.f70892h;
            if (abstractC25393a != null) {
                abstractC25393a.mo3556h(configuration);
            }
        }
        C25502e m3380a = C25502e.m3380a();
        Context context = this.f70887d;
        synchronized (m3380a) {
            C25512h0 c25512h0 = m3380a.f71365a;
            synchronized (c25512h0) {
                C26179e<WeakReference<Drawable.ConstantState>> c26179e = c25512h0.f71391d.get(context);
                if (c26179e != null) {
                    c26179e.m2608b();
                }
            }
        }
        m3647D(false);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: m */
    public void mo3612m(Bundle bundle) {
        this.f70871L = true;
        m3647D(false);
        m3637N();
        Object obj = this.f70886c;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = MediaSessionCompat.m43201s0((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                AbstractC25393a abstractC25393a = this.f70892h;
                if (abstractC25393a == null) {
                    this.f70884Y = true;
                } else {
                    abstractC25393a.mo3554m(true);
                }
            }
            synchronized (AbstractC25407j.f70859b) {
                AbstractC25407j.m3651t(this);
                AbstractC25407j.f70858a.add(new WeakReference<>(this));
            }
        }
        this.f70872M = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo3611n() {
        /*
            r4 = this;
            n3.g.h<java.lang.String, java.lang.Integer> r0 = p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.f70860i0
            r5 = r0
            r0 = r4
            java.lang.Object r0 = r0.f70886c
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L22
            java.lang.Object r0 = p1727n3.p1734b.p1735a.AbstractC25407j.f70859b
            r6 = r0
            r0 = r6
            monitor-enter(r0)
            r0 = r4
            p1727n3.p1734b.p1735a.AbstractC25407j.m3651t(r0)     // Catch: java.lang.Throwable -> L1d
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1d
            goto L22
        L1d:
            r5 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1d
            r0 = r5
            throw r0
        L22:
            r0 = r4
            boolean r0 = r0.f70881V
            if (r0 == 0) goto L38
            r0 = r4
            android.view.Window r0 = r0.f70888e
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.f70883X
            boolean r0 = r0.removeCallbacks(r1)
        L38:
            r0 = r4
            r1 = 0
            r0.f70873N = r1
            r0 = r4
            r1 = 1
            r0.f70874O = r1
            r0 = r4
            int r0 = r0.f70875P
            r1 = -100
            if (r0 == r1) goto L7a
            r0 = r4
            java.lang.Object r0 = r0.f70886c
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L7a
            r0 = r6
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L7a
            r0 = r5
            r1 = r4
            java.lang.Object r1 = r1.f70886c
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.f70875P
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L89
        L7a:
            r0 = r5
            r1 = r4
            java.lang.Object r1 = r1.f70886c
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L89:
            r0 = r4
            n3.b.a.a r0 = r0.f70892h
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L96
            r0 = r6
            r0.mo3572i()
        L96:
            r0 = r4
            n3.b.a.k$g r0 = r0.f70879T
            r6 = r0
            r0 = r6
            if (r0 == 0) goto La3
            r0 = r6
            r0.m3593a()
        La3:
            r0 = r4
            n3.b.a.k$g r0 = r0.f70880U
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lb0
            r0 = r6
            r0.m3593a()
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k.mo3611n():void");
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: o */
    public void mo3610o(Bundle bundle) {
        m3638M();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0479 -> B:121:0x0487). Please submit an issue!!! */
    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        AppCompatButton appCompatButton;
        if (this.f70893h0 == null) {
            String string = this.f70887d.obtainStyledAttributes(C0032R.styleable.AppCompatTheme).getString(C0032R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f70893h0 = new C25426r();
            } else {
                try {
                    this.f70893h0 = (C25426r) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    this.f70893h0 = new C25426r();
                }
            }
        }
        C25426r c25426r = this.f70893h0;
        boolean z2 = C25554w0.f71526a;
        Objects.requireNonNull(c25426r);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.View, 0, 0);
        int resourceId = obtainStyledAttributes.getResourceId(C0032R.styleable.View_theme, 0);
        obtainStyledAttributes.recycle();
        C25453c c25453c = (resourceId == 0 || ((context instanceof C25453c) && ((C25453c) context).f71097a == resourceId)) ? context : new C25453c(context, resourceId);
        str.hashCode();
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                appCompatButton = new C25524k(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new AppCompatCheckedTextView(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new C25507g(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = c25426r.m3580e(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new AppCompatImageButton(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new C25528m(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new AppCompatSpinner(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = c25426r.m3581d(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new C25545t(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new AppCompatImageView(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = c25426r.m3584a(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = c25426r.m3582c(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = new AppCompatEditText(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            case true:
                appCompatButton = c25426r.m3583b(c25453c, attributeSet);
                c25426r.m3577h(appCompatButton, str);
                break;
            default:
                appCompatButton = c25426r.m3579f();
                break;
        }
        View view2 = appCompatButton;
        if (appCompatButton == null) {
            view2 = appCompatButton;
            if (context != c25453c) {
                view2 = null;
                if (str.equals(ViewAction.VIEW)) {
                    str = attributeSet.getAttributeValue(null, "class");
                }
                try {
                    Object[] objArr = c25426r.f70954a;
                    objArr[0] = c25453c;
                    objArr[1] = attributeSet;
                    if (-1 == str.indexOf(46)) {
                        int i = 0;
                        while (true) {
                            String[] strArr = C25426r.f70952d;
                            if (i < strArr.length) {
                                View m3578g = c25426r.m3578g(c25453c, str, strArr[i]);
                                if (m3578g != null) {
                                    Object[] objArr2 = c25426r.f70954a;
                                    objArr2[0] = null;
                                    objArr2[1] = null;
                                    view2 = m3578g;
                                } else {
                                    i++;
                                }
                            }
                        }
                    } else {
                        View m3578g2 = c25426r.m3578g(c25453c, str, null);
                        Object[] objArr3 = c25426r.f70954a;
                        objArr3[0] = null;
                        objArr3[1] = null;
                        view2 = m3578g2;
                    }
                } catch (Exception e) {
                } finally {
                    Object[] objArr4 = c25426r.f70954a;
                    objArr4[0] = null;
                    objArr4[1] = null;
                }
            }
        }
        if (view2 != null) {
            Context context2 = view2.getContext();
            if (context2 instanceof ContextWrapper) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                if (view2.hasOnClickListeners()) {
                    TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, C25426r.f70951c);
                    String string2 = obtainStyledAttributes2.getString(0);
                    if (string2 != null) {
                        view2.setOnClickListener(new C25426r.View$OnClickListenerC25427a(view2, string2));
                    }
                    obtainStyledAttributes2.recycle();
                }
            }
        }
        return view2;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: p */
    public void mo3609p() {
        m3631T();
        AbstractC25393a abstractC25393a = this.f70892h;
        if (abstractC25393a != null) {
            abstractC25393a.mo3545v(true);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: q */
    public void mo3608q(Bundle bundle) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: r */
    public void mo3607r() {
        this.f70873N = true;
        m3648C();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: s */
    public void mo3606s() {
        this.f70873N = false;
        m3631T();
        AbstractC25393a abstractC25393a = this.f70892h;
        if (abstractC25393a != null) {
            abstractC25393a.mo3545v(false);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: u */
    public boolean mo3605u(int i) {
        int i2;
        if (i == 8) {
            i2 = 108;
        } else {
            i2 = i;
            if (i == 9) {
                i2 = 109;
            }
        }
        if (!this.f70866C || i2 != 108) {
            if (this.f70910y && i2 == 1) {
                this.f70910y = false;
            }
            if (i2 == 1) {
                m3624a0();
                this.f70866C = true;
                return true;
            } else if (i2 == 2) {
                m3624a0();
                this.f70908w = true;
                return true;
            } else if (i2 == 5) {
                m3624a0();
                this.f70909x = true;
                return true;
            } else if (i2 == 10) {
                m3624a0();
                this.f70864A = true;
                return true;
            } else if (i2 == 108) {
                m3624a0();
                this.f70910y = true;
                return true;
            } else if (i2 != 109) {
                return this.f70888e.requestFeature(i2);
            } else {
                m3624a0();
                this.f70911z = true;
                return true;
            }
        }
        return false;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: v */
    public void mo3604v(int i) {
        m3638M();
        ViewGroup viewGroup = (ViewGroup) this.f70905t.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f70887d).inflate(i, viewGroup);
        this.f70889f.f71161a.onContentChanged();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: w */
    public void mo3603w(View view) {
        m3638M();
        ViewGroup viewGroup = (ViewGroup) this.f70905t.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f70889f.f71161a.onContentChanged();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: x */
    public void mo3602x(View view, ViewGroup.LayoutParams layoutParams) {
        m3638M();
        ViewGroup viewGroup = (ViewGroup) this.f70905t.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f70889f.f71161a.onContentChanged();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: y */
    public void mo3601y(Toolbar toolbar) {
        if (!(this.f70886c instanceof Activity)) {
            return;
        }
        m3631T();
        AbstractC25393a abstractC25393a = this.f70892h;
        if (abstractC25393a instanceof C25437v) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.f70894i = null;
        if (abstractC25393a != null) {
            abstractC25393a.mo3572i();
        }
        if (toolbar != null) {
            Object obj = this.f70886c;
            C25428s c25428s = new C25428s(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.f70895j, this.f70889f);
            this.f70892h = c25428s;
            this.f70888e.setCallback(c25428s.f70961c);
        } else {
            this.f70892h = null;
            this.f70888e.setCallback(this.f70889f);
        }
        mo3614k();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25407j
    /* renamed from: z */
    public void mo3600z(int i) {
        this.f70876Q = i;
    }
}
