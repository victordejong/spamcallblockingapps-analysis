package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.AbstractC0088c;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.p005d.AbstractC0090b;
import androidx.activity.result.AbstractC0096c;
import androidx.activity.result.AbstractC0100d;
import androidx.core.app.C0548a;
import androidx.lifecycle.AbstractC0819u;
import androidx.lifecycle.C0798i;
import androidx.lifecycle.C0818t;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p020b.p065o.p066a.AbstractC1757a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity.class */
public class FragmentActivity extends ComponentActivity implements C0548a.AbstractC0551c, C0548a.AbstractC0553e {

    /* renamed from: p */
    boolean f3276p;

    /* renamed from: q */
    boolean f3277q;

    /* renamed from: n */
    final C0736f f3274n = C0736f.m32623b(new C0678c());

    /* renamed from: o */
    final C0798i f3275o = new C0798i(this);

    /* renamed from: r */
    boolean f3278r = true;

    /* renamed from: androidx.fragment.app.FragmentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$a.class */
    public class C0676a implements SavedStateRegistry.AbstractC1044b {
        C0676a() {
            FragmentActivity.this = r4;
        }

        @Override // androidx.savedstate.SavedStateRegistry.AbstractC1044b
        /* renamed from: a */
        public Bundle mo31185a() {
            Bundle bundle = new Bundle();
            FragmentActivity.this.m32874D();
            FragmentActivity.this.f3275o.m32391h(Lifecycle.Event.ON_STOP);
            Parcelable m32601x = FragmentActivity.this.f3274n.m32601x();
            if (m32601x != null) {
                bundle.putParcelable("android:support:fragments", m32601x);
            }
            return bundle;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentActivity$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$b.class */
    public class C0677b implements AbstractC0090b {
        C0677b() {
            FragmentActivity.this = r4;
        }

        @Override // androidx.activity.p005d.AbstractC0090b
        /* renamed from: a */
        public void mo32866a(Context context) {
            FragmentActivity.this.f3274n.m32624a(null);
            Bundle m31191a = FragmentActivity.this.mo31180r().m31191a("android:support:fragments");
            if (m31191a != null) {
                FragmentActivity.this.f3274n.m32602w(m31191a.getParcelable("android:support:fragments"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentActivity$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$c.class */
    public class C0678c extends AbstractC0738h<FragmentActivity> implements AbstractC0819u, AbstractC0088c, AbstractC0100d, AbstractC0746m {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0678c() {
            super(r4);
            FragmentActivity.this = r4;
        }

        @Override // androidx.lifecycle.AbstractC0797h
        /* renamed from: a */
        public Lifecycle mo32372a() {
            return FragmentActivity.this.f3275o;
        }

        @Override // androidx.fragment.app.AbstractC0746m
        /* renamed from: b */
        public void mo32560b(FragmentManager fragmentManager, Fragment fragment) {
            FragmentActivity.this.m32872F(fragment);
        }

        @Override // androidx.activity.AbstractC0088c
        /* renamed from: c */
        public OnBackPressedDispatcher mo32865c() {
            return FragmentActivity.this.mo32865c();
        }

        @Override // androidx.fragment.app.AbstractC0738h, androidx.fragment.app.AbstractC0735e
        /* renamed from: e */
        public View mo32596e(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0738h, androidx.fragment.app.AbstractC0735e
        /* renamed from: f */
        public boolean mo32595f() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.AbstractC0100d
        /* renamed from: j */
        public AbstractC0096c mo32864j() {
            return FragmentActivity.this.mo32864j();
        }

        @Override // androidx.fragment.app.AbstractC0738h
        /* renamed from: k */
        public void mo32591k(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.AbstractC0738h
        /* renamed from: m */
        public LayoutInflater mo32589m() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.AbstractC0738h
        /* renamed from: n */
        public boolean mo32588n(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.lifecycle.AbstractC0819u
        /* renamed from: p */
        public C0818t mo32344p() {
            return FragmentActivity.this.mo32344p();
        }

        @Override // androidx.fragment.app.AbstractC0738h
        /* renamed from: q */
        public void mo32586q() {
            FragmentActivity.this.mo32869I();
        }

        /* renamed from: s */
        public FragmentActivity mo32590l() {
            return FragmentActivity.this;
        }
    }

    public FragmentActivity() {
        m32875C();
    }

    /* renamed from: C */
    private void m32875C() {
        mo31180r().m31188d("android:support:fragments", new C0676a());
        m35764v(new C0677b());
    }

    /* renamed from: E */
    private static boolean m32873E(FragmentManager fragmentManager, Lifecycle.State state) {
        boolean z = false;
        for (Fragment fragment : fragmentManager.m32752t0()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.m32974K() != null) {
                    z2 = z | m32873E(fragment.m32999A(), state);
                }
                C0775w c0775w = fragment.f3213X;
                z = z2;
                if (c0775w != null) {
                    z = z2;
                    if (c0775w.mo32372a().mo32397b().isAtLeast(Lifecycle.State.STARTED)) {
                        fragment.f3213X.m32443h(state);
                        z = true;
                    }
                }
                if (fragment.f3212W.mo32397b().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.f3212W.m32384o(state);
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: A */
    public FragmentManager m32877A() {
        return this.f3274n.m32605t();
    }

    @Deprecated
    /* renamed from: B */
    public AbstractC1757a m32876B() {
        return AbstractC1757a.m28969b(this);
    }

    /* renamed from: D */
    void m32874D() {
        do {
        } while (m32873E(m32877A(), Lifecycle.State.CREATED));
    }

    @Deprecated
    /* renamed from: F */
    public void m32872F(Fragment fragment) {
    }

    @Deprecated
    /* renamed from: G */
    protected boolean m32871G(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    /* renamed from: H */
    protected void m32870H() {
        this.f3275o.m32391h(Lifecycle.Event.ON_RESUME);
        this.f3274n.m32609p();
    }

    @Deprecated
    /* renamed from: I */
    public void mo32869I() {
        invalidateOptionsMenu();
    }

    @Override // androidx.core.app.C0548a.AbstractC0553e
    @Deprecated
    /* renamed from: b */
    public final void mo32868b(int i) {
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f3276p);
        printWriter.print(" mResumed=");
        printWriter.print(this.f3277q);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3278r);
        if (getApplication() != null) {
            AbstractC1757a.m28969b(this).mo28968a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f3274n.m32605t().m32817W(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f3274n.m32604u();
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3274n.m32604u();
        this.f3274n.m32621d(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3275o.m32391h(Lifecycle.Event.ON_CREATE);
        this.f3274n.m32619f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.f3274n.m32618g(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View m32867z = m32867z(view, str, context, attributeSet);
        return m32867z == null ? super.onCreateView(view, str, context, attributeSet) : m32867z;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View m32867z = m32867z(null, str, context, attributeSet);
        return m32867z == null ? super.onCreateView(str, context, attributeSet) : m32867z;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f3274n.m32617h();
        this.f3275o.m32391h(Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f3274n.m32616i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f3274n.m32614k(menuItem);
        }
        if (i == 6) {
            return this.f3274n.m32620e(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f3274n.m32615j(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.f3274n.m32604u();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f3274n.m32613l(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f3277q = false;
        this.f3274n.m32612m();
        this.f3275o.m32391h(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f3274n.m32611n(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m32870H();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? m32871G(view, menu) | this.f3274n.m32610o(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f3274n.m32604u();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f3277q = true;
        this.f3274n.m32604u();
        this.f3274n.m32606s();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f3278r = false;
        if (!this.f3276p) {
            this.f3276p = true;
            this.f3274n.m32622c();
        }
        this.f3274n.m32604u();
        this.f3274n.m32606s();
        this.f3275o.m32391h(Lifecycle.Event.ON_START);
        this.f3274n.m32608q();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f3274n.m32604u();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f3278r = true;
        m32874D();
        this.f3274n.m32607r();
        this.f3275o.m32391h(Lifecycle.Event.ON_STOP);
    }

    /* renamed from: z */
    final View m32867z(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3274n.m32603v(view, str, context, attributeSet);
    }
}
