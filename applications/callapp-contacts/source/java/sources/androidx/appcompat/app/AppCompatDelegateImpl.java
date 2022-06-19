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
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
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
import androidx.appcompat.C0142a;
import androidx.appcompat.app.C0188a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.view.C0244d;
import androidx.appcompat.view.C0246f;
import androidx.appcompat.view.C0248g;
import androidx.appcompat.view.Window$CallbackC0253i;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.C0265e;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.AbstractC0405n;
import androidx.appcompat.widget.AbstractC0408q;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0370ab;
import androidx.appcompat.widget.C0379ag;
import androidx.appcompat.widget.C0380ah;
import androidx.appcompat.widget.C0392f;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0743e;
import androidx.core.content.C0790b;
import androidx.core.content.res.C0804f;
import androidx.core.p036e.C0827a;
import androidx.core.view.AbstractC0922r;
import androidx.core.view.AbstractC0944z;
import androidx.core.view.C0887aa;
import androidx.core.view.C0889ac;
import androidx.core.view.C0911g;
import androidx.core.view.C0926v;
import androidx.core.view.C0940y;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1263p;
import androidx.p023b.C0441g;
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl.class */
public final class AppCompatDelegateImpl extends AbstractC0199e implements LayoutInflater.Factory2, C0268g.AbstractC0269a {

    /* renamed from: A */
    private static boolean f397A;

    /* renamed from: v */
    private static final C0441g<String, Integer> f398v = new C0441g<>();

    /* renamed from: w */
    private static final boolean f399w;

    /* renamed from: x */
    private static final int[] f400x;

    /* renamed from: y */
    private static final boolean f401y;

    /* renamed from: z */
    private static final boolean f402z;

    /* renamed from: B */
    private C0181d f403B;

    /* renamed from: C */
    private CharSequence f404C;

    /* renamed from: D */
    private AbstractC0405n f405D;

    /* renamed from: E */
    private C0178b f406E;

    /* renamed from: F */
    private C0187i f407F;

    /* renamed from: G */
    private boolean f408G;

    /* renamed from: H */
    private TextView f409H;

    /* renamed from: I */
    private View f410I;

    /* renamed from: J */
    private boolean f411J;

    /* renamed from: K */
    private boolean f412K;

    /* renamed from: L */
    private boolean f413L;

    /* renamed from: M */
    private PanelFeatureState[] f414M;

    /* renamed from: N */
    private PanelFeatureState f415N;

    /* renamed from: O */
    private boolean f416O;

    /* renamed from: P */
    private boolean f417P;

    /* renamed from: Q */
    private boolean f418Q;

    /* renamed from: R */
    private boolean f419R;

    /* renamed from: S */
    private int f420S;

    /* renamed from: T */
    private int f421T;

    /* renamed from: U */
    private boolean f422U;

    /* renamed from: V */
    private boolean f423V;

    /* renamed from: W */
    private AbstractC0183f f424W;

    /* renamed from: X */
    private AbstractC0183f f425X;

    /* renamed from: Y */
    private final Runnable f426Y;

    /* renamed from: Z */
    private boolean f427Z;

    /* renamed from: a */
    final Object f428a;

    /* renamed from: aa */
    private Rect f429aa;

    /* renamed from: ab */
    private Rect f430ab;

    /* renamed from: ac */
    private C0203h f431ac;

    /* renamed from: b */
    final Context f432b;

    /* renamed from: c */
    Window f433c;

    /* renamed from: d */
    final AbstractC0198d f434d;

    /* renamed from: e */
    ActionBar f435e;

    /* renamed from: f */
    MenuInflater f436f;

    /* renamed from: g */
    AbstractC0241b f437g;

    /* renamed from: h */
    ActionBarContextView f438h;

    /* renamed from: i */
    PopupWindow f439i;

    /* renamed from: j */
    Runnable f440j;

    /* renamed from: k */
    C0940y f441k;

    /* renamed from: l */
    boolean f442l;

    /* renamed from: m */
    ViewGroup f443m;

    /* renamed from: n */
    boolean f444n;

    /* renamed from: o */
    boolean f445o;

    /* renamed from: p */
    boolean f446p;

    /* renamed from: q */
    boolean f447q;

    /* renamed from: r */
    boolean f448r;

    /* renamed from: s */
    boolean f449s;

    /* renamed from: t */
    boolean f450t;

    /* renamed from: u */
    int f451u;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi17.class */
    static class ConfigurationImplApi17 {
        private ConfigurationImplApi17() {
        }

