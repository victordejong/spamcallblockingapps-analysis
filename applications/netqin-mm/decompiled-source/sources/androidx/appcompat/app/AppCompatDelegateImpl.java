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
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import p012b.p016b.C0574a;
import p012b.p016b.C0576c;
import p012b.p016b.C0579f;
import p012b.p016b.C0580g;
import p012b.p016b.C0582i;
import p012b.p016b.C0583j;
import p012b.p016b.p017k.AbstractC0586b;
import p012b.p016b.p017k.AbstractC0587c;
import p012b.p016b.p017k.C0590e;
import p012b.p016b.p017k.C0592f;
import p012b.p016b.p017k.C0594h;
import p012b.p016b.p017k.C0596i;
import p012b.p016b.p017k.DialogC0588d;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p016b.p024p.C0625d;
import p012b.p016b.p024p.C0627f;
import p012b.p016b.p024p.C0629g;
import p012b.p016b.p024p.Window$CallbackC0634i;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p016b.p024p.p025j.C0644e;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p026q.AbstractC0714n;
import p012b.p016b.p026q.AbstractC0720r;
import p012b.p016b.p026q.C0689f;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0705k0;
import p012b.p016b.p026q.C0708l0;
import p012b.p035f.C0793g;
import p012b.p042i.p043h.C0855f;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p044i.p045c.C0882f;
import p012b.p042i.p053o.C0943c;
import p012b.p042i.p054p.AbstractC0999r;
import p012b.p042i.p054p.AbstractC1021z;
import p012b.p042i.p054p.C0951a0;
import p012b.p042i.p054p.C0957c0;
import p012b.p042i.p054p.C0985e;
import p012b.p042i.p054p.C0987f;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1017y;
import p012b.p068o.AbstractC1109g;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl.class */
public class AppCompatDelegateImpl extends AbstractC0587c implements C0647g.AbstractC0648a, LayoutInflater.Factory2 {

    /* renamed from: c0 */
    public static final C0793g<String, Integer> f271c0 = new C0793g<>();

    /* renamed from: d0 */
    public static final boolean f272d0;

    /* renamed from: e0 */
    public static final int[] f273e0;

    /* renamed from: f0 */
    public static final boolean f274f0;

    /* renamed from: g0 */
    public static final boolean f275g0;

    /* renamed from: h0 */
    public static boolean f276h0;

    /* renamed from: A */
    public boolean f277A;

    /* renamed from: B */
    public boolean f278B;

    /* renamed from: C */
    public boolean f279C;

    /* renamed from: D */
    public boolean f280D;

    /* renamed from: E */
    public boolean f281E;

    /* renamed from: F */
    public boolean f282F;

    /* renamed from: G */
    public PanelFeatureState[] f283G;

    /* renamed from: H */
    public PanelFeatureState f284H;

    /* renamed from: I */
    public boolean f285I;

    /* renamed from: J */
    public boolean f286J;

    /* renamed from: K */
    public boolean f287K;

    /* renamed from: L */
    public boolean f288L;

    /* renamed from: M */
    public boolean f289M;

    /* renamed from: N */
    public int f290N;

    /* renamed from: O */
    public int f291O;

    /* renamed from: P */
    public boolean f292P;

    /* renamed from: Q */
    public boolean f293Q;

    /* renamed from: R */
    public AbstractC0098l f294R;

    /* renamed from: S */
    public AbstractC0098l f295S;

    /* renamed from: T */
    public boolean f296T;

    /* renamed from: U */
    public int f297U;

    /* renamed from: V */
    public final Runnable f298V;

    /* renamed from: W */
    public boolean f299W;

    /* renamed from: Z */
    public Rect f300Z;

    /* renamed from: a0 */
    public Rect f301a0;

    /* renamed from: b0 */
    public C0590e f302b0;

    /* renamed from: d */
    public final Object f303d;

    /* renamed from: e */
    public final Context f304e;

    /* renamed from: f */
    public Window f305f;

    /* renamed from: g */
    public C0096j f306g;

    /* renamed from: h */
    public final AbstractC0586b f307h;

    /* renamed from: i */
    public ActionBar f308i;

    /* renamed from: j */
    public MenuInflater f309j;

    /* renamed from: k */
    public CharSequence f310k;

    /* renamed from: l */
    public AbstractC0714n f311l;

    /* renamed from: m */
    public C0093h f312m;

    /* renamed from: n */
    public C0106s f313n;

    /* renamed from: o */
    public AbstractC0622b f314o;

    /* renamed from: p */
    public ActionBarContextView f315p;

    /* renamed from: q */
    public PopupWindow f316q;

    /* renamed from: r */
    public Runnable f317r;

    /* renamed from: s */
    public C1017y f318s;

    /* renamed from: t */
    public boolean f319t;

    /* renamed from: u */
    public boolean f320u;

    /* renamed from: v */
    public ViewGroup f321v;

    /* renamed from: w */
    public TextView f322w;

    /* renamed from: x */
    public View f323x;

    /* renamed from: y */
    public boolean f324y;

    /* renamed from: z */
    public boolean f325z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState.class */
    public static final class PanelFeatureState {

        /* renamed from: a */
        public int f326a;

        /* renamed from: b */
        public int f327b;

        /* renamed from: c */
        public int f328c;

        /* renamed from: d */
        public int f329d;

        /* renamed from: e */
        public int f330e;

        /* renamed from: f */
        public int f331f;

        /* renamed from: g */
        public ViewGroup f332g;

        /* renamed from: h */
        public View f333h;

        /* renamed from: i */
        public View f334i;

        /* renamed from: j */
        public C0647g f335j;

        /* renamed from: k */
        public C0644e f336k;

        /* renamed from: l */
        public Context f337l;

        /* renamed from: m */
        public boolean f338m;

        /* renamed from: n */
        public boolean f339n;

        /* renamed from: o */
        public boolean f340o;

        /* renamed from: p */
        public boolean f341p;

        /* renamed from: q */
        public boolean f342q = false;

        /* renamed from: r */
        public boolean f343r;

        /* renamed from: s */
        public Bundle f344s;

        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState.class */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new C0084a();

            /* renamed from: a */
            public int f345a;

            /* renamed from: b */
            public boolean f346b;

            /* renamed from: c */
            public Bundle f347c;

            /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$a */
            /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$a.class */
            public class C0084a implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.m39107a(parcel, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.m39107a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }

