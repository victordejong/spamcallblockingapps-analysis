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
import androidx.appcompat.a;
import androidx.appcompat.app.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ab;
import androidx.appcompat.widget.ag;
import androidx.appcompat.widget.ah;
import androidx.appcompat.widget.n;
import androidx.appcompat.widget.q;
import androidx.core.content.res.f;
import androidx.core.view.aa;
import androidx.core.view.ac;
import androidx.core.view.r;
import androidx.core.view.v;
import androidx.core.view.y;
import androidx.core.view.z;
import androidx.lifecycle.j;
import androidx.lifecycle.p;
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl.class */
public final class AppCompatDelegateImpl extends androidx.appcompat.app.e implements LayoutInflater.Factory2, g.a {
    private static boolean A;
    private static final androidx.b.g<String, Integer> v = new androidx.b.g<>();
    private static final boolean w;
    private static final int[] x;
    private static final boolean y;
    private static final boolean z;
    private d B;
    private CharSequence C;
    private n D;
    private b E;
    private i F;
    private boolean G;
    private TextView H;
    private View I;
    private boolean J;
    private boolean K;
    private boolean L;
    private PanelFeatureState[] M;
    private PanelFeatureState N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private int S;
    private int T;
    private boolean U;
    private boolean V;
    private f W;
    private f X;
    private final Runnable Y;
    private boolean Z;

    /* renamed from: a  reason: collision with root package name */
    final Object f603a;
    private Rect aa;
    private Rect ab;
    private androidx.appcompat.app.h ac;

    /* renamed from: b  reason: collision with root package name */
    final Context f604b;

    /* renamed from: c  reason: collision with root package name */
    Window f605c;

    /* renamed from: d  reason: collision with root package name */
    final androidx.appcompat.app.d f606d;
    ActionBar e;
    MenuInflater f;
    androidx.appcompat.view.b g;
    ActionBarContextView h;
    PopupWindow i;
    Runnable j;
    y k;
    boolean l;
    ViewGroup m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    boolean s;
    boolean t;
    int u;

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

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
    public static final class PanelFeatureState {

        /* renamed from: a  reason: collision with root package name */
        int f615a;

        /* renamed from: b  reason: collision with root package name */
        int f616b;

        /* renamed from: c  reason: collision with root package name */
        int f617c;

        /* renamed from: d  reason: collision with root package name */
        int f618d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        androidx.appcompat.view.menu.g j;
        androidx.appcompat.view.menu.e k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

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
            this.f615a = i;
        }