        static void generateConfigDelta_densityDpi(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            if (configuration.densityDpi != configuration2.densityDpi) {
                configuration3.densityDpi = configuration2.densityDpi;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi24.class */
    static class ConfigurationImplApi24 {
        private ConfigurationImplApi24() {
        }

        static void generateConfigDelta_locale(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi26.class */
    static class ConfigurationImplApi26 {
        private ConfigurationImplApi26() {
        }

        static void generateConfigDelta_colorMode(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                configuration3.colorMode |= configuration2.colorMode & 3;
            }
            if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                configuration3.colorMode |= configuration2.colorMode & 12;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
    public static final class PanelFeatureState {

        /* renamed from: a */
        int f460a;

        /* renamed from: b */
        int f461b;

        /* renamed from: c */
        int f462c;

        /* renamed from: d */
        int f463d;

        /* renamed from: e */
        int f464e;

        /* renamed from: f */
        int f465f;

        /* renamed from: g */
        ViewGroup f466g;

        /* renamed from: h */
        View f467h;

        /* renamed from: i */
        View f468i;

        /* renamed from: j */
        C0268g f469j;

        /* renamed from: k */
        C0265e f470k;

        /* renamed from: l */
        Context f471l;

        /* renamed from: m */
        boolean f472m;

        /* renamed from: n */
        boolean f473n;

        /* renamed from: o */
        boolean f474o;

        /* renamed from: p */
        public boolean f475p;

        /* renamed from: q */
        boolean f476q = false;

        /* renamed from: r */
        boolean f477r;

        /* renamed from: s */
        Bundle f478s;

        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState.class */
        static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                @Override // android.os.Parcelable.Creator
                public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            int featureId;
            boolean isOpen;
            Bundle menuState;

            SavedState() {
            }

            static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.isOpen = z;
                if (z) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        PanelFeatureState(int i) {
            this.f460a = i;
        }

        /* renamed from: a */
        final AbstractC0285n m46314a(AbstractC0283m.AbstractC0284a abstractC0284a) {
            if (this.f469j == null) {
                return null;
            }
            if (this.f470k == null) {
                C0265e c0265e = new C0265e(this.f471l, C0142a.C0149g.abc_list_menu_item_layout);
                this.f470k = c0265e;
                c0265e.f870h = abstractC0284a;
                this.f469j.m46100a(this.f470k);
            }
            return this.f470k.m46114a(this.f466g);
        }

        /* renamed from: a */
        final void m46316a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0142a.C0143a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(C0142a.C0143a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(C0142a.C0151i.Theme_AppCompat_CompactMenu, true);
            }
            C0244d c0244d = new C0244d(context, 0);
            c0244d.getTheme().setTo(newTheme);
            this.f471l = c0244d;
            TypedArray obtainStyledAttributes = c0244d.obtainStyledAttributes(C0142a.C0152j.AppCompatTheme);
            this.f461b = obtainStyledAttributes.getResourceId(C0142a.C0152j.AppCompatTheme_panelBackground, 0);
            this.f465f = obtainStyledAttributes.getResourceId(C0142a.C0152j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        final void m46315a(C0268g c0268g) {
            C0265e c0265e;
            C0268g c0268g2 = this.f469j;
            if (c0268g == c0268g2) {
                return;
            }
            if (c0268g2 != null) {
                c0268g2.m46091b(this.f470k);
            }
            this.f469j = c0268g;
            if (c0268g == null || (c0265e = this.f470k) == null) {
                return;
            }
            c0268g.m46100a(c0265e);
        }

        /* renamed from: a */
        public final boolean m46317a() {
            if (this.f467h == null) {
                return false;
            }
            return this.f468i != null || this.f470k.m46113c().getCount() > 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$a.class */
    final class C0177a implements C0188a.AbstractC0190a {
        C0177a() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: a */
        public final Drawable mo46305a() {
            C0370ab m45805a = C0370ab.m45805a(AppCompatDelegateImpl.this.m46330n(), (AttributeSet) null, new int[]{C0142a.C0143a.homeAsUpIndicator});
            Drawable m45810a = m45805a.m45810a(0);
            m45805a.f1491a.recycle();
            return m45810a;
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: a */
        public final void mo46304a(int i) {
            ActionBar mo46299a = AppCompatDelegateImpl.this.mo46299a();
            if (mo46299a != null) {
                mo46299a.mo46234b(i);
            }
        }

        @Override // androidx.appcompat.app.C0188a.AbstractC0190a
        /* renamed from: b */
        public final Context mo46303b() {
            return AppCompatDelegateImpl.this.m46330n();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$b.class */
    public final class C0178b implements AbstractC0283m.AbstractC0284a {
        C0178b() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final void mo45990a(C0268g c0268g, boolean z) {
            AppCompatDelegateImpl.this.m46338b(c0268g);
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final boolean mo45991a(C0268g c0268g) {
            Window.Callback callback = AppCompatDelegateImpl.this.f433c.getCallback();
            if (callback != null) {
                callback.onMenuOpened(108, c0268g);
                return true;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$c.class */
    public final class C0179c implements AbstractC0241b.AbstractC0242a {

        /* renamed from: b */
        private AbstractC0241b.AbstractC0242a f482b;

        public C0179c(AbstractC0241b.AbstractC0242a abstractC0242a) {
            AppCompatDelegateImpl.this = r4;
            this.f482b = abstractC0242a;
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: a */
        public final void mo28726a(AbstractC0241b abstractC0241b) {
            this.f482b.mo28726a(abstractC0241b);
            if (AppCompatDelegateImpl.this.f439i != null) {
                AppCompatDelegateImpl.this.f433c.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f440j);
            }
            if (AppCompatDelegateImpl.this.f438h != null) {
                AppCompatDelegateImpl.this.m46328p();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.f441k = C0926v.m44086m(appCompatDelegateImpl.f438h).m44049a(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImpl.this.f441k.m44044a(new C0887aa() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.c.1
                    @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
                    /* renamed from: b */
                    public final void mo44038b(View view) {
                        AppCompatDelegateImpl.this.f438h.setVisibility(8);
                        if (AppCompatDelegateImpl.this.f439i != null) {
                            AppCompatDelegateImpl.this.f439i.dismiss();
                        } else if (AppCompatDelegateImpl.this.f438h.getParent() instanceof View) {
                            C0926v.m44081r((View) AppCompatDelegateImpl.this.f438h.getParent());
                        }
                        AppCompatDelegateImpl.this.f438h.removeAllViews();
                        AppCompatDelegateImpl.this.f441k.m44044a((AbstractC0944z) null);
                        AppCompatDelegateImpl.this.f441k = null;
                        C0926v.m44081r(AppCompatDelegateImpl.this.f443m);
                    }
                });
            }
            if (AppCompatDelegateImpl.this.f434d != null) {
                AppCompatDelegateImpl.this.f434d.onSupportActionModeFinished(AppCompatDelegateImpl.this.f437g);
            }
            AppCompatDelegateImpl.this.f437g = null;
            C0926v.m44081r(AppCompatDelegateImpl.this.f443m);
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: a */
        public final boolean mo28725a(AbstractC0241b abstractC0241b, Menu menu) {
            return this.f482b.mo28725a(abstractC0241b, menu);
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: a */
        public final boolean mo28724a(AbstractC0241b abstractC0241b, MenuItem menuItem) {
            return this.f482b.mo28724a(abstractC0241b, menuItem);
        }

        @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
        /* renamed from: b */
        public final boolean mo28723b(AbstractC0241b abstractC0241b, Menu menu) {
            C0926v.m44081r(AppCompatDelegateImpl.this.f443m);
            return this.f482b.mo28723b(abstractC0241b, menu);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$d.class */
    public final class C0181d extends Window$CallbackC0253i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0181d(Window.Callback callback) {
            super(callback);
            AppCompatDelegateImpl.this = r4;
        }

        /* renamed from: a */
        private ActionMode m46313a(ActionMode.Callback callback) {
            C0246f.C0247a c0247a = new C0246f.C0247a(AppCompatDelegateImpl.this.f432b, callback);
            AbstractC0241b mo46290a = AppCompatDelegateImpl.this.mo46290a(c0247a);
            if (mo46290a != null) {
                return c0247a.m46151b(mo46290a);
            }
            return null;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m46354a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m46359a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final void onContentChanged() {
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0268g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            ActionBar mo46299a;
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i != 108 || (mo46299a = appCompatDelegateImpl.mo46299a()) == null) {
                return true;
            }
            mo46299a.mo46226d(true);
            return true;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.m46335e(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            C0268g c0268g = menu instanceof C0268g ? (C0268g) menu : null;
            if (i == 0 && c0268g == null) {
                return false;
            }
            if (c0268g != null) {
                c0268g.f893k = true;
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0268g != null) {
                c0268g.f893k = false;
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            PanelFeatureState m46334f = AppCompatDelegateImpl.this.m46334f(0);
            if (m46334f == null || m46334f.f469j == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, m46334f.f469j, i);
            }
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.f442l ? m46313a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.f442l || i != 0) ? super.onWindowStartingActionMode(callback, i) : m46313a(callback);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$e.class */
    public final class C0182e extends AbstractC0183f {

        /* renamed from: c */
        private final PowerManager f486c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0182e(Context context) {
            super();
            AppCompatDelegateImpl.this = r5;
            this.f486c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0183f
        /* renamed from: a */
        public final int mo46310a() {
            return (Build.VERSION.SDK_INT < 21 || !this.f486c.isPowerSaveMode()) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0183f
        /* renamed from: b */
        public final void mo46309b() {
            AppCompatDelegateImpl.this.m46344a(true);
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0183f
        /* renamed from: c */
        final IntentFilter mo46308c() {
            if (Build.VERSION.SDK_INT >= 21) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f.class */
    public abstract class AbstractC0183f {

        /* renamed from: a */
        private BroadcastReceiver f487a;

        AbstractC0183f() {
            AppCompatDelegateImpl.this = r4;
        }

        /* renamed from: a */
        abstract int mo46310a();

        /* renamed from: b */
        abstract void mo46309b();

        /* renamed from: c */
        abstract IntentFilter mo46308c();

        /* renamed from: d */
        final void m46312d() {
            m46311e();
            IntentFilter mo46308c = mo46308c();
            if (mo46308c == null || mo46308c.countActions() == 0) {
                return;
            }
            if (this.f487a == null) {
                this.f487a = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.f.1
                    @Override // android.content.BroadcastReceiver
                    public final void onReceive(Context context, Intent intent) {
                        AbstractC0183f.this.mo46309b();
                    }
                };
            }
            AppCompatDelegateImpl.this.f432b.registerReceiver(this.f487a, mo46308c);
        }

        /* renamed from: e */
        final void m46311e() {
            if (this.f487a != null) {
                try {
                    AppCompatDelegateImpl.this.f432b.unregisterReceiver(this.f487a);
                } catch (IllegalArgumentException e) {
                }
                this.f487a = null;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$g.class */
    public final class C0185g extends AbstractC0183f {

        /* renamed from: c */
        private final C0213l f491c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0185g(C0213l c0213l) {
            super();
            AppCompatDelegateImpl.this = r4;
            this.f491c = c0213l;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
            if (r18.getTime() > r19.getTime()) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
            if (r18 != null) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0098, code lost:
            r20 = r18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
            if (r20 == null) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
            r0 = r0.f560b;
            r0 = java.lang.System.currentTimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00ae, code lost:
            if (androidx.appcompat.app.C0212k.f554a != null) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
            androidx.appcompat.app.C0212k.f554a = new androidx.appcompat.app.C0212k();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
            r0 = androidx.appcompat.app.C0212k.f554a;
            r0.m46249a(r0 - 86400000, r20.getLatitude(), r20.getLongitude());
            r0 = r0.f555b;
            r0.m46249a(r0, r20.getLatitude(), r20.getLongitude());
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00f1, code lost:
            if (r0.f557d != 1) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00f4, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
            r0 = r0.f556c;
            r0 = r0.f555b;
            r0.m46249a(r0 + 86400000, r20.getLatitude(), r20.getLongitude());
            r0 = r0.f556c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0126, code lost:
            if (r0 == (-1)) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x012f, code lost:
            if (r0 != (-1)) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0139, code lost:
            if (r0 <= r0) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x013c, code lost:
            r11 = 0 + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0148, code lost:
            if (r0 <= r0) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x014b, code lost:
            r11 = 0 + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0153, code lost:
            r11 = 0 + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0158, code lost:
            r11 = r11 + com.callapp.contacts.model.Constants.MINUTE_IN_MILLIS;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0161, code lost:
            r11 = 43200000 + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0167, code lost:
            r0.f562a = r16;
            r0.f563b = r0;
            r0.f564c = r0;
            r0.f565d = r0;
            r0.f566e = r0;
            r0.f567f = r11;
            r16 = r0.f562a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0199, code lost:
            r0 = java.util.Calendar.getInstance().get(11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x01a7, code lost:
            if (r0 < 6) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x01aa, code lost:
            r16 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x01b2, code lost:
            if (r0 < 22) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x01b5, code lost:
            r16 = true;
         */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r0v67, types: [long] */
        /* JADX WARN: Type inference failed for: r0v71, types: [long] */
        /* JADX WARN: Type inference failed for: r0v73, types: [long] */
        /* JADX WARN: Type inference failed for: r0v75, types: [long] */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0183f
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int mo46310a() {
            /*
                Method dump skipped, instructions count: 449
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.C0185g.mo46310a():int");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0183f
        /* renamed from: b */
        public final void mo46309b() {
            AppCompatDelegateImpl.this.m46344a(true);
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0183f
        /* renamed from: c */
        final IntentFilter mo46308c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$h.class */
    public final class C0186h extends ContentFrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0186h(Context context) {
            super(context);
            AppCompatDelegateImpl.this = r4;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m46354a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl.this.m46327q();
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(C0153a.m46374b(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i.class */
    public final class C0187i implements AbstractC0283m.AbstractC0284a {
        C0187i() {
            AppCompatDelegateImpl.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final void mo45990a(C0268g c0268g, boolean z) {
            C0268g mo46034l = c0268g.mo46034l();
            boolean z2 = mo46034l != c0268g;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                c0268g = mo46034l;
            }
            PanelFeatureState m46353a = appCompatDelegateImpl.m46353a((Menu) c0268g);
            if (m46353a != null) {
                if (!z2) {
                    AppCompatDelegateImpl.this.m46346a(m46353a, z);
                    return;
                }
                AppCompatDelegateImpl.this.m46358a(m46353a.f460a, m46353a, mo46034l);
                AppCompatDelegateImpl.this.m46346a(m46353a, true);
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final boolean mo45991a(C0268g c0268g) {
            Window.Callback callback;
            if (c0268g != c0268g.mo46034l() || !AppCompatDelegateImpl.this.f444n || (callback = AppCompatDelegateImpl.this.f433c.getCallback()) == null || AppCompatDelegateImpl.this.f449s) {
                return true;
            }
            callback.onMenuOpened(108, c0268g);
            return true;
        }
    }

    static {
        boolean z = false;
        boolean z2 = Build.VERSION.SDK_INT < 21;
        f399w = z2;
        f400x = new int[]{16842836};
        f401y = !"robolectric".equals(Build.FINGERPRINT);
        if (Build.VERSION.SDK_INT >= 17) {
            z = true;
        }
        f402z = z;
        if (!z2 || f397A) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.1
            /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
                if (r0.contains("Drawable") != false) goto L10;
             */
            @Override // java.lang.Thread.UncaughtExceptionHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void uncaughtException(java.lang.Thread r5, java.lang.Throwable r6) {
                /*
                    r4 = this;
                    r0 = r6
                    boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
                    r7 = r0
                    r0 = 0
                    r8 = r0
                    r0 = r8
                    r9 = r0
                    r0 = r7
                    if (r0 == 0) goto L3a
                    r0 = r6
                    java.lang.String r0 = r0.getMessage()
                    r10 = r0
                    r0 = r8
                    r9 = r0
                    r0 = r10
                    if (r0 == 0) goto L3a
                    r0 = r10
                    java.lang.String r1 = "drawable"
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L37
                    r0 = r8
                    r9 = r0
                    r0 = r10
                    java.lang.String r1 = "Drawable"
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto L3a
                L37:
                    r0 = 1
                    r9 = r0
                L3a:
                    r0 = r9
                    if (r0 == 0) goto L88
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r10 = r0
                    r0 = r10
                    r1 = r6
                    java.lang.String r1 = r1.getMessage()
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r10
                    java.lang.String r1 = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."
                    java.lang.StringBuilder r0 = r0.append(r1)
                    android.content.res.Resources$NotFoundException r0 = new android.content.res.Resources$NotFoundException
                    r1 = r0
                    r2 = r10
                    java.lang.String r2 = r2.toString()
                    r1.<init>(r2)
                    r10 = r0
                    r0 = r10
                    r1 = r6
                    java.lang.Throwable r1 = r1.getCause()
                    java.lang.Throwable r0 = r0.initCause(r1)
                    r0 = r10
                    r1 = r6
                    java.lang.StackTraceElement[] r1 = r1.getStackTrace()
                    r0.setStackTrace(r1)
                    r0 = r4
                    java.lang.Thread$UncaughtExceptionHandler r0 = r4
                    r1 = r5
                    r2 = r10
                    r0.uncaughtException(r1, r2)
                    return
                L88:
                    r0 = r4
                    java.lang.Thread$UncaughtExceptionHandler r0 = r4
                    r1 = r5
                    r2 = r6
                    r0.uncaughtException(r1, r2)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.C01681.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
            }
        });
        f397A = true;
    }

    public AppCompatDelegateImpl(Activity activity, AbstractC0198d abstractC0198d) {
        this(activity, null, abstractC0198d, activity);
    }

    public AppCompatDelegateImpl(Dialog dialog, AbstractC0198d abstractC0198d) {
        this(dialog.getContext(), dialog.getWindow(), abstractC0198d, dialog);
    }

    AppCompatDelegateImpl(Context context, Activity activity, AbstractC0198d abstractC0198d) {
        this(context, null, abstractC0198d, activity);
    }

    AppCompatDelegateImpl(Context context, Window window, AbstractC0198d abstractC0198d) {
        this(context, window, abstractC0198d, context);
    }

    private AppCompatDelegateImpl(Context context, Window window, AbstractC0198d abstractC0198d, Object obj) {
        C0441g<String, Integer> c0441g;
        Integer num;
        AppCompatActivity appCompatActivity;
        this.f441k = null;
        this.f442l = true;
        this.f420S = -100;
        this.f426Y = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public final void run() {
                if ((AppCompatDelegateImpl.this.f451u & 1) != 0) {
                    AppCompatDelegateImpl.this.m46333g(0);
                }
                if ((AppCompatDelegateImpl.this.f451u & 4096) != 0) {
                    AppCompatDelegateImpl.this.m46333g(108);
                }
                AppCompatDelegateImpl.this.f450t = false;
                AppCompatDelegateImpl.this.f451u = 0;
            }
        };
        this.f432b = context;
        this.f434d = abstractC0198d;
        this.f428a = obj;
        if (this.f420S == -100 && (obj instanceof Dialog)) {
            while (true) {
                appCompatActivity = null;
                if (context != null) {
                    if (!(context instanceof AppCompatActivity)) {
                        appCompatActivity = null;
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        }
                        context = ((ContextWrapper) context).getBaseContext();
                    } else {
                        appCompatActivity = (AppCompatActivity) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.f420S = appCompatActivity.getDelegate().mo46271l();
            }
        }
        if (this.f420S == -100 && (num = (c0441g = f398v).get(this.f428a.getClass().getName())) != null) {
            this.f420S = num.intValue();
            c0441g.remove(this.f428a.getClass().getName());
        }
        if (window != null) {
            m46350a(window);
        }
        C0392f.m45732a();
    }

    /* renamed from: A */
    private boolean m46360A() {
        if (!this.f423V && (this.f428a instanceof Activity)) {
            PackageManager packageManager = this.f432b.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f432b, this.f428a.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : Build.VERSION.SDK_INT >= 24 ? 786432 : 0);
                this.f422U = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                this.f422U = false;
            }
        }
        this.f423V = true;
        return this.f422U;
    }

    /* renamed from: a */
    private int m46356a(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i == 0) {
                    if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() == 0) {
                        return -1;
                    }
                    return m46342b(context).mo46310a();
                } else if (i != 1 && i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                    return m46337c(context).mo46310a();
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: a */
    private static Configuration m46355a(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = BitmapDescriptorFactory.HUE_RED;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* renamed from: a */
    private View m46352a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z = false;
        if (this.f431ac == null) {
            String string = this.f432b.obtainStyledAttributes(C0142a.C0152j.AppCompatTheme).getString(C0142a.C0152j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f431ac = new C0203h();
            } else {
                try {
                    this.f431ac = (C0203h) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    StringBuilder sb = new StringBuilder("Failed to instantiate custom view inflater ");
                    sb.append(string);
                    sb.append(". Falling back to default.");
                    this.f431ac = new C0203h();
                }
            }
        }
        boolean z2 = f399w;
        if (!z2) {
            z = false;
        } else if (!(attributeSet instanceof XmlPullParser)) {
            z = m46351a((ViewParent) view);
        } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
            z = true;
        }
        return this.f431ac.m46262a(view, str, context, attributeSet, z, z2, C0379ag.m45772a());
    }

    /* renamed from: a */
    private void m46350a(Window window) {
        if (this.f433c == null) {
            Window.Callback callback = window.getCallback();
            if (callback instanceof C0181d) {
                throw new IllegalStateException("AppCompat has already installed itself into the Window");
            }
            C0181d c0181d = new C0181d(callback);
            this.f403B = c0181d;
            window.setCallback(c0181d);
            C0370ab m45805a = C0370ab.m45805a(this.f432b, (AttributeSet) null, f400x);
            Drawable m45803b = m45805a.m45803b(0);
            if (m45803b != null) {
                window.setBackgroundDrawable(m45803b);
            }
            m45805a.f1491a.recycle();
            this.f433c = window;
            return;
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: a */
    private void m46347a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.f474o || this.f449s) {
            return;
        }
        if (panelFeatureState.f460a == 0) {
            if ((this.f432b.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callback = this.f433c.getCallback();
        if (callback != null && !callback.onMenuOpened(panelFeatureState.f460a, panelFeatureState.f469j)) {
            m46346a(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f432b.getSystemService("window");
        if (windowManager == null || !m46340b(panelFeatureState, keyEvent)) {
            return;
        }
        if (panelFeatureState.f466g == null || panelFeatureState.f476q) {
            if (panelFeatureState.f466g == null) {
                m46349a(panelFeatureState);
                if (panelFeatureState.f466g == null) {
                    return;
                }
            } else if (panelFeatureState.f476q && panelFeatureState.f466g.getChildCount() > 0) {
                panelFeatureState.f466g.removeAllViews();
            }
            if (!m46336c(panelFeatureState) || !panelFeatureState.m46317a()) {
                panelFeatureState.f476q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = panelFeatureState.f467h.getLayoutParams();
            ViewGroup.LayoutParams layoutParams3 = layoutParams2;
            if (layoutParams2 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.f466g.setBackgroundResource(panelFeatureState.f461b);
            ViewParent parent = panelFeatureState.f467h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(panelFeatureState.f467h);
            }
            panelFeatureState.f466g.addView(panelFeatureState.f467h, layoutParams3);
            if (!panelFeatureState.f467h.hasFocus()) {
                panelFeatureState.f467h.requestFocus();
            }
        } else if (panelFeatureState.f468i != null && (layoutParams = panelFeatureState.f468i.getLayoutParams()) != null && layoutParams.width == -1) {
            i = -1;
            panelFeatureState.f473n = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f463d, panelFeatureState.f464e, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.f462c;
            layoutParams4.windowAnimations = panelFeatureState.f465f;
            windowManager.addView(panelFeatureState.f466g, layoutParams4);
            panelFeatureState.f474o = true;
        }
        i = -2;
        panelFeatureState.f473n = false;
        WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f463d, panelFeatureState.f464e, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 8519680, -3);
        layoutParams42.gravity = panelFeatureState.f462c;
        layoutParams42.windowAnimations = panelFeatureState.f465f;
        windowManager.addView(panelFeatureState.f466g, layoutParams42);
        panelFeatureState.f474o = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m46357a(int r5, boolean r6) {
        /*
            r4 = this;
            r0 = r4
            android.content.Context r0 = r0.f432b
            r1 = r5
            r2 = 0
            android.content.res.Configuration r0 = m46355a(r0, r1, r2)
            r7 = r0
            r0 = r4
            boolean r0 = r0.m46360A()
            r8 = r0
            r0 = r4
            android.content.Context r0 = r0.f432b
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r0 = r0.uiMode
            r1 = 48
            r0 = r0 & r1
            r9 = r0
            r0 = r7
            int r0 = r0.uiMode
            r1 = 48
            r0 = r0 & r1
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 == r1) goto L77
            r0 = r6
            if (r0 == 0) goto L77
            r0 = r8
            if (r0 != 0) goto L77
            r0 = r4
            boolean r0 = r0.f417P
            if (r0 == 0) goto L77
            boolean r0 = androidx.appcompat.app.AppCompatDelegateImpl.f401y
            if (r0 != 0) goto L52
            r0 = r4
            boolean r0 = r0.f418Q
            if (r0 == 0) goto L77
        L52:
            r0 = r4
            java.lang.Object r0 = r0.f428a
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L77
            r0 = r7
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChild()
            if (r0 != 0) goto L77
            r0 = r4
            java.lang.Object r0 = r0.f428a
            android.app.Activity r0 = (android.app.Activity) r0
            androidx.core.app.C0726a.m44608e(r0)
            r0 = 1
            r6 = r0
            goto L79
        L77:
            r0 = 0
            r6 = r0
        L79:
            r0 = r6
            if (r0 != 0) goto L92
            r0 = r9
            r1 = r10
            if (r0 == r1) goto L92
            r0 = r4
            r1 = r10
            r2 = r8
            r0.m46343b(r1, r2)
            r0 = r11
            r6 = r0
            goto L92
        L92:
            r0 = r6
            if (r0 == 0) goto Laa
            r0 = r4
            java.lang.Object r0 = r0.f428a
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto Laa
            r0 = r7
            androidx.appcompat.app.AppCompatActivity r0 = (androidx.appcompat.app.AppCompatActivity) r0
            r1 = r5
            r0.onNightModeChanged(r1)
        Laa:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m46357a(int, boolean):boolean");
    }

    /* renamed from: a */
    private boolean m46351a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f433c.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C0926v.m44154E((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: a */
    private boolean m46349a(PanelFeatureState panelFeatureState) {
        panelFeatureState.m46316a(m46330n());
        panelFeatureState.f466g = new C0186h(panelFeatureState.f471l);
        panelFeatureState.f462c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m46340b(r6, r8) != false) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m46348a(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6, int r7, android.view.KeyEvent r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0.isSystem()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r6
            boolean r0 = r0.f472m
            if (r0 != 0) goto L24
            r0 = r10
            r9 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m46340b(r1, r2)
            if (r0 == 0) goto L3b
        L24:
            r0 = r10
            r9 = r0
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f469j
            if (r0 == 0) goto L3b
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.f469j
            r1 = r7
            r2 = r8
            r3 = 1
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r9 = r0
        L3b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m46348a(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, int, android.view.KeyEvent):boolean");
    }

    /* renamed from: b */
    private AbstractC0183f m46342b(Context context) {
        if (this.f424W == null) {
            this.f424W = new C0185g(C0213l.m46248a(context));
        }
        return this.f424W;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.appcompat.view.AbstractC0241b m46339b(androidx.appcompat.view.AbstractC0241b.AbstractC0242a r8) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m46339b(androidx.appcompat.view.b$a):androidx.appcompat.view.b");
    }

    /* renamed from: b */
    private void m46343b(int i, boolean z) {
        Resources resources = this.f432b.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration, null);
        if (Build.VERSION.SDK_INT < 26) {
            C0205i.m46261a(resources);
        }
        int i2 = this.f421T;
        if (i2 != 0) {
            this.f432b.setTheme(i2);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f432b.getTheme().applyStyle(this.f421T, true);
            }
        }
        if (z) {
            Object obj = this.f428a;
            if (!(obj instanceof Activity)) {
                return;
            }
            Activity activity = (Activity) obj;
            if (activity instanceof AbstractC1263p) {
                if (!((AbstractC1263p) activity).getLifecycle().getCurrentState().isAtLeast(AbstractC1253j.EnumC1256b.STARTED)) {
                    return;
                }
                activity.onConfigurationChanged(configuration);
            } else if (!this.f419R) {
            } else {
                activity.onConfigurationChanged(configuration);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r6.f460a == 108) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m46341b(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m46341b(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState):boolean");
    }

    /* renamed from: b */
    private boolean m46340b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        AbstractC0405n abstractC0405n;
        AbstractC0405n abstractC0405n2;
        AbstractC0405n abstractC0405n3;
        if (this.f449s) {
            return false;
        }
        if (panelFeatureState.f472m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f415N;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            m46346a(panelFeatureState2, false);
        }
        Window.Callback callback = this.f433c.getCallback();
        if (callback != null) {
            panelFeatureState.f468i = callback.onCreatePanelView(panelFeatureState.f460a);
        }
        boolean z = panelFeatureState.f460a == 0 || panelFeatureState.f460a == 108;
        if (z && (abstractC0405n3 = this.f405D) != null) {
            abstractC0405n3.setMenuPrepared();
        }
        if (panelFeatureState.f468i == null && (!z || !(this.f435e instanceof C0206j))) {
            if (panelFeatureState.f469j == null || panelFeatureState.f477r) {
                if (panelFeatureState.f469j == null) {
                    m46341b(panelFeatureState);
                    if (panelFeatureState.f469j == null) {
                        return false;
                    }
                }
                if (z && this.f405D != null) {
                    if (this.f406E == null) {
                        this.f406E = new C0178b();
                    }
                    this.f405D.setMenu(panelFeatureState.f469j, this.f406E);
                }
                panelFeatureState.f469j.m46088e();
                if (!callback.onCreatePanelMenu(panelFeatureState.f460a, panelFeatureState.f469j)) {
                    panelFeatureState.m46315a((C0268g) null);
                    if (!z || (abstractC0405n2 = this.f405D) == null) {
                        return false;
                    }
                    abstractC0405n2.setMenu(null, this.f406E);
                    return false;
                }
                panelFeatureState.f477r = false;
            }
            panelFeatureState.f469j.m46088e();
            if (panelFeatureState.f478s != null) {
                panelFeatureState.f469j.m46089d(panelFeatureState.f478s);
                panelFeatureState.f478s = null;
            }
            if (!callback.onPreparePanel(0, panelFeatureState.f468i, panelFeatureState.f469j)) {
                if (z && (abstractC0405n = this.f405D) != null) {
                    abstractC0405n.setMenu(null, this.f406E);
                }
                panelFeatureState.f469j.m46087f();
                return false;
            }
            panelFeatureState.f475p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f469j.setQwertyMode(panelFeatureState.f475p);
            panelFeatureState.f469j.m46087f();
        }
        panelFeatureState.f472m = true;
        panelFeatureState.f473n = false;
        this.f415N = panelFeatureState;
        return true;
    }

    /* renamed from: c */
    private AbstractC0183f m46337c(Context context) {
        if (this.f425X == null) {
            this.f425X = new C0182e(context);
        }
        return this.f425X;
    }

    /* renamed from: c */
    private boolean m46336c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.f468i != null) {
            panelFeatureState.f467h = panelFeatureState.f468i;
            return true;
        } else if (panelFeatureState.f469j == null) {
            return false;
        } else {
            if (this.f407F == null) {
                this.f407F = new C0187i();
            }
            panelFeatureState.f467h = (View) panelFeatureState.m46314a(this.f407F);
            return panelFeatureState.f467h != null;
        }
    }

    /* renamed from: h */
    private void m46332h(int i) {
        this.f451u = (1 << i) | this.f451u;
        if (!this.f450t) {
            C0926v.m44117a(this.f433c.getDecorView(), this.f426Y);
            this.f450t = true;
        }
    }

    /* renamed from: i */
    private static int m46331i(int i) {
        if (i == 8) {
            return 108;
        }
        int i2 = i;
        if (i == 9) {
            i2 = 109;
        }
        return i2;
    }

    /* renamed from: s */
    private void m46325s() {
        m46323u();
        if (!this.f444n || this.f435e != null) {
            return;
        }
        Object obj = this.f428a;
        if (obj instanceof Activity) {
            this.f435e = new C0215m((Activity) obj, this.f445o);
        } else if (obj instanceof Dialog) {
            this.f435e = new C0215m((Dialog) obj);
        }
        ActionBar actionBar = this.f435e;
        if (actionBar == null) {
            return;
        }
        actionBar.mo46230b(this.f427Z);
    }

    /* renamed from: t */
    private void m46324t() {
        if (this.f433c == null) {
            Object obj = this.f428a;
            if (obj instanceof Activity) {
                m46350a(((Activity) obj).getWindow());
            }
        }
        if (this.f433c != null) {
            return;
        }
        throw new IllegalStateException("We have not been given a Window");
    }

    /* renamed from: u */
    private void m46323u() {
        if (!this.f408G) {
            this.f443m = m46322v();
            CharSequence m46320x = m46320x();
            if (!TextUtils.isEmpty(m46320x)) {
                AbstractC0405n abstractC0405n = this.f405D;
                if (abstractC0405n != null) {
                    abstractC0405n.setWindowTitle(m46320x);
                } else {
                    ActionBar actionBar = this.f435e;
                    if (actionBar != null) {
                        actionBar.mo46231b(m46320x);
                    } else {
                        TextView textView = this.f409H;
                        if (textView != null) {
                            textView.setText(m46320x);
                        }
                    }
                }
            }
            m46321w();
            this.f408G = true;
            PanelFeatureState m46334f = m46334f(0);
            if (this.f449s) {
                return;
            }
            if (m46334f != null && m46334f.f469j != null) {
                return;
            }
            m46332h(108);
        }
    }

    /* renamed from: v */
    private ViewGroup m46322v() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f432b.obtainStyledAttributes(C0142a.C0152j.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(C0142a.C0152j.AppCompatTheme_windowNoTitle, false)) {
            mo46279d(1);
        } else if (obtainStyledAttributes.getBoolean(C0142a.C0152j.AppCompatTheme_windowActionBar, false)) {
            mo46279d(108);
        }
        if (obtainStyledAttributes.getBoolean(C0142a.C0152j.AppCompatTheme_windowActionBarOverlay, false)) {
            mo46279d(109);
        }
        if (obtainStyledAttributes.getBoolean(C0142a.C0152j.AppCompatTheme_windowActionModeOverlay, false)) {
            mo46279d(10);
        }
        this.f447q = obtainStyledAttributes.getBoolean(C0142a.C0152j.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        m46324t();
        this.f433c.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f432b);
        if (this.f448r) {
            viewGroup = this.f446p ? (ViewGroup) from.inflate(C0142a.C0149g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0142a.C0149g.abc_screen_simple, (ViewGroup) null);
        } else if (this.f447q) {
            viewGroup = (ViewGroup) from.inflate(C0142a.C0149g.abc_dialog_title_material, (ViewGroup) null);
            this.f445o = false;
            this.f444n = false;
        } else if (this.f444n) {
            TypedValue typedValue = new TypedValue();
            this.f432b.getTheme().resolveAttribute(C0142a.C0143a.actionBarTheme, typedValue, true);
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0244d(this.f432b, typedValue.resourceId) : this.f432b).inflate(C0142a.C0149g.abc_screen_toolbar, (ViewGroup) null);
            AbstractC0405n abstractC0405n = (AbstractC0405n) viewGroup2.findViewById(C0142a.C0148f.decor_content_parent);
            this.f405D = abstractC0405n;
            abstractC0405n.setWindowCallback(this.f433c.getCallback());
            if (this.f445o) {
                this.f405D.mo45662a(109);
            }
            if (this.f411J) {
                this.f405D.mo45662a(2);
            }
            viewGroup = viewGroup2;
            if (this.f412K) {
                this.f405D.mo45662a(5);
                viewGroup = viewGroup2;
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f444n + ", windowActionBarOverlay: " + this.f445o + ", android:windowIsFloating: " + this.f447q + ", windowActionModeOverlay: " + this.f446p + ", windowNoTitle: " + this.f448r + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            C0926v.m44120a(viewGroup, new AbstractC0922r() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
                @Override // androidx.core.view.AbstractC0922r
                /* renamed from: a */
                public final C0889ac mo10180a(View view, C0889ac c0889ac) {
                    int i = c0889ac.f3696b.mo44216g().f3564c;
                    int m46345a = AppCompatDelegateImpl.this.m46345a(c0889ac, (Rect) null);
                    C0889ac c0889ac2 = c0889ac;
                    if (i != m46345a) {
                        c0889ac2 = c0889ac.m44230a(c0889ac.f3696b.mo44216g().f3563b, m46345a, c0889ac.f3696b.mo44216g().f3565d, c0889ac.f3696b.mo44216g().f3566e);
                    }
                    return C0926v.m44122a(view, c0889ac2);
                }
            });
        } else if (viewGroup instanceof AbstractC0408q) {
            ((AbstractC0408q) viewGroup).setOnFitSystemWindowsListener(new AbstractC0408q.AbstractC0409a() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.4
                @Override // androidx.appcompat.widget.AbstractC0408q.AbstractC0409a
                /* renamed from: a */
                public final void mo45618a(Rect rect) {
                    rect.top = AppCompatDelegateImpl.this.m46345a((C0889ac) null, rect);
                }
            });
        }
        if (this.f405D == null) {
            this.f409H = (TextView) viewGroup.findViewById(C0142a.C0148f.title);
        }
        C0380ah.m45768b(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0142a.C0148f.action_bar_activity_content);
        ViewGroup viewGroup3 = (ViewGroup) this.f433c.findViewById(16908290);
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
        this.f433c.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.AbstractC0328a() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0328a
            /* renamed from: a */
            public final void mo45951a() {
                AppCompatDelegateImpl.this.m46326r();
            }
        });
        return viewGroup;
    }

    /* renamed from: w */
    private void m46321w() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f443m.findViewById(16908290);
        View decorView = this.f433c.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f432b.obtainStyledAttributes(C0142a.C0152j.AppCompatTheme);
        obtainStyledAttributes.getValue(C0142a.C0152j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.m45958a());
        obtainStyledAttributes.getValue(C0142a.C0152j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.m45956b());
        if (obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0142a.C0152j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.m45955c());
        }
        if (obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0142a.C0152j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.m45954d());
        }
        if (obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0142a.C0152j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.m45953e());
        }
        if (obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0142a.C0152j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.m45952f());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: x */
    private CharSequence m46320x() {
        Object obj = this.f428a;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f404C;
    }

    /* renamed from: y */
    private void m46319y() {
        if (!this.f408G) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    /* renamed from: z */
    private int m46318z() {
        int i = this.f420S;
        return i != -100 ? i : m46270m();
    }

    /* renamed from: a */
    final int m46345a(C0889ac c0889ac, Rect rect) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        int i2 = c0889ac != null ? c0889ac.f3696b.mo44216g().f3564c : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f438h;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
            i = i2;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f438h.getLayoutParams();
            boolean z4 = true;
            if (this.f438h.isShown()) {
                if (this.f429aa == null) {
                    this.f429aa = new Rect();
                    this.f430ab = new Rect();
                }
                Rect rect2 = this.f429aa;
                Rect rect3 = this.f430ab;
                if (c0889ac == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c0889ac.f3696b.mo44216g().f3563b, c0889ac.f3696b.mo44216g().f3564c, c0889ac.f3696b.mo44216g().f3565d, c0889ac.f3696b.mo44216g().f3566e);
                }
                C0380ah.m45769a(this.f443m, rect2, rect3);
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                C0889ac m44079t = C0926v.m44079t(this.f443m);
                int i6 = m44079t == null ? 0 : m44079t.f3696b.mo44216g().f3563b;
                int i7 = m44079t == null ? 0 : m44079t.f3696b.mo44216g().f3565d;
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z3 = true;
                }
                if (i3 <= 0 || this.f410I != null) {
                    View view = this.f410I;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != i6 || marginLayoutParams2.rightMargin != i7) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = i6;
                            marginLayoutParams2.rightMargin = i7;
                            this.f410I.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f432b);
                    this.f410I = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = i6;
                    layoutParams.rightMargin = i7;
                    this.f443m.addView(this.f410I, -1, layoutParams);
                }
                View view3 = this.f410I;
                boolean z5 = view3 != null;
                if (z5 && view3.getVisibility() != 0) {
                    View view4 = this.f410I;
                    view4.setBackgroundColor((C0926v.m44082q(view4) & PropertyFlags.UNSIGNED) != 0 ? C0790b.m44492c(this.f432b, C0142a.C0145c.abc_decor_view_status_guard_light) : C0790b.m44492c(this.f432b, C0142a.C0145c.abc_decor_view_status_guard));
                }
                int i8 = i2;
                if (!this.f446p) {
                    i8 = i2;
                    if (z5) {
                        i8 = 0;
                    }
                }
                boolean z6 = z3;
                i2 = i8;
                z2 = z5;
                z4 = z6;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z4 = false;
            }
            i = i2;
            z = z2;
            if (z4) {
                this.f438h.setLayoutParams(marginLayoutParams);
                i = i2;
                z = z2;
            }
        }
        View view5 = this.f410I;
        if (view5 != null) {
            view5.setVisibility(z ? 0 : 8);
        }
        return i;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final Context mo46295a(Context context) {
        boolean z = true;
        this.f417P = true;
        int m46356a = m46356a(context, m46318z());
        Configuration configuration = null;
        if (f402z && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(m46355a(context, m46356a, (Configuration) null));
                return context;
            } catch (IllegalStateException e) {
            }
        }
        if (context instanceof C0244d) {
            try {
                ((C0244d) context).m46167a(m46355a(context, m46356a, (Configuration) null));
                return context;
            } catch (IllegalStateException e2) {
            }
        }
        if (!f401y) {
            return super.mo46295a(context);
        }
        try {
            Configuration configuration2 = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            if (!configuration2.equals(configuration3)) {
                Configuration configuration4 = new Configuration();
                configuration4.fontScale = BitmapDescriptorFactory.HUE_RED;
                configuration = configuration4;
                if (configuration3 != null) {
                    if (configuration2.diff(configuration3) == 0) {
                        configuration = configuration4;
                    } else {
                        if (configuration2.fontScale != configuration3.fontScale) {
                            configuration4.fontScale = configuration3.fontScale;
                        }
                        if (configuration2.mcc != configuration3.mcc) {
                            configuration4.mcc = configuration3.mcc;
                        }
                        if (configuration2.mnc != configuration3.mnc) {
                            configuration4.mnc = configuration3.mnc;
                        }
                        if (Build.VERSION.SDK_INT >= 24) {
                            ConfigurationImplApi24.generateConfigDelta_locale(configuration2, configuration3, configuration4);
                        } else if (!C0827a.m44414a(configuration2.locale, configuration3.locale)) {
                            configuration4.locale = configuration3.locale;
                        }
                        if (configuration2.touchscreen != configuration3.touchscreen) {
                            configuration4.touchscreen = configuration3.touchscreen;
                        }
                        if (configuration2.keyboard != configuration3.keyboard) {
                            configuration4.keyboard = configuration3.keyboard;
                        }
                        if (configuration2.keyboardHidden != configuration3.keyboardHidden) {
                            configuration4.keyboardHidden = configuration3.keyboardHidden;
                        }
                        if (configuration2.navigation != configuration3.navigation) {
                            configuration4.navigation = configuration3.navigation;
                        }
                        if (configuration2.navigationHidden != configuration3.navigationHidden) {
                            configuration4.navigationHidden = configuration3.navigationHidden;
                        }
                        if (configuration2.orientation != configuration3.orientation) {
                            configuration4.orientation = configuration3.orientation;
                        }
                        if ((configuration2.screenLayout & 15) != (configuration3.screenLayout & 15)) {
                            configuration4.screenLayout |= configuration3.screenLayout & 15;
                        }
                        if ((configuration2.screenLayout & 192) != (configuration3.screenLayout & 192)) {
                            configuration4.screenLayout |= configuration3.screenLayout & 192;
                        }
                        if ((configuration2.screenLayout & 48) != (configuration3.screenLayout & 48)) {
                            configuration4.screenLayout |= configuration3.screenLayout & 48;
                        }
                        if ((configuration2.screenLayout & 768) != (configuration3.screenLayout & 768)) {
                            configuration4.screenLayout |= configuration3.screenLayout & 768;
                        }
                        if (Build.VERSION.SDK_INT >= 26) {
                            ConfigurationImplApi26.generateConfigDelta_colorMode(configuration2, configuration3, configuration4);
                        }
                        if ((configuration2.uiMode & 15) != (configuration3.uiMode & 15)) {
                            configuration4.uiMode |= configuration3.uiMode & 15;
                        }
                        if ((configuration2.uiMode & 48) != (configuration3.uiMode & 48)) {
                            configuration4.uiMode |= configuration3.uiMode & 48;
                        }
                        if (configuration2.screenWidthDp != configuration3.screenWidthDp) {
                            configuration4.screenWidthDp = configuration3.screenWidthDp;
                        }
                        if (configuration2.screenHeightDp != configuration3.screenHeightDp) {
                            configuration4.screenHeightDp = configuration3.screenHeightDp;
                        }
                        if (configuration2.smallestScreenWidthDp != configuration3.smallestScreenWidthDp) {
                            configuration4.smallestScreenWidthDp = configuration3.smallestScreenWidthDp;
                        }
                        configuration = configuration4;
                        if (Build.VERSION.SDK_INT >= 17) {
                            ConfigurationImplApi17.generateConfigDelta_densityDpi(configuration2, configuration3, configuration4);
                            configuration = configuration4;
                        }
                    }
                }
            }
            Configuration m46355a = m46355a(context, m46356a, configuration);
            C0244d c0244d = new C0244d(context, C0142a.C0151i.Theme_AppCompat_Empty);
            c0244d.m46167a(m46355a);
            try {
                if (context.getTheme() == null) {
                    z = false;
                }
            } catch (NullPointerException e3) {
                z = false;
            }
            if (z) {
                Resources.Theme theme = c0244d.getTheme();
                if (Build.VERSION.SDK_INT >= 29) {
                    theme.rebase();
                } else if (Build.VERSION.SDK_INT >= 23) {
                    C0804f.C0808b.C0809a.m44460a(theme);
                }
            }
            return super.mo46295a(c0244d);
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException("Application failed to obtain resources from itself", e4);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final ActionBar mo46299a() {
        m46325s();
        return this.f435e;
    }

    /* renamed from: a */
    final PanelFeatureState m46353a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f414M;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f469j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final AbstractC0241b mo46290a(AbstractC0241b.AbstractC0242a abstractC0242a) {
        AbstractC0198d abstractC0198d;
        if (abstractC0242a != null) {
            AbstractC0241b abstractC0241b = this.f437g;
            if (abstractC0241b != null) {
                abstractC0241b.mo46158c();
            }
            C0179c c0179c = new C0179c(abstractC0242a);
            ActionBar mo46299a = mo46299a();
            if (mo46299a != null) {
                AbstractC0241b mo46239a = mo46299a.mo46239a(c0179c);
                this.f437g = mo46239a;
                if (mo46239a != null && (abstractC0198d = this.f434d) != null) {
                    abstractC0198d.onSupportActionModeStarted(mo46239a);
                }
            }
            if (this.f437g == null) {
                this.f437g = m46339b(c0179c);
            }
            return this.f437g;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final void mo46298a(int i) {
        this.f421T = i;
    }

    /* renamed from: a */
    final void m46358a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        C0268g c0268g = menu;
        if (menu == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (i >= 0) {
                    PanelFeatureState[] panelFeatureStateArr = this.f414M;
                    panelFeatureState3 = panelFeatureState;
                    if (i < panelFeatureStateArr.length) {
                        panelFeatureState3 = panelFeatureStateArr[i];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            c0268g = menu;
            if (panelFeatureState3 != null) {
                c0268g = panelFeatureState3.f469j;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if ((panelFeatureState2 == null || panelFeatureState2.f474o) && !this.f449s) {
            this.f403B.f761b.onPanelClosed(i, c0268g);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final void mo46294a(Configuration configuration) {
        ActionBar mo46299a;
        if (this.f444n && this.f408G && (mo46299a = mo46299a()) != null) {
            mo46299a.mo46242a(configuration);
        }
        C0392f.m45727b().m45730a(this.f432b);
        m46344a(false);
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final void mo46293a(View view) {
        m46323u();
        ViewGroup viewGroup = (ViewGroup) this.f443m.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f403B.f761b.onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final void mo46292a(View view, ViewGroup.LayoutParams layoutParams) {
        m46323u();
        ViewGroup viewGroup = (ViewGroup) this.f443m.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f403B.f761b.onContentChanged();
    }

    /* renamed from: a */
    final void m46346a(PanelFeatureState panelFeatureState, boolean z) {
        AbstractC0405n abstractC0405n;
        if (z && panelFeatureState.f460a == 0 && (abstractC0405n = this.f405D) != null && abstractC0405n.mo45660c()) {
            m46338b(panelFeatureState.f469j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f432b.getSystemService("window");
        if (windowManager != null && panelFeatureState.f474o && panelFeatureState.f466g != null) {
            windowManager.removeView(panelFeatureState.f466g);
            if (z) {
                m46358a(panelFeatureState.f460a, panelFeatureState, (Menu) null);
            }
        }
        panelFeatureState.f472m = false;
        panelFeatureState.f473n = false;
        panelFeatureState.f474o = false;
        panelFeatureState.f467h = null;
        panelFeatureState.f476q = true;
        if (this.f415N != panelFeatureState) {
            return;
        }
        this.f415N = null;
    }

    @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
    /* renamed from: a */
    public final void mo10362a(C0268g c0268g) {
        AbstractC0405n abstractC0405n = this.f405D;
        if (abstractC0405n == null || !abstractC0405n.mo45661b() || (ViewConfiguration.get(this.f432b).hasPermanentMenuKey() && !this.f405D.mo45659d())) {
            PanelFeatureState m46334f = m46334f(0);
            m46334f.f476q = true;
            m46346a(m46334f, false);
            m46347a(m46334f, (KeyEvent) null);
            return;
        }
        Window.Callback callback = this.f433c.getCallback();
        if (this.f405D.mo45660c()) {
            this.f405D.mo45657f();
            if (this.f449s) {
                return;
            }
            callback.onPanelClosed(108, m46334f(0).f469j);
        } else if (callback == null || this.f449s) {
        } else {
            if (this.f450t && (1 & this.f451u) != 0) {
                this.f433c.getDecorView().removeCallbacks(this.f426Y);
                this.f426Y.run();
            }
            PanelFeatureState m46334f2 = m46334f(0);
            if (m46334f2.f469j == null || m46334f2.f477r || !callback.onPreparePanel(0, m46334f2.f468i, m46334f2.f469j)) {
                return;
            }
            callback.onMenuOpened(108, m46334f2.f469j);
            this.f405D.mo45658e();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final void mo46289a(Toolbar toolbar) {
        if (!(this.f428a instanceof Activity)) {
            return;
        }
        ActionBar mo46299a = mo46299a();
        if (mo46299a instanceof C0215m) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.f436f = null;
        if (mo46299a != null) {
            mo46299a.mo46251m();
        }
        if (toolbar != null) {
            C0206j c0206j = new C0206j(toolbar, m46320x(), this.f403B);
            this.f435e = c0206j;
            this.f433c.setCallback(c0206j.f542c);
        } else {
            this.f435e = null;
            this.f433c.setCallback(this.f403B);
        }
        mo46275h();
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: a */
    public final void mo46288a(CharSequence charSequence) {
        this.f404C = charSequence;
        AbstractC0405n abstractC0405n = this.f405D;
        if (abstractC0405n != null) {
            abstractC0405n.setWindowTitle(charSequence);
            return;
        }
        ActionBar actionBar = this.f435e;
        if (actionBar != null) {
            actionBar.mo46231b(charSequence);
            return;
        }
        TextView textView = this.f409H;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    /* renamed from: a */
    final boolean m46359a(int i, KeyEvent keyEvent) {
        ActionBar mo46299a = mo46299a();
        if (mo46299a == null || !mo46299a.mo46243a(i, keyEvent)) {
            PanelFeatureState panelFeatureState = this.f415N;
            if (panelFeatureState != null && m46348a(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
                PanelFeatureState panelFeatureState2 = this.f415N;
                if (panelFeatureState2 == null) {
                    return true;
                }
                panelFeatureState2.f473n = true;
                return true;
            } else if (this.f415N != null) {
                return false;
            } else {
                PanelFeatureState m46334f = m46334f(0);
                m46340b(m46334f, keyEvent);
                boolean m46348a = m46348a(m46334f, keyEvent.getKeyCode(), keyEvent);
                m46334f.f472m = false;
                return m46348a;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01fb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01fd A[ORIG_RETURN, RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean m46354a(android.view.KeyEvent r5) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m46354a(android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
    /* renamed from: a */
    public final boolean mo10361a(C0268g c0268g, MenuItem menuItem) {
        PanelFeatureState m46353a;
        Window.Callback callback = this.f433c.getCallback();
        if (callback == null || this.f449s || (m46353a = m46353a((Menu) c0268g.mo46034l())) == null) {
            return false;
        }
        return callback.onMenuItemSelected(m46353a.f460a, menuItem);
    }

    /* renamed from: a */
    final boolean m46344a(boolean z) {
        if (this.f449s) {
            return false;
        }
        int m46318z = m46318z();
        boolean m46357a = m46357a(m46356a(this.f432b, m46318z), z);
        if (m46318z == 0) {
            m46342b(this.f432b).m46312d();
        } else {
            AbstractC0183f abstractC0183f = this.f424W;
            if (abstractC0183f != null) {
                abstractC0183f.m46311e();
            }
        }
        if (m46318z == 3) {
            m46337c(this.f432b).m46312d();
        } else {
            AbstractC0183f abstractC0183f2 = this.f425X;
            if (abstractC0183f2 != null) {
                abstractC0183f2.m46311e();
            }
        }
        return m46357a;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: b */
    public final MenuInflater mo46287b() {
        if (this.f436f == null) {
            m46325s();
            ActionBar actionBar = this.f435e;
            this.f436f = new C0248g(actionBar != null ? actionBar.mo46222g() : this.f432b);
        }
        return this.f436f;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: b */
    public final <T extends View> T mo46286b(int i) {
        m46323u();
        return (T) this.f433c.findViewById(i);
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: b */
    public final void mo46285b(View view, ViewGroup.LayoutParams layoutParams) {
        m46323u();
        ((ViewGroup) this.f443m.findViewById(16908290)).addView(view, layoutParams);
        this.f403B.f761b.onContentChanged();
    }

    /* renamed from: b */
    final void m46338b(C0268g c0268g) {
        if (this.f413L) {
            return;
        }
        this.f413L = true;
        this.f405D.mo45656g();
        Window.Callback callback = this.f433c.getCallback();
        if (callback != null && !this.f449s) {
            callback.onPanelClosed(108, c0268g);
        }
        this.f413L = false;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: c */
    public final void mo46283c() {
        this.f417P = true;
        m46344a(false);
        m46324t();
        Object obj = this.f428a;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = C0743e.m44589b((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                ActionBar actionBar = this.f435e;
                if (actionBar == null) {
                    this.f427Z = true;
                } else {
                    actionBar.mo46230b(true);
                }
            }
            m46291a(this);
        }
        this.f418Q = true;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: c */
    public final void mo46282c(int i) {
        m46323u();
        ViewGroup viewGroup = (ViewGroup) this.f443m.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f432b).inflate(i, viewGroup);
        this.f403B.f761b.onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: d */
    public final void mo46280d() {
        m46323u();
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: d */
    public final boolean mo46279d(int i) {
        int m46331i = m46331i(i);
        if (!this.f448r || m46331i != 108) {
            if (this.f444n && m46331i == 1) {
                this.f444n = false;
            }
            if (m46331i == 1) {
                m46319y();
                this.f448r = true;
                return true;
            } else if (m46331i == 2) {
                m46319y();
                this.f411J = true;
                return true;
            } else if (m46331i == 5) {
                m46319y();
                this.f412K = true;
                return true;
            } else if (m46331i == 10) {
                m46319y();
                this.f446p = true;
                return true;
            } else if (m46331i == 108) {
                m46319y();
                this.f444n = true;
                return true;
            } else if (m46331i != 109) {
                return this.f433c.requestFeature(m46331i);
            } else {
                m46319y();
                this.f445o = true;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: e */
    public final void mo46278e() {
        this.f419R = true;
        m46344a(true);
    }

    /* renamed from: e */
    final void m46335e(int i) {
        if (i == 108) {
            ActionBar mo46299a = mo46299a();
            if (mo46299a == null) {
                return;
            }
            mo46299a.mo46226d(false);
        } else if (i != 0) {
        } else {
            PanelFeatureState m46334f = m46334f(i);
            if (!m46334f.f474o) {
                return;
            }
            m46346a(m46334f, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0.length <= r7) goto L6;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState m46334f(int r7) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r0.f414M
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
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r0]
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
            r0.f414M = r1
        L2a:
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            if (r0 != 0) goto L44
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m46334f(int):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: f */
    public final void mo46277f() {
        this.f419R = false;
        ActionBar mo46299a = mo46299a();
        if (mo46299a != null) {
            mo46299a.mo46228c(false);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: g */
    public final void mo46276g() {
        ActionBar mo46299a = mo46299a();
        if (mo46299a != null) {
            mo46299a.mo46228c(true);
        }
    }

    /* renamed from: g */
    final void m46333g(int i) {
        PanelFeatureState m46334f;
        PanelFeatureState m46334f2 = m46334f(i);
        if (m46334f2.f469j != null) {
            Bundle bundle = new Bundle();
            m46334f2.f469j.m46090c(bundle);
            if (bundle.size() > 0) {
                m46334f2.f478s = bundle;
            }
            m46334f2.f469j.m46088e();
            m46334f2.f469j.clear();
        }
        m46334f2.f477r = true;
        m46334f2.f476q = true;
        if ((i != 108 && i != 0) || this.f405D == null || (m46334f = m46334f(0)) == null) {
            return;
        }
        m46334f.f472m = false;
        m46340b(m46334f, (KeyEvent) null);
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: h */
    public final void mo46275h() {
        ActionBar mo46299a = mo46299a();
        if (mo46299a == null || !mo46299a.mo46252k()) {
            m46332h(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo46274i() {
        /*
            r4 = this;
            r0 = r4
            java.lang.Object r0 = r0.f428a
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto Le
            r0 = r4
            m46284b(r0)
        Le:
            r0 = r4
            boolean r0 = r0.f450t
            if (r0 == 0) goto L24
            r0 = r4
            android.view.Window r0 = r0.f433c
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.f426Y
            boolean r0 = r0.removeCallbacks(r1)
        L24:
            r0 = r4
            r1 = 0
            r0.f419R = r1
            r0 = r4
            r1 = 1
            r0.f449s = r1
            r0 = r4
            int r0 = r0.f420S
            r1 = -100
            if (r0 == r1) goto L68
            r0 = r4
            java.lang.Object r0 = r0.f428a
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L68
            r0 = r5
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L68
            androidx.b.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f398v
            r1 = r4
            java.lang.Object r1 = r1.f428a
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.f420S
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L79
        L68:
            androidx.b.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f398v
            r1 = r4
            java.lang.Object r1 = r1.f428a
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L79:
            r0 = r4
            androidx.appcompat.app.ActionBar r0 = r0.f435e
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L86
            r0 = r5
            r0.mo46251m()
        L86:
            r0 = r4
            androidx.appcompat.app.AppCompatDelegateImpl$f r0 = r0.f424W
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L93
            r0 = r5
            r0.m46311e()
        L93:
            r0 = r4
            androidx.appcompat.app.AppCompatDelegateImpl$f r0 = r0.f425X
            r5 = r0
            r0 = r5
            if (r0 == 0) goto La0
            r0 = r5
            r0.m46311e()
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.mo46274i():void");
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: j */
    public final C0188a.AbstractC0190a mo46273j() {
        return new C0177a();
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: k */
    public final void mo46272k() {
        LayoutInflater from = LayoutInflater.from(this.f432b);
        if (from.getFactory() == null) {
            C0911g.m44189a(from, this);
        } else {
            from.getFactory2();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0199e
    /* renamed from: l */
    public final int mo46271l() {
        return this.f420S;
    }

    /* renamed from: n */
    final Context m46330n() {
        ActionBar mo46299a = mo46299a();
        Context mo46222g = mo46299a != null ? mo46299a.mo46222g() : null;
        Context context = mo46222g;
        if (mo46222g == null) {
            context = this.f432b;
        }
        return context;
    }

    /* renamed from: o */
    final boolean m46329o() {
        ViewGroup viewGroup;
        return this.f408G && (viewGroup = this.f443m) != null && C0926v.m44157B(viewGroup);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m46352a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    final void m46328p() {
        C0940y c0940y = this.f441k;
        if (c0940y != null) {
            c0940y.m44043b();
        }
    }

    /* renamed from: q */
    final void m46327q() {
        m46346a(m46334f(0), true);
    }

    /* renamed from: r */
    final void m46326r() {
        AbstractC0405n abstractC0405n = this.f405D;
        if (abstractC0405n != null) {
            abstractC0405n.mo45656g();
        }
        if (this.f439i != null) {
            this.f433c.getDecorView().removeCallbacks(this.f440j);
            if (this.f439i.isShowing()) {
                try {
                    this.f439i.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f439i = null;
        }
        m46328p();
        PanelFeatureState m46334f = m46334f(0);
        if (m46334f == null || m46334f.f469j == null) {
            return;
        }
        m46334f.f469j.close();
    }
}