            /* renamed from: a */
            public static SavedState m39107a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f345a = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.f346b = z;
                if (z) {
                    savedState.f347c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f345a);
                parcel.writeInt(this.f346b ? 1 : 0);
                if (this.f346b) {
                    parcel.writeBundle(this.f347c);
                }
            }
        }

        public PanelFeatureState(int i) {
            this.f326a = i;
        }

        /* renamed from: a */
        public AbstractC0664n m39108a(AbstractC0662m.AbstractC0663a aVar) {
            if (this.f335j == null) {
                return null;
            }
            if (this.f336k == null) {
                C0644e eVar = new C0644e(this.f337l, C0580g.abc_list_menu_item_layout);
                this.f336k = eVar;
                eVar.mo36511a(aVar);
                this.f335j.m36610a(this.f336k);
            }
            return this.f336k.m36629a(this.f332g);
        }

        /* renamed from: a */
        public void m39110a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0574a.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.resolveAttribute(C0574a.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            } else {
                newTheme.applyStyle(C0582i.Theme_AppCompat_CompactMenu, true);
            }
            C0625d dVar = new C0625d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.f337l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(C0583j.AppCompatTheme);
            this.f327b = obtainStyledAttributes.getResourceId(C0583j.AppCompatTheme_panelBackground, 0);
            this.f331f = obtainStyledAttributes.getResourceId(C0583j.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public void m39109a(C0647g gVar) {
            C0644e eVar;
            C0647g gVar2 = this.f335j;
            if (gVar != gVar2) {
                if (gVar2 != null) {
                    gVar2.m36600b(this.f336k);
                }
                this.f335j = gVar;
                if (gVar != null && (eVar = this.f336k) != null) {
                    gVar.m36610a(eVar);
                }
            }
        }

        /* renamed from: a */
        public boolean m39111a() {
            boolean z = false;
            if (this.f333h == null) {
                return false;
            }
            if (this.f334i != null) {
                return true;
            }
            if (this.f336k.m36630a().getCount() > 0) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$a.class */
    public class C0085a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f348a;

        public C0085a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f348a = uncaughtExceptionHandler;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
            if (r0.contains("Drawable") != false) goto L_0x002f;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m39106a(java.lang.Throwable r4) {
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
                if (r0 == 0) goto L_0x0032
                r0 = r4
                java.lang.String r0 = r0.getMessage()
                r4 = r0
                r0 = r6
                r7 = r0
                r0 = r4
                if (r0 == 0) goto L_0x0032
                r0 = r4
                java.lang.String r1 = "drawable"
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L_0x002f
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.String r1 = "Drawable"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0032
            L_0x002f:
                r0 = 1
                r7 = r0
            L_0x0032:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.C0085a.m39106a(java.lang.Throwable):boolean");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (m39106a(th)) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.f348a.uncaughtException(thread, notFoundException);
                return;
            }
            this.f348a.uncaughtException(thread, th);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$b.class */
    public class RunnableC0086b implements Runnable {
        public RunnableC0086b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.f297U & 1) != 0) {
                appCompatDelegateImpl.m39132f(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.f297U & 4096) != 0) {
                appCompatDelegateImpl2.m39132f(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.f296T = false;
            appCompatDelegateImpl3.f297U = 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$c.class */
    public class C0087c implements AbstractC0999r {
        public C0087c() {
        }

        @Override // p012b.p042i.p054p.AbstractC0999r
        /* renamed from: a */
        public C0957c0 mo35259a(View view, C0957c0 c0Var) {
            int g = c0Var.m35408g();
            int a = AppCompatDelegateImpl.this.m39149a(c0Var, (Rect) null);
            C0957c0 c0Var2 = c0Var;
            if (g != a) {
                c0Var2 = c0Var.m35413b(c0Var.m35410e(), a, c0Var.m35409f(), c0Var.m35411d());
            }
            return C1002u.m35227b(view, c0Var2);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$d.class */
    public class C0088d implements AbstractC0720r.AbstractC0721a {
        public C0088d() {
        }

        @Override // p012b.p016b.p026q.AbstractC0720r.AbstractC0721a
        /* renamed from: a */
        public void mo36233a(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.m39149a((C0957c0) null, rect);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$e.class */
    public class C0089e implements ContentFrameLayout.AbstractC0143a {
        public C0089e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0143a
        /* renamed from: a */
        public void mo38987a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.AbstractC0143a
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.m39122p();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f.class */
    public class RunnableC0090f implements Runnable {

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f$a.class */
        public class C0091a extends C0951a0 {
            public C0091a() {
            }

            @Override // p012b.p042i.p054p.AbstractC1021z
            /* renamed from: b */
            public void mo35153b(View view) {
                AppCompatDelegateImpl.this.f315p.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f318s.m35159a((AbstractC1021z) null);
                AppCompatDelegateImpl.this.f318s = null;
            }

            @Override // p012b.p042i.p054p.C0951a0, p012b.p042i.p054p.AbstractC1021z
            /* renamed from: c */
            public void mo35152c(View view) {
                AppCompatDelegateImpl.this.f315p.setVisibility(0);
            }
        }

        public RunnableC0090f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.f316q.showAtLocation(appCompatDelegateImpl.f315p, 55, 0, 0);
            AppCompatDelegateImpl.this.m39121q();
            if (AppCompatDelegateImpl.this.m39170B()) {
                AppCompatDelegateImpl.this.f315p.setAlpha(0.0f);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                C1017y a = C1002u.m35249a(appCompatDelegateImpl2.f315p);
                a.m35164a(1.0f);
                appCompatDelegateImpl2.f318s = a;
                AppCompatDelegateImpl.this.f318s.m35159a(new C0091a());
                return;
            }
            AppCompatDelegateImpl.this.f315p.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f315p.setVisibility(0);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$g.class */
    public class C0092g extends C0951a0 {
        public C0092g() {
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            AppCompatDelegateImpl.this.f315p.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f318s.m35159a((AbstractC1021z) null);
            AppCompatDelegateImpl.this.f318s = null;
        }

        @Override // p012b.p042i.p054p.C0951a0, p012b.p042i.p054p.AbstractC1021z
        /* renamed from: c */
        public void mo35152c(View view) {
            AppCompatDelegateImpl.this.f315p.setVisibility(0);
            AppCompatDelegateImpl.this.f315p.sendAccessibilityEvent(32);
            if (AppCompatDelegateImpl.this.f315p.getParent() instanceof View) {
                C1002u.m35253D((View) AppCompatDelegateImpl.this.f315p.getParent());
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$h.class */
    public final class C0093h implements AbstractC0662m.AbstractC0663a {
        public C0093h() {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public void mo36521a(C0647g gVar, boolean z) {
            AppCompatDelegateImpl.this.m39141b(gVar);
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public boolean mo36522a(C0647g gVar) {
            Window.Callback v = AppCompatDelegateImpl.this.m39116v();
            if (v == null) {
                return true;
            }
            v.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i.class */
    public class C0094i implements AbstractC0622b.AbstractC0623a {

        /* renamed from: a */
        public AbstractC0622b.AbstractC0623a f357a;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$i$a.class */
        public class C0095a extends C0951a0 {
            public C0095a() {
            }

            @Override // p012b.p042i.p054p.AbstractC1021z
            /* renamed from: b */
            public void mo35153b(View view) {
                AppCompatDelegateImpl.this.f315p.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f316q;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f315p.getParent() instanceof View) {
                    C1002u.m35253D((View) AppCompatDelegateImpl.this.f315p.getParent());
                }
                AppCompatDelegateImpl.this.f315p.removeAllViews();
                AppCompatDelegateImpl.this.f318s.m35159a((AbstractC1021z) null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f318s = null;
                C1002u.m35253D(appCompatDelegateImpl2.f321v);
            }
        }

        public C0094i(AbstractC0622b.AbstractC0623a aVar) {
            this.f357a = aVar;
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: a */
        public void mo36680a(AbstractC0622b bVar) {
            this.f357a.mo36680a(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f316q != null) {
                appCompatDelegateImpl.f305f.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f317r);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f315p != null) {
                appCompatDelegateImpl2.m39121q();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                C1017y a = C1002u.m35249a(appCompatDelegateImpl3.f315p);
                a.m35164a(0.0f);
                appCompatDelegateImpl3.f318s = a;
                AppCompatDelegateImpl.this.f318s.m35159a(new C0095a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AbstractC0586b bVar2 = appCompatDelegateImpl4.f307h;
            if (bVar2 != null) {
                bVar2.mo36851b(appCompatDelegateImpl4.f314o);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f314o = null;
            C1002u.m35253D(appCompatDelegateImpl5.f321v);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: a */
        public boolean mo36679a(AbstractC0622b bVar, Menu menu) {
            return this.f357a.mo36679a(bVar, menu);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: a */
        public boolean mo36678a(AbstractC0622b bVar, MenuItem menuItem) {
            return this.f357a.mo36678a(bVar, menuItem);
        }

        @Override // p012b.p016b.p024p.AbstractC0622b.AbstractC0623a
        /* renamed from: b */
        public boolean mo36676b(AbstractC0622b bVar, Menu menu) {
            C1002u.m35253D(AppCompatDelegateImpl.this.f321v);
            return this.f357a.mo36676b(bVar, menu);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$j.class */
    public class C0096j extends Window$CallbackC0634i {
        public C0096j(Window.Callback callback) {
            super(callback);
        }

        /* renamed from: a */
        public final ActionMode m39105a(ActionMode.Callback callback) {
            C0627f.C0628a aVar = new C0627f.C0628a(AppCompatDelegateImpl.this.f304e, callback);
            AbstractC0622b a = AppCompatDelegateImpl.this.m39150a(aVar);
            if (a != null) {
                return aVar.m36677b(a);
            }
            return null;
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m39160a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m39139c(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0647g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.m39130h(i);
            return true;
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.m39129i(i);
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0647g gVar = menu instanceof C0647g ? (C0647g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.m36592d(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.m36592d(false);
            }
            return onPreparePanel;
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0647g gVar;
            PanelFeatureState a = AppCompatDelegateImpl.this.m39165a(0, true);
            if (a == null || (gVar = a.f335j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, gVar, i);
            }
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.m39113y() ? m39105a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // p012b.p016b.p024p.Window$CallbackC0634i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (!AppCompatDelegateImpl.this.m39113y() || i != 0) ? super.onWindowStartingActionMode(callback, i) : m39105a(callback);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$k */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$k.class */
    public class C0097k extends AbstractC0098l {

        /* renamed from: c */
        public final PowerManager f361c;

        public C0097k(Context context) {
            super();
            this.f361c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0098l
        /* renamed from: b */
        public IntentFilter mo39102b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0098l
        /* renamed from: c */
        public int mo39101c() {
            int i = 1;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 1;
                if (this.f361c.isPowerSaveMode()) {
                    i = 2;
                }
            }
            return i;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0098l
        /* renamed from: d */
        public void mo39100d() {
            AppCompatDelegateImpl.this.m39127k();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$l */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$l.class */
    public abstract class AbstractC0098l {

        /* renamed from: a */
        public BroadcastReceiver f363a;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$l$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$l$a.class */
        public class C0099a extends BroadcastReceiver {
            public C0099a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                AbstractC0098l.this.mo39100d();
            }
        }

        public AbstractC0098l() {
        }

        /* renamed from: a */
        public void m39104a() {
            BroadcastReceiver broadcastReceiver = this.f363a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f304e.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException e) {
                }
                this.f363a = null;
            }
        }

        /* renamed from: b */
        public abstract IntentFilter mo39102b();

        /* renamed from: c */
        public abstract int mo39101c();

        /* renamed from: d */
        public abstract void mo39100d();

        /* renamed from: e */
        public void m39103e() {
            m39104a();
            IntentFilter b = mo39102b();
            if (b != null && b.countActions() != 0) {
                if (this.f363a == null) {
                    this.f363a = new C0099a();
                }
                AppCompatDelegateImpl.this.f304e.registerReceiver(this.f363a, b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$m */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$m.class */
    public class C0100m extends AbstractC0098l {

        /* renamed from: c */
        public final C0594h f366c;

        public C0100m(C0594h hVar) {
            super();
            this.f366c = hVar;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0098l
        /* renamed from: b */
        public IntentFilter mo39102b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0098l
        /* renamed from: c */
        public int mo39101c() {
            return this.f366c.m36817b() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0098l
        /* renamed from: d */
        public void mo39100d() {
            AppCompatDelegateImpl.this.m39127k();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$n */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$n.class */
    public static class C0101n {
        /* renamed from: a */
        public static void m39099a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$o */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$o.class */
    public static class C0102o {
        /* renamed from: a */
        public static void m39098a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$p */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$p.class */
    public static class C0103p {
        /* renamed from: a */
        public static void m39097a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
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

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$q */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$q.class */
    public static class C0104q {
        /* renamed from: a */
        public static void m39096a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$r */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$r.class */
    public class C0105r extends ContentFrameLayout {
        public C0105r(Context context) {
            super(context);
        }

        /* renamed from: a */
        public final boolean m39095a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m39160a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m39095a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.m39134e(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C0601a.m36777c(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$s */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$s.class */
    public final class C0106s implements AbstractC0662m.AbstractC0663a {
        public C0106s() {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public void mo36521a(C0647g gVar, boolean z) {
            C0647g m = gVar.mo36496m();
            boolean z2 = m != gVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                gVar = m;
            }
            PanelFeatureState a = appCompatDelegateImpl.m39159a((Menu) gVar);
            if (a == null) {
                return;
            }
            if (z2) {
                AppCompatDelegateImpl.this.m39166a(a.f326a, a, m);
                AppCompatDelegateImpl.this.m39151a(a, true);
                return;
            }
            AppCompatDelegateImpl.this.m39151a(a, z);
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public boolean mo36522a(C0647g gVar) {
            Window.Callback v;
            if (gVar != gVar.mo36496m()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.f277A || (v = appCompatDelegateImpl.m39116v()) == null || AppCompatDelegateImpl.this.f289M) {
                return true;
            }
            v.onMenuOpened(108, gVar);
            return true;
        }
    }

    static {
        boolean z = false;
        f272d0 = Build.VERSION.SDK_INT < 21;
        f273e0 = new int[]{16842836};
        f274f0 = !"robolectric".equals(Build.FINGERPRINT);
        if (Build.VERSION.SDK_INT >= 17) {
            z = true;
        }
        f275g0 = z;
        if (f272d0 && !f276h0) {
            Thread.setDefaultUncaughtExceptionHandler(new C0085a(Thread.getDefaultUncaughtExceptionHandler()));
            f276h0 = true;
        }
    }

    public AppCompatDelegateImpl(Activity activity, AbstractC0586b bVar) {
        this(activity, null, bVar, activity);
    }

    public AppCompatDelegateImpl(Dialog dialog, AbstractC0586b bVar) {
        this(dialog.getContext(), dialog.getWindow(), bVar, dialog);
    }

    public AppCompatDelegateImpl(Context context, Window window, AbstractC0586b bVar, Object obj) {
        Integer num;
        AppCompatActivity D;
        this.f318s = null;
        this.f319t = true;
        this.f290N = -100;
        this.f298V = new RunnableC0086b();
        this.f304e = context;
        this.f307h = bVar;
        this.f303d = obj;
        if (this.f290N == -100 && (obj instanceof Dialog) && (D = m39168D()) != null) {
            this.f290N = D.m39175k().mo36886a();
        }
        if (this.f290N == -100 && (num = f271c0.get(this.f303d.getClass().getName())) != null) {
            this.f290N = num.intValue();
            f271c0.remove(this.f303d.getClass().getName());
        }
        if (window != null) {
            m39155a(window);
        }
        C0689f.m36430c();
    }

    /* renamed from: a */
    public static Configuration m39161a(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (!(configuration2 == null || configuration.diff(configuration2) == 0)) {
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
            if (Build.VERSION.SDK_INT >= 24) {
                C0102o.m39098a(configuration, configuration2, configuration3);
            } else if (!C0943c.m35448a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i5 = configuration.touchscreen;
            int i6 = configuration2.touchscreen;
            if (i5 != i6) {
                configuration3.touchscreen = i6;
            }
            int i7 = configuration.keyboard;
            int i8 = configuration2.keyboard;
            if (i7 != i8) {
                configuration3.keyboard = i8;
            }
            int i9 = configuration.keyboardHidden;
            int i10 = configuration2.keyboardHidden;
            if (i9 != i10) {
                configuration3.keyboardHidden = i10;
            }
            int i11 = configuration.navigation;
            int i12 = configuration2.navigation;
            if (i11 != i12) {
                configuration3.navigation = i12;
            }
            int i13 = configuration.navigationHidden;
            int i14 = configuration2.navigationHidden;
            if (i13 != i14) {
                configuration3.navigationHidden = i14;
            }
            int i15 = configuration.orientation;
            int i16 = configuration2.orientation;
            if (i15 != i16) {
                configuration3.orientation = i16;
            }
            int i17 = configuration.screenLayout;
            int i18 = configuration2.screenLayout;
            if ((i17 & 15) != (i18 & 15)) {
                configuration3.screenLayout |= i18 & 15;
            }
            int i19 = configuration.screenLayout;
            int i20 = configuration2.screenLayout;
            if ((i19 & 192) != (i20 & 192)) {
                configuration3.screenLayout |= i20 & 192;
            }
            int i21 = configuration.screenLayout;
            int i22 = configuration2.screenLayout;
            if ((i21 & 48) != (i22 & 48)) {
                configuration3.screenLayout |= i22 & 48;
            }
            int i23 = configuration.screenLayout;
            int i24 = configuration2.screenLayout;
            if ((i23 & 768) != (i24 & 768)) {
                configuration3.screenLayout |= i24 & 768;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                C0103p.m39097a(configuration, configuration2, configuration3);
            }
            int i25 = configuration.uiMode;
            int i26 = configuration2.uiMode;
            if ((i25 & 15) != (i26 & 15)) {
                configuration3.uiMode |= i26 & 15;
            }
            int i27 = configuration.uiMode;
            int i28 = configuration2.uiMode;
            if ((i27 & 48) != (i28 & 48)) {
                configuration3.uiMode |= i28 & 48;
            }
            int i29 = configuration.screenWidthDp;
            int i30 = configuration2.screenWidthDp;
            if (i29 != i30) {
                configuration3.screenWidthDp = i30;
            }
            int i31 = configuration.screenHeightDp;
            int i32 = configuration2.screenHeightDp;
            if (i31 != i32) {
                configuration3.screenHeightDp = i32;
            }
            int i33 = configuration.smallestScreenWidthDp;
            int i34 = configuration2.smallestScreenWidthDp;
            if (i33 != i34) {
                configuration3.smallestScreenWidthDp = i34;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                C0101n.m39099a(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    /* renamed from: A */
    public final ActionBar m39171A() {
        return this.f308i;
    }

    /* renamed from: B */
    public final boolean m39170B() {
        ViewGroup viewGroup;
        return this.f320u && (viewGroup = this.f321v) != null && C1002u.m35196z(viewGroup);
    }

    /* renamed from: C */
    public final void m39169C() {
        if (this.f320u) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* renamed from: D */
    public final AppCompatActivity m39168D() {
        for (Context context = this.f304e; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
        }
        return null;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public int mo36886a() {
        return this.f290N;
    }

    /* renamed from: a */
    public int m39163a(Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i != 0) {
                if (!(i == 1 || i == 2)) {
                    if (i == 3) {
                        return m39138c(context).mo39101c();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService(UiModeManager.class)).getNightMode() != 0) {
                return m39135d(context).mo39101c();
            } else {
                return -1;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final int m39149a(C0957c0 c0Var, Rect rect) {
        int i;
        boolean z;
        boolean z2;
        int i2 = 0;
        int g = c0Var != null ? c0Var.m35408g() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f315p;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
            i = g;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f315p.getLayoutParams();
            boolean z3 = true;
            boolean z4 = true;
            if (this.f315p.isShown()) {
                if (this.f300Z == null) {
                    this.f300Z = new Rect();
                    this.f301a0 = new Rect();
                }
                Rect rect2 = this.f300Z;
                Rect rect3 = this.f301a0;
                if (c0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c0Var.m35410e(), c0Var.m35408g(), c0Var.m35409f(), c0Var.m35411d());
                }
                C0708l0.m36318a(this.f321v, rect2, rect3);
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                C0957c0 r = C1002u.m35204r(this.f321v);
                int e = r == null ? 0 : r.m35410e();
                int f = r == null ? 0 : r.m35409f();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z3 = true;
                }
                if (i3 <= 0 || this.f323x != null) {
                    View view = this.f323x;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (!(marginLayoutParams2.height == marginLayoutParams.topMargin && marginLayoutParams2.leftMargin == e && marginLayoutParams2.rightMargin == f)) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = e;
                            marginLayoutParams2.rightMargin = f;
                            this.f323x.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f304e);
                    this.f323x = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = e;
                    layoutParams.rightMargin = f;
                    this.f321v.addView(this.f323x, -1, layoutParams);
                }
                if (this.f323x == null) {
                    z4 = false;
                }
                if (z4 && this.f323x.getVisibility() != 0) {
                    m39145b(this.f323x);
                }
                g = g;
                if (!this.f279C) {
                    g = g;
                    if (z4) {
                        g = 0;
                    }
                }
                z2 = z4;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z3 = false;
            }
            i = g;
            z = z2;
            if (z3) {
                this.f315p.setLayoutParams(marginLayoutParams);
                i = g;
                z = z2;
            }
        }
        View view3 = this.f323x;
        if (view3 != null) {
            if (!z) {
                i2 = 8;
            }
            view3.setVisibility(i2);
        }
        return i;
    }

    /* renamed from: a */
    public final Configuration m39162a(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public <T extends View> T mo36885a(int i) {
        m39120r();
        return (T) this.f305f.findViewById(i);
    }

    /* renamed from: a */
    public View m39158a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z = false;
        if (this.f302b0 == null) {
            String string = this.f304e.obtainStyledAttributes(C0583j.AppCompatTheme).getString(C0583j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f302b0 = new C0590e();
            } else {
                try {
                    this.f302b0 = (C0590e) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f302b0 = new C0590e();
                }
            }
        }
        if (!f272d0) {
            z = false;
        } else if (!(attributeSet instanceof XmlPullParser)) {
            z = m39156a((ViewParent) view);
        } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
            z = true;
        }
        return this.f302b0.m36844a(view, str, context, attributeSet, z, f272d0, true, C0705k0.m36348b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0.length <= r7) goto L_0x0012;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState m39165a(int r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r0.f283G
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0012
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r7
            if (r0 > r1) goto L_0x002e
        L_0x0012:
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r0]
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0028
            r0 = r9
            r1 = 0
            r2 = r10
            r3 = 0
            r4 = r9
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L_0x0028:
            r0 = r6
            r1 = r10
            r0.f283G = r1
        L_0x002e:
            r0 = r10
            r1 = r7
            r0 = r0[r1]
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r11
            if (r0 != 0) goto L_0x004a
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r9 = r0
            r0 = r10
            r1 = r7
            r2 = r9
            r0[r1] = r2
        L_0x004a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m39165a(int, boolean):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    /* renamed from: a */
    public PanelFeatureState m39159a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f283G;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f335j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC0622b m39150a(AbstractC0622b.AbstractC0623a aVar) {
        AbstractC0586b bVar;
        if (aVar != null) {
            AbstractC0622b bVar2 = this.f314o;
            if (bVar2 != null) {
                bVar2.mo36695a();
            }
            C0094i iVar = new C0094i(aVar);
            ActionBar c = mo36869c();
            if (c != null) {
                AbstractC0622b a = c.mo36809a(iVar);
                this.f314o = a;
                if (!(a == null || (bVar = this.f307h) == null)) {
                    bVar.mo36852a(a);
                }
            }
            if (this.f314o == null) {
                this.f314o = m39142b(iVar);
            }
            return this.f314o;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    /* renamed from: a */
    public void m39166a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        Menu menu2 = menu;
        if (menu == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (i >= 0) {
                    PanelFeatureState[] panelFeatureStateArr = this.f283G;
                    panelFeatureState3 = panelFeatureState;
                    if (i < panelFeatureStateArr.length) {
                        panelFeatureState3 = panelFeatureStateArr[i];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            menu2 = menu;
            if (panelFeatureState3 != null) {
                menu2 = panelFeatureState3.f335j;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if ((panelFeatureState2 == null || panelFeatureState2.f340o) && !this.f289M) {
            this.f306g.m36654a().onPanelClosed(i, menu2);
        }
    }

    /* renamed from: a */
    public final void m39164a(int i, boolean z, Configuration configuration) {
        Resources resources = this.f304e.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            C0592f.m36828a(resources);
        }
        int i2 = this.f291O;
        if (i2 != 0) {
            this.f304e.setTheme(i2);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f304e.getTheme().applyStyle(this.f291O, true);
            }
        }
        if (z) {
            Object obj = this.f303d;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof AbstractC1109g) {
                    if (((AbstractC1109g) activity).mo34644a().mo34663a().isAtLeast(Lifecycle.State.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.f288L) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public void mo36881a(Configuration configuration) {
        ActionBar c;
        if (this.f277A && this.f320u && (c = mo36869c()) != null) {
            c.mo36811a(configuration);
        }
        C0689f.m36432b().m36436a(this.f304e);
        m39148a(false);
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public void mo36880a(Bundle bundle) {
        this.f286J = true;
        m39148a(false);
        m39119s();
        Object obj = this.f303d;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = C0855f.m35771b((Activity) obj);
            } catch (IllegalArgumentException e) {
            }
            if (str != null) {
                ActionBar A = m39171A();
                if (A == null) {
                    this.f299W = true;
                } else {
                    A.mo36801c(true);
                }
            }
            AbstractC0587c.m36877a(this);
        }
        this.f287K = true;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public void mo36879a(View view) {
        m39120r();
        ViewGroup viewGroup = (ViewGroup) this.f321v.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f306g.m36654a().onContentChanged();
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public void mo36878a(View view, ViewGroup.LayoutParams layoutParams) {
        m39120r();
        ((ViewGroup) this.f321v.findViewById(16908290)).addView(view, layoutParams);
        this.f306g.m36654a().onContentChanged();
    }

    /* renamed from: a */
    public void m39157a(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public final void m39155a(Window window) {
        if (this.f305f == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof C0096j)) {
                C0096j jVar = new C0096j(callback);
                this.f306g = jVar;
                window.setCallback(jVar);
                C0691f0 a = C0691f0.m36415a(this.f304e, (AttributeSet) null, f273e0);
                Drawable c = a.m36410c(0);
                if (c != null) {
                    window.setBackgroundDrawable(c);
                }
                a.m36413b();
                this.f305f = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* renamed from: a */
    public final void m39152a(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        if (!panelFeatureState.f340o && !this.f289M) {
            if (panelFeatureState.f326a == 0) {
                if ((this.f304e.getResources().getConfiguration().screenLayout & 15) == 4) {
                    return;
                }
            }
            Window.Callback v = m39116v();
            if (v == null || v.onMenuOpened(panelFeatureState.f326a, panelFeatureState.f335j)) {
                WindowManager windowManager = (WindowManager) this.f304e.getSystemService("window");
                if (windowManager != null && m39143b(panelFeatureState, keyEvent)) {
                    if (panelFeatureState.f332g == null || panelFeatureState.f342q) {
                        ViewGroup viewGroup = panelFeatureState.f332g;
                        if (viewGroup == null) {
                            if (!m39144b(panelFeatureState) || panelFeatureState.f332g == null) {
                                return;
                            }
                        } else if (panelFeatureState.f342q && viewGroup.getChildCount() > 0) {
                            panelFeatureState.f332g.removeAllViews();
                        }
                        if (!m39154a(panelFeatureState) || !panelFeatureState.m39111a()) {
                            panelFeatureState.f342q = true;
                            return;
                        }
                        ViewGroup.LayoutParams layoutParams2 = panelFeatureState.f333h.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                        if (layoutParams2 == null) {
                            layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                        }
                        panelFeatureState.f332g.setBackgroundResource(panelFeatureState.f327b);
                        ViewParent parent = panelFeatureState.f333h.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(panelFeatureState.f333h);
                        }
                        panelFeatureState.f332g.addView(panelFeatureState.f333h, layoutParams3);
                        if (!panelFeatureState.f333h.hasFocus()) {
                            panelFeatureState.f333h.requestFocus();
                        }
                    } else {
                        View view = panelFeatureState.f334i;
                        if (!(view == null || (layoutParams = view.getLayoutParams()) == null || layoutParams.width != -1)) {
                            i = -1;
                            panelFeatureState.f339n = false;
                            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f329d, panelFeatureState.f330e, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 8519680, -3);
                            layoutParams4.gravity = panelFeatureState.f328c;
                            layoutParams4.windowAnimations = panelFeatureState.f331f;
                            windowManager.addView(panelFeatureState.f332g, layoutParams4);
                            panelFeatureState.f340o = true;
                            return;
                        }
                    }
                    i = -2;
                    panelFeatureState.f339n = false;
                    WindowManager.LayoutParams layoutParams42 = new WindowManager.LayoutParams(i, -2, panelFeatureState.f329d, panelFeatureState.f330e, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, 8519680, -3);
                    layoutParams42.gravity = panelFeatureState.f328c;
                    layoutParams42.windowAnimations = panelFeatureState.f331f;
                    windowManager.addView(panelFeatureState.f332g, layoutParams42);
                    panelFeatureState.f340o = true;
                    return;
                }
                return;
            }
            m39151a(panelFeatureState, true);
        }
    }

    /* renamed from: a */
    public void m39151a(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        AbstractC0714n nVar;
        if (!z || panelFeatureState.f326a != 0 || (nVar = this.f311l) == null || !nVar.mo36282a()) {
            WindowManager windowManager = (WindowManager) this.f304e.getSystemService("window");
            if (!(windowManager == null || !panelFeatureState.f340o || (viewGroup = panelFeatureState.f332g) == null)) {
                windowManager.removeView(viewGroup);
                if (z) {
                    m39166a(panelFeatureState.f326a, panelFeatureState, (Menu) null);
                }
            }
            panelFeatureState.f338m = false;
            panelFeatureState.f339n = false;
            panelFeatureState.f340o = false;
            panelFeatureState.f333h = null;
            panelFeatureState.f342q = true;
            if (this.f284H == panelFeatureState) {
                this.f284H = null;
                return;
            }
            return;
        }
        m39141b(panelFeatureState.f335j);
    }

    @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
    /* renamed from: a */
    public void mo36577a(C0647g gVar) {
        m39140b(true);
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: a */
    public final void mo36876a(CharSequence charSequence) {
        this.f310k = charSequence;
        AbstractC0714n nVar = this.f311l;
        if (nVar != null) {
            nVar.setWindowTitle(charSequence);
        } else if (m39171A() != null) {
            m39171A().mo36808a(charSequence);
        } else {
            TextView textView = this.f322w;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    /* renamed from: a */
    public boolean m39167a(int i, KeyEvent keyEvent) {
        boolean z = true;
        if (i == 4) {
            if ((keyEvent.getFlags() & 128) == 0) {
                z = false;
            }
            this.f285I = z;
            return false;
        } else if (i != 82) {
            return false;
        } else {
            m39147b(0, keyEvent);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m39160a(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f303d;
        boolean z = true;
        if (((obj instanceof C0985e.AbstractC0986a) || (obj instanceof DialogC0588d)) && (decorView = this.f305f.getDecorView()) != null && C0985e.m35303a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f306g.m36654a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) {
            z = false;
        }
        return z ? m39167a(keyCode, keyEvent) : m39136d(keyCode, keyEvent);
    }

    /* renamed from: a */
    public final boolean m39156a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f305f.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C1002u.m35197y((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m39154a(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f334i;
        boolean z = true;
        if (view != null) {
            panelFeatureState.f333h = view;
            return true;
        } else if (panelFeatureState.f335j == null) {
            return false;
        } else {
            if (this.f313n == null) {
                this.f313n = new C0106s();
            }
            View view2 = (View) panelFeatureState.m39108a(this.f313n);
            panelFeatureState.f333h = view2;
            if (view2 == null) {
                z = false;
            }
            return z;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (m39143b(r6, r8) != false) goto L_0x0024;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m39153a(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6, int r7, android.view.KeyEvent r8, int r9) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0.isSystem()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            r0 = r6
            boolean r0 = r0.f338m
            if (r0 != 0) goto L_0x0024
            r0 = r11
            r10 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m39143b(r1, r2)
            if (r0 == 0) goto L_0x003e
        L_0x0024:
            r0 = r6
            b.b.p.j.g r0 = r0.f335j
            r12 = r0
            r0 = r11
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L_0x003e
            r0 = r12
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = r0.performShortcut(r1, r2, r3)
            r10 = r0
        L_0x003e:
            r0 = r10
            if (r0 == 0) goto L_0x0057
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0057
            r0 = r5
            b.b.q.n r0 = r0.f311l
            if (r0 != 0) goto L_0x0057
            r0 = r5
            r1 = r6
            r2 = 1
            r0.m39151a(r1, r2)
        L_0x0057:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m39153a(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, int, android.view.KeyEvent, int):boolean");
    }

    @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
    /* renamed from: a */
    public boolean mo36576a(C0647g gVar, MenuItem menuItem) {
        PanelFeatureState a;
        Window.Callback v = m39116v();
        if (v == null || this.f289M || (a = m39159a((Menu) gVar.mo36496m())) == null) {
            return false;
        }
        return v.onMenuItemSelected(a.f326a, menuItem);
    }

    /* renamed from: a */
    public final boolean m39148a(boolean z) {
        if (this.f289M) {
            return false;
        }
        int m = m39125m();
        boolean b = m39146b(m39163a(this.f304e, m), z);
        if (m == 0) {
            m39135d(this.f304e).m39103e();
        } else {
            AbstractC0098l lVar = this.f294R;
            if (lVar != null) {
                lVar.m39104a();
            }
        }
        if (m == 3) {
            m39138c(this.f304e).m39103e();
        } else {
            AbstractC0098l lVar2 = this.f295S;
            if (lVar2 != null) {
                lVar2.m39104a();
            }
        }
        return b;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: b */
    public Context mo36873b(Context context) {
        boolean z = true;
        this.f286J = true;
        int a = m39163a(context, m39125m());
        Configuration configuration = null;
        if (f275g0 && (context instanceof ContextThemeWrapper)) {
            try {
                C0104q.m39096a((ContextThemeWrapper) context, m39162a(context, a, (Configuration) null));
                return context;
            } catch (IllegalStateException e) {
            }
        }
        if (context instanceof C0625d) {
            try {
                ((C0625d) context).m36699a(m39162a(context, a, (Configuration) null));
                return context;
            } catch (IllegalStateException e2) {
            }
        }
        if (!f274f0) {
            super.mo36873b(context);
            return context;
        }
        try {
            Configuration configuration2 = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            if (!configuration2.equals(configuration3)) {
                configuration = m39161a(configuration2, configuration3);
            }
            Configuration a2 = m39162a(context, a, configuration);
            C0625d dVar = new C0625d(context, C0582i.Theme_AppCompat_Empty);
            dVar.m36699a(a2);
            z = false;
            try {
                if (context.getTheme() == null) {
                    z = false;
                }
            } catch (NullPointerException e3) {
            }
            if (z) {
                C0882f.C0886b.m35629a(dVar.getTheme());
            }
            super.mo36873b(dVar);
            return dVar;
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException("Application failed to obtain resources from itself", e4);
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: b */
    public MenuInflater mo36875b() {
        if (this.f309j == null) {
            m39115w();
            ActionBar actionBar = this.f308i;
            this.f309j = new C0629g(actionBar != null ? actionBar.mo36793h() : this.f304e);
        }
        return this.f309j;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p012b.p016b.p024p.AbstractC0622b m39142b(p012b.p016b.p024p.AbstractC0622b.AbstractC0623a r8) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m39142b(b.b.p.b$a):b.b.p.b");
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: b */
    public void mo36872b(Bundle bundle) {
        m39120r();
    }

    /* renamed from: b */
    public final void m39145b(View view) {
        view.setBackgroundColor((C1002u.m35202t(view) & 8192) != 0 ? C0869a.m35693a(this.f304e, C0576c.abc_decor_view_status_guard_light) : C0869a.m35693a(this.f304e, C0576c.abc_decor_view_status_guard));
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: b */
    public void mo36871b(View view, ViewGroup.LayoutParams layoutParams) {
        m39120r();
        ViewGroup viewGroup = (ViewGroup) this.f321v.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f306g.m36654a().onContentChanged();
    }

    /* renamed from: b */
    public void m39141b(C0647g gVar) {
        if (!this.f282F) {
            this.f282F = true;
            this.f311l.mo36274g();
            Window.Callback v = m39116v();
            if (v != null && !this.f289M) {
                v.onPanelClosed(108, gVar);
            }
            this.f282F = false;
        }
    }

    /* renamed from: b */
    public final void m39140b(boolean z) {
        AbstractC0714n nVar = this.f311l;
        if (nVar == null || !nVar.mo36278c() || (ViewConfiguration.get(this.f304e).hasPermanentMenuKey() && !this.f311l.mo36277d())) {
            PanelFeatureState a = m39165a(0, true);
            a.f342q = true;
            m39151a(a, false);
            m39152a(a, (KeyEvent) null);
            return;
        }
        Window.Callback v = m39116v();
        if (this.f311l.mo36282a() && z) {
            this.f311l.mo36276e();
            if (!this.f289M) {
                v.onPanelClosed(108, m39165a(0, true).f335j);
            }
        } else if (v != null && !this.f289M) {
            if (this.f296T && (this.f297U & 1) != 0) {
                this.f305f.getDecorView().removeCallbacks(this.f298V);
                this.f298V.run();
            }
            PanelFeatureState a2 = m39165a(0, true);
            C0647g gVar = a2.f335j;
            if (gVar != null && !a2.f343r && v.onPreparePanel(0, a2.f334i, gVar)) {
                v.onMenuOpened(108, a2.f335j);
                this.f311l.mo36275f();
            }
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: b */
    public boolean mo36874b(int i) {
        int j = m39128j(i);
        if (this.f281E && j == 108) {
            return false;
        }
        if (this.f277A && j == 1) {
            this.f277A = false;
        }
        if (j == 1) {
            m39169C();
            this.f281E = true;
            return true;
        } else if (j == 2) {
            m39169C();
            this.f324y = true;
            return true;
        } else if (j == 5) {
            m39169C();
            this.f325z = true;
            return true;
        } else if (j == 10) {
            m39169C();
            this.f279C = true;
            return true;
        } else if (j == 108) {
            m39169C();
            this.f277A = true;
            return true;
        } else if (j != 109) {
            return this.f305f.requestFeature(j);
        } else {
            m39169C();
            this.f278B = true;
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m39147b(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState a = m39165a(i, true);
        if (!a.f340o) {
            return m39143b(a, keyEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m39146b(int r6, boolean r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.f304e
            r2 = r6
            r3 = 0
            android.content.res.Configuration r0 = r0.m39162a(r1, r2, r3)
            r8 = r0
            r0 = r5
            boolean r0 = r0.m39114x()
            r9 = r0
            r0 = r5
            android.content.Context r0 = r0.f304e
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
            if (r0 == r1) goto L_0x0078
            r0 = r7
            if (r0 == 0) goto L_0x0078
            r0 = r9
            if (r0 != 0) goto L_0x0078
            r0 = r5
            boolean r0 = r0.f286J
            if (r0 == 0) goto L_0x0078
            boolean r0 = androidx.appcompat.app.AppCompatDelegateImpl.f274f0
            if (r0 != 0) goto L_0x0053
            r0 = r5
            boolean r0 = r0.f287K
            if (r0 == 0) goto L_0x0078
        L_0x0053:
            r0 = r5
            java.lang.Object r0 = r0.f303d
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0078
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChild()
            if (r0 != 0) goto L_0x0078
            r0 = r5
            java.lang.Object r0 = r0.f303d
            android.app.Activity r0 = (android.app.Activity) r0
            p012b.p042i.p043h.C0838a.m35798b(r0)
            r0 = 1
            r7 = r0
            goto L_0x007a
        L_0x0078:
            r0 = 0
            r7 = r0
        L_0x007a:
            r0 = r7
            if (r0 != 0) goto L_0x0094
            r0 = r10
            r1 = r11
            if (r0 == r1) goto L_0x0094
            r0 = r5
            r1 = r11
            r2 = r9
            r3 = 0
            r0.m39164a(r1, r2, r3)
            r0 = r12
            r7 = r0
            goto L_0x0094
        L_0x0094:
            r0 = r7
            if (r0 == 0) goto L_0x00ac
            r0 = r5
            java.lang.Object r0 = r0.f303d
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto L_0x00ac
            r0 = r8
            androidx.appcompat.app.AppCompatActivity r0 = (androidx.appcompat.app.AppCompatActivity) r0
            r1 = r6
            r0.m39176c(r1)
        L_0x00ac:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m39146b(int, boolean):boolean");
    }

    /* renamed from: b */
    public final boolean m39144b(PanelFeatureState panelFeatureState) {
        panelFeatureState.m39110a(m39118t());
        panelFeatureState.f332g = new C0105r(panelFeatureState.f337l);
        panelFeatureState.f328c = 81;
        return true;
    }

    /* renamed from: b */
    public final boolean m39143b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        AbstractC0714n nVar;
        AbstractC0714n nVar2;
        AbstractC0714n nVar3;
        if (this.f289M) {
            return false;
        }
        if (panelFeatureState.f338m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f284H;
        if (!(panelFeatureState2 == null || panelFeatureState2 == panelFeatureState)) {
            m39151a(panelFeatureState2, false);
        }
        Window.Callback v = m39116v();
        if (v != null) {
            panelFeatureState.f334i = v.onCreatePanelView(panelFeatureState.f326a);
        }
        int i = panelFeatureState.f326a;
        boolean z = i == 0 || i == 108;
        if (z && (nVar3 = this.f311l) != null) {
            nVar3.mo36279b();
        }
        if (panelFeatureState.f334i == null) {
            if (z) {
                m39171A();
            }
            if (panelFeatureState.f335j == null || panelFeatureState.f343r) {
                if (panelFeatureState.f335j == null && (!m39137c(panelFeatureState) || panelFeatureState.f335j == null)) {
                    return false;
                }
                if (z && this.f311l != null) {
                    if (this.f312m == null) {
                        this.f312m = new C0093h();
                    }
                    this.f311l.mo36280a(panelFeatureState.f335j, this.f312m);
                }
                panelFeatureState.f335j.m36578s();
                if (!v.onCreatePanelMenu(panelFeatureState.f326a, panelFeatureState.f335j)) {
                    panelFeatureState.m39109a((C0647g) null);
                    if (!z || (nVar2 = this.f311l) == null) {
                        return false;
                    }
                    nVar2.mo36280a(null, this.f312m);
                    return false;
                }
                panelFeatureState.f343r = false;
            }
            panelFeatureState.f335j.m36578s();
            Bundle bundle = panelFeatureState.f344s;
            if (bundle != null) {
                panelFeatureState.f335j.m36615a(bundle);
                panelFeatureState.f344s = null;
            }
            if (!v.onPreparePanel(0, panelFeatureState.f334i, panelFeatureState.f335j)) {
                if (z && (nVar = this.f311l) != null) {
                    nVar.mo36280a(null, this.f312m);
                }
                panelFeatureState.f335j.m36579r();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f341p = z2;
            panelFeatureState.f335j.setQwertyMode(z2);
            panelFeatureState.f335j.m36579r();
        }
        panelFeatureState.f338m = true;
        panelFeatureState.f339n = false;
        this.f284H = panelFeatureState;
        return true;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: c */
    public ActionBar mo36869c() {
        m39115w();
        return this.f308i;
    }

    /* renamed from: c */
    public final AbstractC0098l m39138c(Context context) {
        if (this.f295S == null) {
            this.f295S = new C0097k(context);
        }
        return this.f295S;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: c */
    public void mo36868c(int i) {
        m39120r();
        ViewGroup viewGroup = (ViewGroup) this.f321v.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f304e).inflate(i, viewGroup);
        this.f306g.m36654a().onContentChanged();
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: c */
    public void mo36867c(Bundle bundle) {
    }

    /* renamed from: c */
    public boolean m39139c(int i, KeyEvent keyEvent) {
        ActionBar c = mo36869c();
        if (c != null && c.mo36812a(i, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.f284H;
        if (panelFeatureState != null && m39153a(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.f284H;
            if (panelFeatureState2 == null) {
                return true;
            }
            panelFeatureState2.f339n = true;
            return true;
        } else if (this.f284H != null) {
            return false;
        } else {
            PanelFeatureState a = m39165a(0, true);
            m39143b(a, keyEvent);
            boolean a2 = m39153a(a, keyEvent.getKeyCode(), keyEvent, 1);
            a.f338m = false;
            return a2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == 108) goto L_0x0017;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m39137c(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r6) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m39137c(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState):boolean");
    }

    /* renamed from: d */
    public final AbstractC0098l m39135d(Context context) {
        if (this.f294R == null) {
            this.f294R = new C0100m(C0594h.m36820a(context));
        }
        return this.f294R;
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: d */
    public void mo36865d() {
        LayoutInflater from = LayoutInflater.from(this.f304e);
        if (from.getFactory() == null) {
            C0987f.m35299b(from, this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: d */
    public void mo36864d(int i) {
        this.f291O = i;
    }

    /* renamed from: d */
    public boolean m39136d(int i, KeyEvent keyEvent) {
        if (i == 4) {
            boolean z = this.f285I;
            this.f285I = false;
            PanelFeatureState a = m39165a(0, false);
            if (a == null || !a.f340o) {
                return m39112z();
            }
            if (z) {
                return true;
            }
            m39151a(a, true);
            return true;
        } else if (i != 82) {
            return false;
        } else {
            m39133e(0, keyEvent);
            return true;
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: e */
    public void mo36863e() {
        ActionBar c = mo36869c();
        if (c == null || !c.m39220i()) {
            m39131g(0);
        }
    }

    /* renamed from: e */
    public void m39134e(int i) {
        m39151a(m39165a(i, true), true);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d5  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m39133e(int r5, android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m39133e(int, android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo36862f() {
        /*
            r4 = this;
            r0 = r4
            java.lang.Object r0 = r0.f303d
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x000e
            r0 = r4
            p012b.p016b.p017k.AbstractC0587c.m36870b(r0)
        L_0x000e:
            r0 = r4
            boolean r0 = r0.f296T
            if (r0 == 0) goto L_0x0024
            r0 = r4
            android.view.Window r0 = r0.f305f
            android.view.View r0 = r0.getDecorView()
            r1 = r4
            java.lang.Runnable r1 = r1.f298V
            boolean r0 = r0.removeCallbacks(r1)
        L_0x0024:
            r0 = r4
            r1 = 0
            r0.f288L = r1
            r0 = r4
            r1 = 1
            r0.f289M = r1
            r0 = r4
            int r0 = r0.f290N
            r1 = -100
            if (r0 == r1) goto L_0x0068
            r0 = r4
            java.lang.Object r0 = r0.f303d
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x0068
            r0 = r5
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L_0x0068
            b.f.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f271c0
            r1 = r4
            java.lang.Object r1 = r1.f303d
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r2 = r4
            int r2 = r2.f290N
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0079
        L_0x0068:
            b.f.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f271c0
            r1 = r4
            java.lang.Object r1 = r1.f303d
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.Object r0 = r0.remove(r1)
        L_0x0079:
            r0 = r4
            androidx.appcompat.app.ActionBar r0 = r0.f308i
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0086
            r0 = r5
            r0.m39219j()
        L_0x0086:
            r0 = r4
            r0.m39124n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.mo36862f():void");
    }

    /* renamed from: f */
    public void m39132f(int i) {
        PanelFeatureState a;
        PanelFeatureState a2 = m39165a(i, true);
        if (a2.f335j != null) {
            Bundle bundle = new Bundle();
            a2.f335j.m36601b(bundle);
            if (bundle.size() > 0) {
                a2.f344s = bundle;
            }
            a2.f335j.m36578s();
            a2.f335j.clear();
        }
        a2.f343r = true;
        a2.f342q = true;
        if ((i == 108 || i == 0) && this.f311l != null && (a = m39165a(0, false)) != null) {
            a.f338m = false;
            m39143b(a, (KeyEvent) null);
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: g */
    public void mo36861g() {
        ActionBar c = mo36869c();
        if (c != null) {
            c.mo36799d(true);
        }
    }

    /* renamed from: g */
    public final void m39131g(int i) {
        this.f297U = (1 << i) | this.f297U;
        if (!this.f296T) {
            C1002u.m35234a(this.f305f.getDecorView(), this.f298V);
            this.f296T = true;
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: h */
    public void mo36860h() {
        this.f288L = true;
        m39127k();
    }

    /* renamed from: h */
    public void m39130h(int i) {
        ActionBar c;
        if (i == 108 && (c = mo36869c()) != null) {
            c.mo36803b(true);
        }
    }

    @Override // p012b.p016b.p017k.AbstractC0587c
    /* renamed from: i */
    public void mo36859i() {
        this.f288L = false;
        ActionBar c = mo36869c();
        if (c != null) {
            c.mo36799d(false);
        }
    }

    /* renamed from: i */
    public void m39129i(int i) {
        if (i == 108) {
            ActionBar c = mo36869c();
            if (c != null) {
                c.mo36803b(false);
            }
        } else if (i == 0) {
            PanelFeatureState a = m39165a(i, true);
            if (a.f340o) {
                m39151a(a, false);
            }
        }
    }

    /* renamed from: j */
    public final int m39128j(int i) {
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

    /* renamed from: k */
    public boolean m39127k() {
        return m39148a(true);
    }

    /* renamed from: l */
    public final void m39126l() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f321v.findViewById(16908290);
        View decorView = this.f305f.getDecorView();
        contentFrameLayout.m38989a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f304e.obtainStyledAttributes(C0583j.AppCompatTheme);
        obtainStyledAttributes.getValue(C0583j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C0583j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0583j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0583j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0583j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0583j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: m */
    public final int m39125m() {
        int i = this.f290N;
        if (i == -100) {
            i = AbstractC0587c.m36858j();
        }
        return i;
    }

    /* renamed from: n */
    public final void m39124n() {
        AbstractC0098l lVar = this.f294R;
        if (lVar != null) {
            lVar.m39104a();
        }
        AbstractC0098l lVar2 = this.f295S;
        if (lVar2 != null) {
            lVar2.m39104a();
        }
    }

    /* renamed from: o */
    public final ViewGroup m39123o() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f304e.obtainStyledAttributes(C0583j.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(C0583j.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(C0583j.AppCompatTheme_windowNoTitle, false)) {
                mo36874b(1);
            } else if (obtainStyledAttributes.getBoolean(C0583j.AppCompatTheme_windowActionBar, false)) {
                mo36874b(108);
            }
            if (obtainStyledAttributes.getBoolean(C0583j.AppCompatTheme_windowActionBarOverlay, false)) {
                mo36874b(109);
            }
            if (obtainStyledAttributes.getBoolean(C0583j.AppCompatTheme_windowActionModeOverlay, false)) {
                mo36874b(10);
            }
            this.f280D = obtainStyledAttributes.getBoolean(C0583j.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            m39119s();
            this.f305f.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f304e);
            if (this.f281E) {
                viewGroup = this.f279C ? (ViewGroup) from.inflate(C0580g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0580g.abc_screen_simple, (ViewGroup) null);
            } else if (this.f280D) {
                viewGroup = (ViewGroup) from.inflate(C0580g.abc_dialog_title_material, (ViewGroup) null);
                this.f278B = false;
                this.f277A = false;
            } else if (this.f277A) {
                TypedValue typedValue = new TypedValue();
                this.f304e.getTheme().resolveAttribute(C0574a.actionBarTheme, typedValue, true);
                ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0625d(this.f304e, typedValue.resourceId) : this.f304e).inflate(C0580g.abc_screen_toolbar, (ViewGroup) null);
                AbstractC0714n nVar = (AbstractC0714n) viewGroup2.findViewById(C0579f.decor_content_parent);
                this.f311l = nVar;
                nVar.setWindowCallback(m39116v());
                if (this.f278B) {
                    this.f311l.mo36281a(109);
                }
                if (this.f324y) {
                    this.f311l.mo36281a(2);
                }
                viewGroup = viewGroup2;
                if (this.f325z) {
                    this.f311l.mo36281a(5);
                    viewGroup = viewGroup2;
                }
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    C1002u.m35235a(viewGroup, new C0087c());
                } else if (viewGroup instanceof AbstractC0720r) {
                    ((AbstractC0720r) viewGroup).setOnFitSystemWindowsListener(new C0088d());
                }
                if (this.f311l == null) {
                    this.f322w = (TextView) viewGroup.findViewById(C0579f.title);
                }
                C0708l0.m36317b(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0579f.action_bar_activity_content);
                ViewGroup viewGroup3 = (ViewGroup) this.f305f.findViewById(16908290);
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
                this.f305f.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new C0089e());
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f277A + ", windowActionBarOverlay: " + this.f278B + ", android:windowIsFloating: " + this.f280D + ", windowActionModeOverlay: " + this.f279C + ", windowNoTitle: " + this.f281E + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m39158a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public void m39122p() {
        C0647g gVar;
        AbstractC0714n nVar = this.f311l;
        if (nVar != null) {
            nVar.mo36274g();
        }
        if (this.f316q != null) {
            this.f305f.getDecorView().removeCallbacks(this.f317r);
            if (this.f316q.isShowing()) {
                try {
                    this.f316q.dismiss();
                } catch (IllegalArgumentException e) {
                }
            }
            this.f316q = null;
        }
        m39121q();
        PanelFeatureState a = m39165a(0, false);
        if (a != null && (gVar = a.f335j) != null) {
            gVar.close();
        }
    }

    /* renamed from: q */
    public void m39121q() {
        C1017y yVar = this.f318s;
        if (yVar != null) {
            yVar.m35165a();
        }
    }

    /* renamed from: r */
    public final void m39120r() {
        if (!this.f320u) {
            this.f321v = m39123o();
            CharSequence u = m39117u();
            if (!TextUtils.isEmpty(u)) {
                AbstractC0714n nVar = this.f311l;
                if (nVar != null) {
                    nVar.setWindowTitle(u);
                } else if (m39171A() != null) {
                    m39171A().mo36808a(u);
                } else {
                    TextView textView = this.f322w;
                    if (textView != null) {
                        textView.setText(u);
                    }
                }
            }
            m39126l();
            m39157a(this.f321v);
            this.f320u = true;
            PanelFeatureState a = m39165a(0, false);
            if (this.f289M) {
                return;
            }
            if (a == null || a.f335j == null) {
                m39131g(108);
            }
        }
    }

    /* renamed from: s */
    public final void m39119s() {
        if (this.f305f == null) {
            Object obj = this.f303d;
            if (obj instanceof Activity) {
                m39155a(((Activity) obj).getWindow());
            }
        }
        if (this.f305f == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* renamed from: t */
    public final Context m39118t() {
        ActionBar c = mo36869c();
        Context h = c != null ? c.mo36793h() : null;
        Context context = h;
        if (h == null) {
            context = this.f304e;
        }
        return context;
    }

    /* renamed from: u */
    public final CharSequence m39117u() {
        Object obj = this.f303d;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f310k;
    }

    /* renamed from: v */
    public final Window.Callback m39116v() {
        return this.f305f.getCallback();
    }

    /* renamed from: w */
    public final void m39115w() {
        m39120r();
        if (this.f277A && this.f308i == null) {
            Object obj = this.f303d;
            if (obj instanceof Activity) {
                this.f308i = new C0596i((Activity) this.f303d, this.f278B);
            } else if (obj instanceof Dialog) {
                this.f308i = new C0596i((Dialog) this.f303d);
            }
            ActionBar actionBar = this.f308i;
            if (actionBar != null) {
                actionBar.mo36801c(this.f299W);
            }
        }
    }

    /* renamed from: x */
    public final boolean m39114x() {
        if (!this.f293Q && (this.f303d instanceof Activity)) {
            PackageManager packageManager = this.f304e.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f304e, this.f303d.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : Build.VERSION.SDK_INT >= 24 ? 786432 : 0);
                this.f292P = (activityInfo == null || (activityInfo.configChanges & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                this.f292P = false;
            }
        }
        this.f293Q = true;
        return this.f292P;
    }

    /* renamed from: y */
    public boolean m39113y() {
        return this.f319t;
    }

    /* renamed from: z */
    public boolean m39112z() {
        AbstractC0622b bVar = this.f314o;
        if (bVar != null) {
            bVar.mo36695a();
            return true;
        }
        ActionBar c = mo36869c();
        return c != null && c.mo36797f();
    }
}
