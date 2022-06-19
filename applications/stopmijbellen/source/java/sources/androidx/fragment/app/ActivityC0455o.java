package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.AbstractC0104c;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.AbstractC0114d;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.C0512c0;
import androidx.lifecycle.C0525k;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;
import p016b1.AbstractC0714a;
import p026c0.C0774a;
/* renamed from: androidx.fragment.app.o */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/o.class */
public class ActivityC0455o extends ComponentActivity implements C0774a.AbstractC0776b, C0774a.AbstractC0777c {

    /* renamed from: j */
    public boolean f1880j;

    /* renamed from: k */
    public boolean f1881k;

    /* renamed from: h */
    public final C0481v f1878h = new C0481v(new C0456a());

    /* renamed from: i */
    public final C0525k f1879i = new C0525k(this);

    /* renamed from: l */
    public boolean f1882l = true;

    /* renamed from: androidx.fragment.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/o$a.class */
    public class C0456a extends AbstractC0492x<ActivityC0455o> implements AbstractC0514d0, AbstractC0104c, AbstractC0114d, AbstractC0427e0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0456a() {
            super(r4);
            ActivityC0455o.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC0427e0
        /* renamed from: a */
        public void mo8092a(AbstractC0397a0 abstractC0397a0, Fragment fragment) {
            Objects.requireNonNull(ActivityC0455o.this);
        }

        @Override // androidx.activity.AbstractC0104c
        /* renamed from: b */
        public OnBackPressedDispatcher mo8091b() {
            return ActivityC0455o.this.f209f;
        }