        final androidx.appcompat.view.menu.n a(m.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(this.l, a.g.abc_list_menu_item_layout);
                this.k = eVar;
                eVar.h = aVar;
                this.j.a(this.k);
            }
            return this.k.a(this.g);
        }

        final void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(a.C0018a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(a.C0018a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(a.i.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(a.j.AppCompatTheme);
            this.f616b = obtainStyledAttributes.getResourceId(a.j.AppCompatTheme_panelBackground, 0);
            this.f = obtainStyledAttributes.getResourceId(a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        final void a(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.view.menu.g gVar2 = this.j;
            if (gVar != gVar2) {
                if (gVar2 != null) {
                    gVar2.b(this.k);
                }
                this.j = gVar;
                if (gVar != null && (eVar = this.k) != null) {
                    gVar.a(eVar);
                }
            }
        }

        public final boolean a() {
            if (this.h == null) {
                return false;
            }
            return this.i != null || this.k.c().getCount() > 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$a.class */
    final class a implements a.AbstractC0020a {
        a() {
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final Drawable a() {
            ab a2 = ab.a(AppCompatDelegateImpl.this.n(), (AttributeSet) null, new int[]{a.C0018a.homeAsUpIndicator});
            Drawable a3 = a2.a(0);
            a2.f1044a.recycle();
            return a3;
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final void a(int i) {
            ActionBar a2 = AppCompatDelegateImpl.this.a();
            if (a2 != null) {
                a2.b(i);
            }
        }

        @Override // androidx.appcompat.app.a.AbstractC0020a
        public final Context b() {
            return AppCompatDelegateImpl.this.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$b.class */
    public final class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            AppCompatDelegateImpl.this.b(gVar);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final boolean a(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callback = AppCompatDelegateImpl.this.f605c.getCallback();
            if (callback == null) {
                return true;
            }
            callback.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$c.class */
    public final class c implements b.a {

        /* renamed from: b  reason: collision with root package name */
        private b.a f622b;

        public c(b.a aVar) {
            this.f622b = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public final void a(androidx.appcompat.view.b bVar) {
            this.f622b.a(bVar);
            if (AppCompatDelegateImpl.this.i != null) {
                AppCompatDelegateImpl.this.f605c.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.j);
            }
            if (AppCompatDelegateImpl.this.h != null) {
                AppCompatDelegateImpl.this.p();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.k = v.m(appCompatDelegateImpl.h).a(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImpl.this.k.a(new aa() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.c.1
                    @Override // androidx.core.view.aa, androidx.core.view.z
                    public final void b(View view) {
                        AppCompatDelegateImpl.this.h.setVisibility(8);
                        if (AppCompatDelegateImpl.this.i != null) {
                            AppCompatDelegateImpl.this.i.dismiss();
                        } else if (AppCompatDelegateImpl.this.h.getParent() instanceof View) {
                            v.r((View) AppCompatDelegateImpl.this.h.getParent());
                        }
                        AppCompatDelegateImpl.this.h.removeAllViews();
                        AppCompatDelegateImpl.this.k.a((z) null);
                        AppCompatDelegateImpl.this.k = null;
                        v.r(AppCompatDelegateImpl.this.m);
                    }
                });
            }
            if (AppCompatDelegateImpl.this.f606d != null) {
                AppCompatDelegateImpl.this.f606d.onSupportActionModeFinished(AppCompatDelegateImpl.this.g);
            }
            AppCompatDelegateImpl.this.g = null;
            v.r(AppCompatDelegateImpl.this.m);
        }

        @Override // androidx.appcompat.view.b.a
        public final boolean a(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f622b.a(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public final boolean a(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f622b.a(bVar, menuItem);
        }

        @Override // androidx.appcompat.view.b.a
        public final boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            v.r(AppCompatDelegateImpl.this.m);
            return this.f622b.b(bVar, menu);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$d.class */
    public final class d extends androidx.appcompat.view.i {
        d(Window.Callback callback) {
            super(callback);
        }

        private ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(AppCompatDelegateImpl.this.f604b, callback);
            androidx.appcompat.view.b a2 = AppCompatDelegateImpl.this.a(aVar);
            if (a2 != null) {
                return aVar.b(a2);
            }
            return null;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.a(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final void onContentChanged() {
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            ActionBar a2;
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i != 108 || (a2 = appCompatDelegateImpl.a()) == null) {
                return true;
            }
            a2.d(true);
            return true;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.e(i);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.k = true;
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.k = false;
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            PanelFeatureState f = AppCompatDelegateImpl.this.f(0);
            if (f == null || f.j == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, f.j, i);
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.l ? a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.l || i != 0) ? super.onWindowStartingActionMode(callback, i) : a(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$e.class */
    public final class e extends f {

        /* renamed from: c  reason: collision with root package name */
        private final PowerManager f626c;

        e(Context context) {
            super();
            this.f626c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.f
        public final int a() {
            return (Build.VERSION.SDK_INT < 21 || !this.f626c.isPowerSaveMode()) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.f
        public final void b() {
            AppCompatDelegateImpl.this.a(true);
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.f
        final IntentFilter c() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f.class */
    public abstract class f {

        /* renamed from: a  reason: collision with root package name */
        private BroadcastReceiver f627a;

        f() {
        }

        abstract int a();

        abstract void b();

        abstract IntentFilter c();

        final void d() {
            e();
            IntentFilter c2 = c();
            if (c2 != null && c2.countActions() != 0) {
                if (this.f627a == null) {
                    this.f627a = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.f.1
                        @Override // android.content.BroadcastReceiver
                        public final void onReceive(Context context, Intent intent) {
                            f.this.b();
                        }
                    };
                }
                AppCompatDelegateImpl.this.f604b.registerReceiver(this.f627a, c2);
            }
        }

        final void e() {
            if (this.f627a != null) {
                try {
                    AppCompatDelegateImpl.this.f604b.unregisterReceiver(this.f627a);
                } catch (IllegalArgumentException e) {
                }
                this.f627a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$g.class */
    public final class g extends f {

        /* renamed from: c  reason: collision with root package name */
        private final l f631c;

        g(l lVar) {
            super();
            this.f631c = lVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
            if (r18.getTime() > r19.getTime()) goto L_0x0098;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
            if (r18 != null) goto L_0x0098;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0098, code lost:
            r20 = r18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
            if (r20 == null) goto L_0x0199;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
            r0 = r0.f685b;
            r0 = java.lang.System.currentTimeMillis();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00ae, code lost:
            if (androidx.appcompat.app.k.f679a != null) goto L_0x00bb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
            androidx.appcompat.app.k.f679a = new androidx.appcompat.app.k();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
            r0 = androidx.appcompat.app.k.f679a;
            r0.a(r0 - 86400000, r20.getLatitude(), r20.getLongitude());
            r0 = r0.f680b;
            r0.a(r0, r20.getLatitude(), r20.getLongitude());
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00f1, code lost:
            if (r0.f682d != 1) goto L_0x00f7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00f4, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
            r0 = r0.f681c;
            r0 = r0.f680b;
            r0.a(r0 + 86400000, r20.getLatitude(), r20.getLongitude());
            r0 = r0.f681c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0126, code lost:
            if (r0 == (-1)) goto L_0x0161;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x012f, code lost:
            if (r0 != (-1)) goto L_0x0135;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0139, code lost:
            if (r0 <= r0) goto L_0x0144;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x013c, code lost:
            r11 = 0 + r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0148, code lost:
            if (r0 <= r0) goto L_0x0153;
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
            r0.f687a = r16;
            r0.f688b = r0;
            r0.f689c = r0;
            r0.f690d = r0;
            r0.e = r0;
            r0.f = r11;
            r16 = r0.f687a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0199, code lost:
            r0 = java.util.Calendar.getInstance().get(11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x01a7, code lost:
            if (r0 < 6) goto L_0x01b5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x01b2, code lost:
            if (r0 < 22) goto L_0x01b8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x01b5, code lost:
            r16 = true;
         */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int a() {
            /*
                Method dump skipped, instructions count: 449
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.g.a():int");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.f
        public final void b() {
            AppCompatDelegateImpl.this.a(true);
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.f
        final IntentFilter c() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$h.class */
    public final class h extends ContentFrameLayout {
        public h(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl.this.q();
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i.class */
    public final class i implements m.a {
        i() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            androidx.appcompat.view.menu.g l = gVar.l();
            boolean z2 = l != gVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                gVar = l;
            }
            PanelFeatureState a2 = appCompatDelegateImpl.a((Menu) gVar);
            if (a2 == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.a(a2.f615a, a2, l);
                AppCompatDelegateImpl.this.a(a2, true);
                return;
            }
            AppCompatDelegateImpl.this.a(a2, z);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final boolean a(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callback;
            if (gVar != gVar.l() || !AppCompatDelegateImpl.this.n || (callback = AppCompatDelegateImpl.this.f605c.getCallback()) == null || AppCompatDelegateImpl.this.s) {
                return true;
            }
            callback.onMenuOpened(108, gVar);
            return true;
        }
    }

    static {
        boolean z2 = false;
        boolean z3 = Build.VERSION.SDK_INT < 21;
        w = z3;
        x = new int[]{16842836};
        y = !"robolectric".equals(Build.FINGERPRINT);
        if (Build.VERSION.SDK_INT >= 17) {
            z2 = true;
        }
        z = z2;
        if (z3 && !A) {
            final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.1
                /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
                    if (r0.contains("Drawable") != false) goto L_0x0037;
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
                        if (r0 == 0) goto L_0x003a
                        r0 = r6
                        java.lang.String r0 = r0.getMessage()
                        r10 = r0
                        r0 = r8
                        r9 = r0
                        r0 = r10
                        if (r0 == 0) goto L_0x003a
                        r0 = r10
                        java.lang.String r1 = "drawable"
                        boolean r0 = r0.contains(r1)
                        if (r0 != 0) goto L_0x0037
                        r0 = r8
                        r9 = r0
                        r0 = r10
                        java.lang.String r1 = "Drawable"
                        boolean r0 = r0.contains(r1)
                        if (r0 == 0) goto L_0x003a
                    L_0x0037:
                        r0 = 1
                        r9 = r0
                    L_0x003a:
                        r0 = r9
                        if (r0 == 0) goto L_0x0088
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
                    L_0x0088:
                        r0 = r4
                        java.lang.Thread$UncaughtExceptionHandler r0 = r4
                        r1 = r5
                        r2 = r6
                        r0.uncaughtException(r1, r2)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.AnonymousClass1.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
                }
            });
            A = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Activity activity, androidx.appcompat.app.d dVar) {
        this(activity, null, dVar, activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatDelegateImpl(Dialog dialog, androidx.appcompat.app.d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    AppCompatDelegateImpl(Context context, Activity activity, androidx.appcompat.app.d dVar) {
        this(context, null, dVar, activity);
    }

    AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.d dVar) {
        this(context, window, dVar, context);
    }

    private AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.d dVar, Object obj) {
        androidx.b.g<String, Integer> gVar;
        Integer num;
        AppCompatActivity appCompatActivity;
        this.k = null;
        this.l = true;
        this.S = -100;
        this.Y = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public final void run() {
                if ((AppCompatDelegateImpl.this.u & 1) != 0) {
                    AppCompatDelegateImpl.this.g(0);
                }
                if ((AppCompatDelegateImpl.this.u & 4096) != 0) {
                    AppCompatDelegateImpl.this.g(108);
                }
                AppCompatDelegateImpl.this.t = false;
                AppCompatDelegateImpl.this.u = 0;
            }
        };
        this.f604b = context;
        this.f606d = dVar;
        this.f603a = obj;
        if (this.S == -100 && (obj instanceof Dialog)) {
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
                this.S = appCompatActivity.getDelegate().l();
            }
        }
        if (this.S == -100 && (num = (gVar = v).get(this.f603a.getClass().getName())) != null) {
            this.S = num.intValue();
            gVar.remove(this.f603a.getClass().getName());
        }
        if (window != null) {
            a(window);
        }
        androidx.appcompat.widget.f.a();
    }

    private boolean A() {
        if (!this.V && (this.f603a instanceof Activity)) {
            PackageManager packageManager = this.f604b.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f604b, this.f603a.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : Build.VERSION.SDK_INT >= 24 ? 786432 : 0);
                this.U = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e2) {
                this.U = false;
            }
        }
        this.V = true;
        return this.U;
    }

    private int a(Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 != 0) {
                if (!(i2 == 1 || i2 == 2)) {
                    if (i2 == 3) {
                        return c(context).a();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() != 0) {
                return b(context).a();
            } else {
                return -1;
            }
        }
        return i2;
    }

    private static Configuration a(Context context, int i2, Configuration configuration) {
        int i3 = i2 != 1 ? i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = BitmapDescriptorFactory.HUE_RED;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    private View a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z2 = false;
        if (this.ac == null) {
            String string = this.f604b.obtainStyledAttributes(a.j.AppCompatTheme).getString(a.j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.ac = new androidx.appcompat.app.h();
            } else {
                try {
                    this.ac = (androidx.appcompat.app.h) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    StringBuilder sb = new StringBuilder("Failed to instantiate custom view inflater ");
                    sb.append(string);
                    sb.append(". Falling back to default.");
                    this.ac = new androidx.appcompat.app.h();
                }
            }
        }
        boolean z3 = w;
        if (!z3) {
            z2 = false;
        } else if (!(attributeSet instanceof XmlPullParser)) {
            z2 = a((ViewParent) view);
        } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
            z2 = true;
        }
        return this.ac.a(view, str, context, attributeSet, z2, z3, ag.a());
    }

    private void a(Window window) {
        if (this.f605c == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof d)) {
                d dVar = new d(callback);
                this.B = dVar;
                window.setCallback(dVar);
                ab a2 = ab.a(this.f604b, (AttributeSet) null, x);
                Drawable b2 = a2.b(0);
                if (b2 != null) {
                    window.setBackgroundDrawable(b2);
                }
                a2.f1044a.recycle();
                this.f605c = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    private void a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (!panelFeatureState.o && !this.s) {
            if (panelFeatureState.f615a == 0) {
                if ((this.f604b.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback callback = this.f605c.getCallback();
            if (callback == null || callback.onMenuOpened(panelFeatureState.f615a, panelFeatureState.j)) {
                WindowManager windowManager = (WindowManager) this.f604b.getSystemService("window");
                if (windowManager != null && b(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.g == null || panelFeatureState.q) {
                        if (panelFeatureState.g == null) {
                            a(panelFeatureState);
                            if (panelFeatureState.g == null) {
                                return;
                            }
                        } else if (panelFeatureState.q && panelFeatureState.g.getChildCount() > 0) {
                            panelFeatureState.g.removeAllViews();
                        }
                        if (!c(panelFeatureState) || !panelFeatureState.a()) {
                            panelFeatureState.q = true;
                            return;
                        }
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                        if (layoutParams2 == null) {
                            layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                        }
                        panelFeatureState.g.setBackgroundResource(panelFeatureState.f616b);
                        ViewParent parent = panelFeatureState.h.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(panelFeatureState.h);
                        }
                        panelFeatureState.g.addView(panelFeatureState.h, layoutParams3);
                        if (!panelFeatureState.h.hasFocus()) {
                            panelFeatureState.h.requestFocus();
                        }
                    } else if (!(panelFeatureState.i == null || (layoutParams = panelFeatureState.i.getLayoutParams()) == null || layoutParams.width != -1)) {
                        i2 = -1;
                        panelFeatureState.n = false;
                        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f618d, panelFeatureState.e, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 8519680, -3);
                        layoutParams4.gravity = panelFeatureState.f617c;
                        layoutParams4.windowAnimations = panelFeatureState.f;
                        windowManager.addView(panelFeatureState.g, layoutParams4);
                        panelFeatureState.o = true;
                        return;
                    }
                    i2 = -2;
                    panelFeatureState.n = false;
                    WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f618d, panelFeatureState.e, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 8519680, -3);
                    layoutParams42.gravity = panelFeatureState.f617c;
                    layoutParams42.windowAnimations = panelFeatureState.f;
                    windowManager.addView(panelFeatureState.g, layoutParams42);
                    panelFeatureState.o = true;
                    return;
                }
                return;
            }
            a(panelFeatureState, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(int r5, boolean r6) {
        /*
            r4 = this;
            r0 = r4
            android.content.Context r0 = r0.f604b
            r1 = r5
            r2 = 0
            android.content.res.Configuration r0 = a(r0, r1, r2)
            r7 = r0
            r0 = r4
            boolean r0 = r0.A()
            r8 = r0
            r0 = r4
            android.content.Context r0 = r0.f604b
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
            if (r0 == r1) goto L_0x0077
            r0 = r6
            if (r0 == 0) goto L_0x0077
            r0 = r8
            if (r0 != 0) goto L_0x0077
            r0 = r4
            boolean r0 = r0.P
            if (r0 == 0) goto L_0x0077
            boolean r0 = androidx.appcompat.app.AppCompatDelegateImpl.y
            if (r0 != 0) goto L_0x0052
            r0 = r4
            boolean r0 = r0.Q
            if (r0 == 0) goto L_0x0077
        L_0x0052:
            r0 = r4
            java.lang.Object r0 = r0.f603a
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0077
            r0 = r7
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChild()
            if (r0 != 0) goto L_0x0077
            r0 = r4
            java.lang.Object r0 = r0.f603a
            android.app.Activity r0 = (android.app.Activity) r0
            androidx.core.app.a.e(r0)
            r0 = 1
            r6 = r0
            goto L_0x0079
        L_0x0077:
            r0 = 0
            r6 = r0
        L_0x0079:
            r0 = r6
            if (r0 != 0) goto L_0x0092
            r0 = r9
            r1 = r10
            if (r0 == r1) goto L_0x0092
            r0 = r4
            r1 = r10
            r2 = r8
            r0.b(r1, r2)
            r0 = r11
            r6 = r0
            goto L_0x0092
        L_0x0092:
            r0 = r6
            if (r0 == 0) goto L_0x00aa
            r0 = r4
            java.lang.Object r0 = r0.f603a
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto L_0x00aa
            r0 = r7
            androidx.appcompat.app.AppCompatActivity r0 = (androidx.appcompat.app.AppCompatActivity) r0
            r1 = r5
            r0.onNightModeChanged(r1)
        L_0x00aa:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.a(int, boolean):boolean");
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f605c.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || v.E((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private boolean a(PanelFeatureState panelFeatureState) {
        panelFeatureState.a(n());
        panelFeatureState.g = new h(panelFeatureState.l);
        panelFeatureState.f617c = 81;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (b(r6, r8) != false) goto L_0x0024;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6, int r7, android.view.KeyEvent r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0.isSystem()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r6
            boolean r0 = r0.m
            if (r0 != 0) goto L_0x0024
            r0 = r10
            r9 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.b(r1, r2)
            if (r0 == 0) goto L_0x003b
        L_0x0024:
            r0 = r10
            r9 = r0
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.j
            if (r0 == 0) goto L_0x003b
            r0 = r6
            androidx.appcompat.view.menu.g r0 = r0.j
            r1 = r7
            r2 = r8
            r3 = 1
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r9 = r0
        L_0x003b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.a(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, int, android.view.KeyEvent):boolean");
    }

    private f b(Context context) {
        if (this.W == null) {
            this.W = new g(l.a(context));
        }
        return this.W;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.appcompat.view.b b(androidx.appcompat.view.b.a r8) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b(androidx.appcompat.view.b$a):androidx.appcompat.view.b");
    }

    private void b(int i2, boolean z2) {
        Resources resources = this.f604b.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration, null);
        if (Build.VERSION.SDK_INT < 26) {
            androidx.appcompat.app.i.a(resources);
        }
        int i3 = this.T;
        if (i3 != 0) {
            this.f604b.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f604b.getTheme().applyStyle(this.T, true);
            }
        }
        if (z2) {
            Object obj = this.f603a;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof p) {
                    if (((p) activity).getLifecycle().getCurrentState().isAtLeast(j.b.STARTED)) {
                        activity.onConfigurationChanged(configuration);
                    }
                } else if (this.R) {
                    activity.onConfigurationChanged(configuration);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r6.f615a == 108) goto L_0x0017;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState):boolean");
    }

    private boolean b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        n nVar;
        n nVar2;
        n nVar3;
        if (this.s) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.N;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            a(panelFeatureState2, false);
        }
        Window.Callback callback = this.f605c.getCallback();
        if (callback != null) {
            panelFeatureState.i = callback.onCreatePanelView(panelFeatureState.f615a);
        }
        boolean z2 = panelFeatureState.f615a == 0 || panelFeatureState.f615a == 108;
        if (z2 && (nVar3 = this.D) != null) {
            nVar3.setMenuPrepared();
        }
        if (panelFeatureState.i == null && (!z2 || !(this.e instanceof j))) {
            if (panelFeatureState.j == null || panelFeatureState.r) {
                if (panelFeatureState.j == null) {
                    b(panelFeatureState);
                    if (panelFeatureState.j == null) {
                        return false;
                    }
                }
                if (z2 && this.D != null) {
                    if (this.E == null) {
                        this.E = new b();
                    }
                    this.D.setMenu(panelFeatureState.j, this.E);
                }
                panelFeatureState.j.e();
                if (!callback.onCreatePanelMenu(panelFeatureState.f615a, panelFeatureState.j)) {
                    panelFeatureState.a((androidx.appcompat.view.menu.g) null);
                    if (!z2 || (nVar2 = this.D) == null) {
                        return false;
                    }
                    nVar2.setMenu(null, this.E);
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.j.e();
            if (panelFeatureState.s != null) {
                panelFeatureState.j.d(panelFeatureState.s);
                panelFeatureState.s = null;
            }
            if (!callback.onPreparePanel(0, panelFeatureState.i, panelFeatureState.j)) {
                if (z2 && (nVar = this.D) != null) {
                    nVar.setMenu(null, this.E);
                }
                panelFeatureState.j.f();
                return false;
            }
            panelFeatureState.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.j.setQwertyMode(panelFeatureState.p);
            panelFeatureState.j.f();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.N = panelFeatureState;
        return true;
    }

    private f c(Context context) {
        if (this.X == null) {
            this.X = new e(context);
        }
        return this.X;
    }

    private boolean c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.i != null) {
            panelFeatureState.h = panelFeatureState.i;
            return true;
        } else if (panelFeatureState.j == null) {
            return false;
        } else {
            if (this.F == null) {
                this.F = new i();
            }
            panelFeatureState.h = (View) panelFeatureState.a(this.F);
            return panelFeatureState.h != null;
        }
    }

    private void h(int i2) {
        this.u = (1 << i2) | this.u;
        if (!this.t) {
            v.a(this.f605c.getDecorView(), this.Y);
            this.t = true;
        }
    }

    private static int i(int i2) {
        if (i2 == 8) {
            return 108;
        }
        int i3 = i2;
        if (i2 == 9) {
            i3 = 109;
        }
        return i3;
    }

    private void s() {
        u();
        if (this.n && this.e == null) {
            Object obj = this.f603a;
            if (obj instanceof Activity) {
                this.e = new m((Activity) obj, this.o);
            } else if (obj instanceof Dialog) {
                this.e = new m((Dialog) obj);
            }
            ActionBar actionBar = this.e;
            if (actionBar != null) {
                actionBar.b(this.Z);
            }
        }
    }

    private void t() {
        if (this.f605c == null) {
            Object obj = this.f603a;
            if (obj instanceof Activity) {
                a(((Activity) obj).getWindow());
            }
        }
        if (this.f605c == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private void u() {
        if (!this.G) {
            this.m = v();
            CharSequence x2 = x();
            if (!TextUtils.isEmpty(x2)) {
                n nVar = this.D;
                if (nVar != null) {
                    nVar.setWindowTitle(x2);
                } else {
                    ActionBar actionBar = this.e;
                    if (actionBar != null) {
                        actionBar.b(x2);
                    } else {
                        TextView textView = this.H;
                        if (textView != null) {
                            textView.setText(x2);
                        }
                    }
                }
            }
            w();
            this.G = true;
            PanelFeatureState f2 = f(0);
            if (this.s) {
                return;
            }
            if (f2 == null || f2.j == null) {
                h(108);
            }
        }
    }

    private ViewGroup v() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f604b.obtainStyledAttributes(a.j.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowNoTitle, false)) {
                d(1);
            } else if (obtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowActionBar, false)) {
                d(108);
            }
            if (obtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowActionBarOverlay, false)) {
                d(109);
            }
            if (obtainStyledAttributes.getBoolean(a.j.AppCompatTheme_windowActionModeOverlay, false)) {
                d(10);
            }
            this.q = obtainStyledAttributes.getBoolean(a.j.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            t();
            this.f605c.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f604b);
            if (this.r) {
                viewGroup = this.p ? (ViewGroup) from.inflate(a.g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(a.g.abc_screen_simple, (ViewGroup) null);
            } else if (this.q) {
                viewGroup = (ViewGroup) from.inflate(a.g.abc_dialog_title_material, (ViewGroup) null);
                this.o = false;
                this.n = false;
            } else if (this.n) {
                TypedValue typedValue = new TypedValue();
                this.f604b.getTheme().resolveAttribute(a.C0018a.actionBarTheme, typedValue, true);
                ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.d(this.f604b, typedValue.resourceId) : this.f604b).inflate(a.g.abc_screen_toolbar, (ViewGroup) null);
                n nVar = (n) viewGroup2.findViewById(a.f.decor_content_parent);
                this.D = nVar;
                nVar.setWindowCallback(this.f605c.getCallback());
                if (this.o) {
                    this.D.a(109);
                }
                if (this.J) {
                    this.D.a(2);
                }
                viewGroup = viewGroup2;
                if (this.K) {
                    this.D.a(5);
                    viewGroup = viewGroup2;
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    v.a(viewGroup, new r() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
                        @Override // androidx.core.view.r
                        public final ac a(View view, ac acVar) {
                            int i2 = acVar.f1974b.g().f1897c;
                            int a2 = AppCompatDelegateImpl.this.a(acVar, (Rect) null);
                            ac acVar2 = acVar;
                            if (i2 != a2) {
                                acVar2 = acVar.a(acVar.f1974b.g().f1896b, a2, acVar.f1974b.g().f1898d, acVar.f1974b.g().e);
                            }
                            return v.a(view, acVar2);
                        }
                    });
                } else if (viewGroup instanceof q) {
                    ((q) viewGroup).setOnFitSystemWindowsListener(new q.a() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.4
                        @Override // androidx.appcompat.widget.q.a
                        public final void a(Rect rect) {
                            rect.top = AppCompatDelegateImpl.this.a((ac) null, rect);
                        }
                    });
                }
                if (this.D == null) {
                    this.H = (TextView) viewGroup.findViewById(a.f.title);
                }
                ah.b(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(a.f.action_bar_activity_content);
                ViewGroup viewGroup3 = (ViewGroup) this.f605c.findViewById(16908290);
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
                this.f605c.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new ContentFrameLayout.a() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
                    @Override // androidx.appcompat.widget.ContentFrameLayout.a
                    public final void a() {
                        AppCompatDelegateImpl.this.r();
                    }
                });
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.n + ", windowActionBarOverlay: " + this.o + ", android:windowIsFloating: " + this.q + ", windowActionModeOverlay: " + this.p + ", windowNoTitle: " + this.r + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    private void w() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.m.findViewById(16908290);
        View decorView = this.f605c.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f604b.obtainStyledAttributes(a.j.AppCompatTheme);
        obtainStyledAttributes.getValue(a.j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.a());
        obtainStyledAttributes.getValue(a.j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.b());
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.c());
        }
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.d());
        }
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.e());
        }
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(a.j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.f());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private CharSequence x() {
        Object obj = this.f603a;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.C;
    }

    private void y() {
        if (this.G) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private int z() {
        int i2 = this.S;
        return i2 != -100 ? i2 : m();
    }

    final int a(ac acVar, Rect rect) {
        int i2;
        boolean z2;
        boolean z3;
        int i3 = 0;
        int i4 = acVar != null ? acVar.f1974b.g().f1897c : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.h;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
            i2 = i4;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.h.getLayoutParams();
            boolean z4 = true;
            boolean z5 = true;
            if (this.h.isShown()) {
                if (this.aa == null) {
                    this.aa = new Rect();
                    this.ab = new Rect();
                }
                Rect rect2 = this.aa;
                Rect rect3 = this.ab;
                if (acVar == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(acVar.f1974b.g().f1896b, acVar.f1974b.g().f1897c, acVar.f1974b.g().f1898d, acVar.f1974b.g().e);
                }
                ah.a(this.m, rect2, rect3);
                int i5 = rect2.top;
                int i6 = rect2.left;
                int i7 = rect2.right;
                ac t = v.t(this.m);
                int i8 = t == null ? 0 : t.f1974b.g().f1896b;
                int i9 = t == null ? 0 : t.f1974b.g().f1898d;
                if (marginLayoutParams.topMargin == i5 && marginLayoutParams.leftMargin == i6 && marginLayoutParams.rightMargin == i7) {
                    z4 = false;
                } else {
                    marginLayoutParams.topMargin = i5;
                    marginLayoutParams.leftMargin = i6;
                    marginLayoutParams.rightMargin = i7;
                    z4 = true;
                }
                if (i5 <= 0 || this.I != null) {
                    View view = this.I;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (!(marginLayoutParams2.height == marginLayoutParams.topMargin && marginLayoutParams2.leftMargin == i8 && marginLayoutParams2.rightMargin == i9)) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = i8;
                            marginLayoutParams2.rightMargin = i9;
                            this.I.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f604b);
                    this.I = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = i8;
                    layoutParams.rightMargin = i9;
                    this.m.addView(this.I, -1, layoutParams);
                }
                View view3 = this.I;
                boolean z6 = view3 != null;
                if (z6 && view3.getVisibility() != 0) {
                    View view4 = this.I;
                    if ((v.q(view4) & PropertyFlags.UNSIGNED) == 0) {
                        z5 = false;
                    }
                    view4.setBackgroundColor(z5 ? androidx.core.content.b.c(this.f604b, a.c.abc_decor_view_status_guard_light) : androidx.core.content.b.c(this.f604b, a.c.abc_decor_view_status_guard));
                }
                i4 = i4;
                if (!this.p) {
                    i4 = i4;
                    if (z6) {
                        i4 = 0;
                    }
                }
                z3 = z6;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z3 = false;
            } else {
                z3 = false;
                z4 = false;
            }
            i2 = i4;
            z2 = z3;
            if (z4) {
                this.h.setLayoutParams(marginLayoutParams);
                i2 = i4;
                z2 = z3;
            }
        }
        View view5 = this.I;
        if (view5 != null) {
            if (!z2) {
                i3 = 8;
            }
            view5.setVisibility(i3);
        }
        return i2;
    }

    @Override // androidx.appcompat.app.e
    public final Context a(Context context) {
        boolean z2 = true;
        this.P = true;
        int a2 = a(context, z());
        Configuration configuration = null;
        if (z && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(a(context, a2, (Configuration) null));
                return context;
            } catch (IllegalStateException e2) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(a(context, a2, (Configuration) null));
                return context;
            } catch (IllegalStateException e3) {
            }
        }
        if (!y) {
            return super.a(context);
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
                        } else if (!androidx.core.e.a.a(configuration2.locale, configuration3.locale)) {
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
            Configuration a3 = a(context, a2, configuration);
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, a.i.Theme_AppCompat_Empty);
            dVar.a(a3);
            z2 = false;
            try {
                if (context.getTheme() == null) {
                    z2 = false;
                }
            } catch (NullPointerException e4) {
            }
            if (z2) {
                Resources.Theme theme = dVar.getTheme();
                if (Build.VERSION.SDK_INT >= 29) {
                    theme.rebase();
                } else if (Build.VERSION.SDK_INT >= 23) {
                    f.b.a.a(theme);
                }
            }
            return super.a(dVar);
        } catch (PackageManager.NameNotFoundException e5) {
            throw new RuntimeException("Application failed to obtain resources from itself", e5);
        }
    }

    @Override // androidx.appcompat.app.e
    public final ActionBar a() {
        s();
        return this.e;
    }

    final PanelFeatureState a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.e
    public final androidx.appcompat.view.b a(b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar != null) {
            androidx.appcompat.view.b bVar = this.g;
            if (bVar != null) {
                bVar.c();
            }
            c cVar = new c(aVar);
            ActionBar a2 = a();
            if (a2 != null) {
                androidx.appcompat.view.b a3 = a2.a(cVar);
                this.g = a3;
                if (!(a3 == null || (dVar = this.f606d) == null)) {
                    dVar.onSupportActionModeStarted(a3);
                }
            }
            if (this.g == null) {
                this.g = b(cVar);
            }
            return this.g;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    @Override // androidx.appcompat.app.e
    public final void a(int i2) {
        this.T = i2;
    }

    final void a(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        Menu menu2 = menu;
        if (menu == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (i2 >= 0) {
                    PanelFeatureState[] panelFeatureStateArr = this.M;
                    panelFeatureState3 = panelFeatureState;
                    if (i2 < panelFeatureStateArr.length) {
                        panelFeatureState3 = panelFeatureStateArr[i2];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            menu2 = menu;
            if (panelFeatureState3 != null) {
                menu2 = panelFeatureState3.j;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if ((panelFeatureState2 == null || panelFeatureState2.o) && !this.s) {
            this.B.f762b.onPanelClosed(i2, menu2);
        }
    }

    @Override // androidx.appcompat.app.e
    public final void a(Configuration configuration) {
        ActionBar a2;
        if (this.n && this.G && (a2 = a()) != null) {
            a2.a(configuration);
        }
        androidx.appcompat.widget.f.b().a(this.f604b);
        a(false);
    }

    @Override // androidx.appcompat.app.e
    public final void a(View view) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.m.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.B.f762b.onContentChanged();
    }

    @Override // androidx.appcompat.app.e
    public final void a(View view, ViewGroup.LayoutParams layoutParams) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.m.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.B.f762b.onContentChanged();
    }

    final void a(PanelFeatureState panelFeatureState, boolean z2) {
        n nVar;
        if (!z2 || panelFeatureState.f615a != 0 || (nVar = this.D) == null || !nVar.c()) {
            WindowManager windowManager = (WindowManager) this.f604b.getSystemService("window");
            if (!(windowManager == null || !panelFeatureState.o || panelFeatureState.g == null)) {
                windowManager.removeView(panelFeatureState.g);
                if (z2) {
                    a(panelFeatureState.f615a, panelFeatureState, (Menu) null);
                }
            }
            panelFeatureState.m = false;
            panelFeatureState.n = false;
            panelFeatureState.o = false;
            panelFeatureState.h = null;
            panelFeatureState.q = true;
            if (this.N == panelFeatureState) {
                this.N = null;
                return;
            }
            return;
        }
        b(panelFeatureState.j);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public final void a(androidx.appcompat.view.menu.g gVar) {
        n nVar = this.D;
        if (nVar == null || !nVar.b() || (ViewConfiguration.get(this.f604b).hasPermanentMenuKey() && !this.D.d())) {
            PanelFeatureState f2 = f(0);
            f2.q = true;
            a(f2, false);
            a(f2, (KeyEvent) null);
            return;
        }
        Window.Callback callback = this.f605c.getCallback();
        if (this.D.c()) {
            this.D.f();
            if (!this.s) {
                callback.onPanelClosed(108, f(0).j);
            }
        } else if (callback != null && !this.s) {
            if (this.t && (1 & this.u) != 0) {
                this.f605c.getDecorView().removeCallbacks(this.Y);
                this.Y.run();
            }
            PanelFeatureState f3 = f(0);
            if (f3.j != null && !f3.r && callback.onPreparePanel(0, f3.i, f3.j)) {
                callback.onMenuOpened(108, f3.j);
                this.D.e();
            }
        }
    }

    @Override // androidx.appcompat.app.e
    public final void a(Toolbar toolbar) {
        if (this.f603a instanceof Activity) {
            ActionBar a2 = a();
            if (!(a2 instanceof m)) {
                this.f = null;
                if (a2 != null) {
                    a2.m();
                }
                if (toolbar != null) {
                    j jVar = new j(toolbar, x(), this.B);
                    this.e = jVar;
                    this.f605c.setCallback(jVar.f671c);
                } else {
                    this.e = null;
                    this.f605c.setCallback(this.B);
                }
                h();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Override // androidx.appcompat.app.e
    public final void a(CharSequence charSequence) {
        this.C = charSequence;
        n nVar = this.D;
        if (nVar != null) {
            nVar.setWindowTitle(charSequence);
            return;
        }
        ActionBar actionBar = this.e;
        if (actionBar != null) {
            actionBar.b(charSequence);
            return;
        }
        TextView textView = this.H;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    final boolean a(int i2, KeyEvent keyEvent) {
        ActionBar a2 = a();
        if (a2 != null && a2.a(i2, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.N;
        if (panelFeatureState != null && a(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
            PanelFeatureState panelFeatureState2 = this.N;
            if (panelFeatureState2 == null) {
                return true;
            }
            panelFeatureState2.n = true;
            return true;
        } else if (this.N != null) {
            return false;
        } else {
            PanelFeatureState f2 = f(0);
            b(f2, keyEvent);
            boolean a3 = a(f2, keyEvent.getKeyCode(), keyEvent);
            f2.m = false;
            return a3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01fb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01fd A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean a(android.view.KeyEvent r5) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.a(android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.view.menu.g.a
    public final boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        PanelFeatureState a2;
        Window.Callback callback = this.f605c.getCallback();
        if (callback == null || this.s || (a2 = a((Menu) gVar.l())) == null) {
            return false;
        }
        return callback.onMenuItemSelected(a2.f615a, menuItem);
    }

    final boolean a(boolean z2) {
        if (this.s) {
            return false;
        }
        int z3 = z();
        boolean a2 = a(a(this.f604b, z3), z2);
        if (z3 == 0) {
            b(this.f604b).d();
        } else {
            f fVar = this.W;
            if (fVar != null) {
                fVar.e();
            }
        }
        if (z3 == 3) {
            c(this.f604b).d();
        } else {
            f fVar2 = this.X;
            if (fVar2 != null) {
                fVar2.e();
            }
        }
        return a2;
    }

    @Override // androidx.appcompat.app.e
    public final MenuInflater b() {
        if (this.f == null) {
            s();
            ActionBar actionBar = this.e;
            this.f = new androidx.appcompat.view.g(actionBar != null ? actionBar.g() : this.f604b);
        }
        return this.f;
    }

    @Override // androidx.appcompat.app.e
    public final <T extends View> T b(int i2) {
        u();
        return (T) this.f605c.findViewById(i2);
    }

    @Override // androidx.appcompat.app.e
    public final void b(View view, ViewGroup.LayoutParams layoutParams) {
        u();
        ((ViewGroup) this.m.findViewById(16908290)).addView(view, layoutParams);
        this.B.f762b.onContentChanged();
    }

    final void b(androidx.appcompat.view.menu.g gVar) {
        if (!this.L) {
            this.L = true;
            this.D.g();
            Window.Callback callback = this.f605c.getCallback();
            if (callback != null && !this.s) {
                callback.onPanelClosed(108, gVar);
            }
            this.L = false;
        }
    }

    @Override // androidx.appcompat.app.e
    public final void c() {
        this.P = true;
        a(false);
        t();
        Object obj = this.f603a;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = androidx.core.app.e.b((Activity) obj);
            } catch (IllegalArgumentException e2) {
            }
            if (str != null) {
                ActionBar actionBar = this.e;
                if (actionBar == null) {
                    this.Z = true;
                } else {
                    actionBar.b(true);
                }
            }
            a(this);
        }
        this.Q = true;
    }

    @Override // androidx.appcompat.app.e
    public final void c(int i2) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.m.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f604b).inflate(i2, viewGroup);
        this.B.f762b.onContentChanged();
    }

    @Override // androidx.appcompat.app.e
    public final void d() {
        u();
    }

    @Override // androidx.appcompat.app.e
    public final boolean d(int i2) {
        int i3 = i(i2);
        if (this.r && i3 == 108) {
            return false;
        }
        if (this.n && i3 == 1) {
            this.n = false;
        }
        if (i3 == 1) {
            y();
            this.r = true;
            return true;
        } else if (i3 == 2) {
            y();
            this.J = true;
            return true;
        } else if (i3 == 5) {
            y();
            this.K = true;
            return true;
        } else if (i3 == 10) {
            y();
            this.p = true;
            return true;
        } else if (i3 == 108) {
            y();
            this.n = true;
            return true;
        } else if (i3 != 109) {
            return this.f605c.requestFeature(i3);
        } else {
            y();
            this.o = true;
            return true;
        }
    }

    @Override // androidx.appcompat.app.e
    public final void e() {
        this.R = true;
        a(true);
    }

    final void e(int i2) {
        if (i2 == 108) {
            ActionBar a2 = a();
            if (a2 != null) {
                a2.d(false);
            }
        } else if (i2 == 0) {
            PanelFeatureState f2 = f(i2);
            if (f2.o) {
                a(f2, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0.length <= r7) goto L_0x0011;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState f(int r7) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r0.M
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0011
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = r0.length
            r1 = r7
            if (r0 > r1) goto L_0x002a
        L_0x0011:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r0]
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0025
            r0 = r8
            r1 = 0
            r2 = r9
            r3 = 0
            r4 = r8
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L_0x0025:
            r0 = r6
            r1 = r9
            r0.M = r1
        L_0x002a:
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0044
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r8
            r0[r1] = r2
        L_0x0044:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.f(int):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    @Override // androidx.appcompat.app.e
    public final void f() {
        this.R = false;
        ActionBar a2 = a();
        if (a2 != null) {
            a2.c(false);
        }
    }

    @Override // androidx.appcompat.app.e
    public final void g() {
        ActionBar a2 = a();
        if (a2 != null) {
            a2.c(true);
        }
    }

    final void g(int i2) {
        PanelFeatureState f2;
        PanelFeatureState f3 = f(i2);
        if (f3.j != null) {
            Bundle bundle = new Bundle();
            f3.j.c(bundle);
            if (bundle.size() > 0) {
                f3.s = bundle;
            }
            f3.j.e();
            f3.j.clear();
        }
        f3.r = true;
        f3.q = true;
        if ((i2 == 108 || i2 == 0) && this.D != null && (f2 = f(0)) != null) {
            f2.m = false;
            b(f2, (KeyEvent) null);
        }
    }

    @Override // androidx.appcompat.app.e
    public final void h() {
        ActionBar a2 = a();
        if (a2 == null || !a2.k()) {
            h(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.app.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            r4 = this;
            r0 = r4
            java.lang.Object r0 = r0.f603a
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x000e
            r0 = r4
            b(r0)
        L_0x000e:
            r0 = r4
            boolean r0 = r0.t
            if (r0 == 0) goto L_0x0024
            r0 = r4
            android.view.Window r0 = r0.f605c
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.Y
            boolean r0 = r0.removeCallbacks(r1)
        L_0x0024:
            r0 = r4
            r1 = 0
            r0.R = r1
            r0 = r4
            r1 = 1
            r0.s = r1
            r0 = r4
            int r0 = r0.S
            r1 = -100
            if (r0 == r1) goto L_0x0068
            r0 = r4
            java.lang.Object r0 = r0.f603a
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0068
            r0 = r5
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L_0x0068
            androidx.b.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.v
            r1 = r4
            java.lang.Object r1 = r1.f603a
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.S
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0079
        L_0x0068:
            androidx.b.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.v
            r1 = r4
            java.lang.Object r1 = r1.f603a
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L_0x0079:
            r0 = r4
            androidx.appcompat.app.ActionBar r0 = r0.e
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0086
            r0 = r5
            r0.m()
        L_0x0086:
            r0 = r4
            androidx.appcompat.app.AppCompatDelegateImpl$f r0 = r0.W
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0093
            r0 = r5
            r0.e()
        L_0x0093:
            r0 = r4
            androidx.appcompat.app.AppCompatDelegateImpl$f r0 = r0.X
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00a0
            r0 = r5
            r0.e()
        L_0x00a0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.i():void");
    }

    @Override // androidx.appcompat.app.e
    public final a.AbstractC0020a j() {
        return new a();
    }

    @Override // androidx.appcompat.app.e
    public final void k() {
        LayoutInflater from = LayoutInflater.from(this.f604b);
        if (from.getFactory() == null) {
            androidx.core.view.g.a(from, this);
        } else {
            from.getFactory2();
        }
    }

    @Override // androidx.appcompat.app.e
    public final int l() {
        return this.S;
    }

    final Context n() {
        ActionBar a2 = a();
        Context g2 = a2 != null ? a2.g() : null;
        Context context = g2;
        if (g2 == null) {
            context = this.f604b;
        }
        return context;
    }

    final boolean o() {
        ViewGroup viewGroup;
        return this.G && (viewGroup = this.m) != null && v.B(viewGroup);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    final void p() {
        y yVar = this.k;
        if (yVar != null) {
            yVar.b();
        }
    }

    final void q() {
        a(f(0), true);
    }

    final void r() {
        n nVar = this.D;
        if (nVar != null) {
            nVar.g();
        }
        if (this.i != null) {
            this.f605c.getDecorView().removeCallbacks(this.j);
            if (this.i.isShowing()) {
                try {
                    this.i.dismiss();
                } catch (IllegalArgumentException e2) {
                }
            }
            this.i = null;
        }
        p();
        PanelFeatureState f2 = f(0);
        if (f2 != null && f2.j != null) {
            f2.j.close();
        }
    }
}