        @Override // androidx.fragment.app.AbstractC0477t
        /* renamed from: c */
        public View mo8061c(int i) {
            return ActivityC0455o.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0477t
        /* renamed from: d */
        public boolean mo8060d() {
            Window window = ActivityC0455o.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.AbstractC0492x
        /* renamed from: e */
        public ActivityC0455o mo8035e() {
            return ActivityC0455o.this;
        }

        @Override // androidx.fragment.app.AbstractC0492x
        /* renamed from: f */
        public LayoutInflater mo8034f() {
            return ActivityC0455o.this.getLayoutInflater().cloneInContext(ActivityC0455o.this);
        }

        @Override // androidx.fragment.app.AbstractC0492x
        /* renamed from: g */
        public boolean mo8033g(Fragment fragment) {
            return !ActivityC0455o.this.isFinishing();
        }

        @Override // androidx.lifecycle.AbstractC0524j
        public AbstractC0516f getLifecycle() {
            return ActivityC0455o.this.f1879i;
        }

        @Override // androidx.lifecycle.AbstractC0514d0
        public C0512c0 getViewModelStore() {
            return ActivityC0455o.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.AbstractC0492x
        /* renamed from: h */
        public boolean mo8032h(String str) {
            ActivityC0455o activityC0455o = ActivityC0455o.this;
            int i = C0774a.f2893b;
            return Build.VERSION.SDK_INT >= 23 ? activityC0455o.shouldShowRequestPermissionRationale(str) : false;
        }

        @Override // androidx.activity.result.AbstractC0114d
        /* renamed from: i */
        public ActivityResultRegistry mo8090i() {
            return ActivityC0455o.this.f210g;
        }

        @Override // androidx.fragment.app.AbstractC0492x
        /* renamed from: j */
        public void mo8031j() {
            ActivityC0455o.this.mo3367q();
        }
    }

    public ActivityC0455o() {
        this.f207d.f2565b.m7514b("android:support:fragments", new C0451m(this));
        m8743l(new C0453n(this));
    }

    /* renamed from: p */
    public static boolean m8093p(AbstractC0397a0 abstractC0397a0, AbstractC0516f.EnumC0519c enumC0519c) {
        AbstractC0516f.EnumC0519c enumC0519c2 = AbstractC0516f.EnumC0519c.STARTED;
        boolean z = false;
        for (Fragment fragment : abstractC0397a0.f1700c.m8102i()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.getHost() != null) {
                    z2 = z | m8093p(fragment.getChildFragmentManager(), enumC0519c);
                }
                C0480u0 c0480u0 = fragment.mViewLifecycleOwner;
                z = z2;
                if (c0480u0 != null) {
                    c0480u0.m8057c();
                    z = z2;
                    if (c0480u0.f1949b.f2038b.compareTo(enumC0519c2) >= 0) {
                        C0525k c0525k = fragment.mViewLifecycleOwner.f1949b;
                        c0525k.m7989d("setCurrentState");
                        c0525k.m7986g(enumC0519c);
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.f2038b.compareTo(enumC0519c2) >= 0) {
                    C0525k c0525k2 = fragment.mLifecycleRegistry;
                    c0525k2.m7989d("setCurrentState");
                    c0525k2.m7986g(enumC0519c);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p026c0.C0774a.AbstractC0777c
    @Deprecated
    /* renamed from: a */
    public final void mo7382a(int i) {
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
        printWriter.print(this.f1880j);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1881k);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1882l);
        if (getApplication() != null) {
            AbstractC0714a.m7437b(this).mo7436a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f1878h.f1951a.f1984d.m8144y(str, fileDescriptor, printWriter, strArr);
    }

    /* renamed from: o */
    public AbstractC0397a0 m8094o() {
        return this.f1878h.f1951a.f1984d;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f1878h.m8056a();
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f1878h.m8056a();
        super.onConfigurationChanged(configuration);
        this.f1878h.f1951a.f1984d.m8159k(configuration);
    }

    @Override // androidx.activity.ComponentActivity, p026c0.ActivityC0787g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_CREATE);
        this.f1878h.f1951a.f1984d.m8156m();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
            C0481v c0481v = this.f1878h;
            return onCreatePanelMenu | c0481v.f1951a.f1984d.m8155n(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.f1878h.f1951a.f1984d.f1703f.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.f1878h.f1951a.f1984d.f1703f.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f1878h.f1951a.f1984d.m8154o();
        this.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f1878h.f1951a.f1984d.m8153p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f1878h.f1951a.f1984d.m8151r(menuItem);
        }
        if (i == 6) {
            return this.f1878h.f1951a.f1984d.m8157l(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f1878h.f1951a.f1984d.m8152q(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        this.f1878h.m8056a();
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f1878h.f1951a.f1984d.m8150s(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1881k = false;
        this.f1878h.f1951a.f1984d.m8146w(5);
        this.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f1878h.f1951a.f1984d.m8148u(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_RESUME);
        AbstractC0397a0 abstractC0397a0 = this.f1878h.f1951a.f1984d;
        abstractC0397a0.f1688B = false;
        abstractC0397a0.f1689C = false;
        abstractC0397a0.f1696J.f1784h = false;
        abstractC0397a0.m8146w(7);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? super.onPreparePanel(0, view, menu) | this.f1878h.f1951a.f1984d.m8147v(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f1878h.m8056a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.f1878h.m8056a();
        super.onResume();
        this.f1881k = true;
        this.f1878h.f1951a.f1984d.m8203C(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.f1878h.m8056a();
        super.onStart();
        this.f1882l = false;
        if (!this.f1880j) {
            this.f1880j = true;
            AbstractC0397a0 abstractC0397a0 = this.f1878h.f1951a.f1984d;
            abstractC0397a0.f1688B = false;
            abstractC0397a0.f1689C = false;
            abstractC0397a0.f1696J.f1784h = false;
            abstractC0397a0.m8146w(4);
        }
        this.f1878h.f1951a.f1984d.m8203C(true);
        this.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_START);
        AbstractC0397a0 abstractC0397a02 = this.f1878h.f1951a.f1984d;
        abstractC0397a02.f1688B = false;
        abstractC0397a02.f1689C = false;
        abstractC0397a02.f1696J.f1784h = false;
        abstractC0397a02.m8146w(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f1878h.m8056a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f1882l = true;
        do {
        } while (m8093p(m8094o(), AbstractC0516f.EnumC0519c.CREATED));
        AbstractC0397a0 abstractC0397a0 = this.f1878h.f1951a.f1984d;
        abstractC0397a0.f1689C = true;
        abstractC0397a0.f1696J.f1784h = true;
        abstractC0397a0.m8146w(4);
        this.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_STOP);
    }

    @Deprecated
    /* renamed from: q */
    public void mo3367q() {
        invalidateOptionsMenu();
    }
}
