package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.AbstractC0082d;
import androidx.activity.ActivityC0078b;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.C0456a;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0889v;
import androidx.lifecycle.C0870i;
import androidx.lifecycle.C0888u;
import androidx.p013b.C0387h;
import androidx.p037g.p038a.AbstractC0714a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
public class ActivityC0664d extends ActivityC0078b implements C0456a.AbstractC0458a, C0456a.AbstractC0460c {

    /* renamed from: c */
    boolean f2358c;

    /* renamed from: d */
    boolean f2359d;

    /* renamed from: f */
    boolean f2361f;

    /* renamed from: g */
    boolean f2362g;

    /* renamed from: h */
    boolean f2363h;

    /* renamed from: i */
    int f2364i;

    /* renamed from: j */
    C0387h<String> f2365j;

    /* renamed from: a */
    final C0667f f2356a = C0667f.m19861a(new C0665a());

    /* renamed from: b */
    final C0870i f2357b = new C0870i(this);

    /* renamed from: e */
    boolean f2360e = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$a.class */
    public class C0665a extends AbstractC0669h<ActivityC0664d> implements AbstractC0082d, AbstractC0889v {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0665a() {
            super(r4);
            ActivityC0664d.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC0669h, androidx.fragment.app.AbstractC0666e
        /* renamed from: a */
        public View mo19840a(int i) {
            return ActivityC0664d.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: a */
        public void mo19838a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            ActivityC0664d.this.m19883a(fragment, intent, i, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: a */
        public void mo19837a(Fragment fragment, String[] strArr, int i) {
            ActivityC0664d.this.m19882a(fragment, strArr, i);
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: a */
        public void mo19836a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            ActivityC0664d.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.AbstractC0669h, androidx.fragment.app.AbstractC0666e
        /* renamed from: a */
        public boolean mo19841a() {
            Window window = ActivityC0664d.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: a */
        public boolean mo19839a(Fragment fragment) {
            return !ActivityC0664d.this.isFinishing();
        }

        @Override // androidx.lifecycle.AbstractC0869h
        /* renamed from: b */
        public AbstractC0864e mo19203b() {
            return ActivityC0664d.this.f2357b;
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: b */
        public void mo19835b(Fragment fragment) {
            ActivityC0664d.this.m19884a(fragment);
        }

        @Override // androidx.lifecycle.AbstractC0889v
        /* renamed from: c */
        public C0888u mo19167c() {
            return ActivityC0664d.this.mo19167c();
        }

        @Override // androidx.activity.AbstractC0082d
        /* renamed from: d */
        public OnBackPressedDispatcher mo19872d() {
            return ActivityC0664d.this.mo19872d();
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: e */
        public LayoutInflater mo19834e() {
            return ActivityC0664d.this.getLayoutInflater().cloneInContext(ActivityC0664d.this);
        }

        /* renamed from: f */
        public ActivityC0664d mo19830j() {
            return ActivityC0664d.this;
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: g */
        public void mo19833g() {
            ActivityC0664d.this.mo19876g();
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: h */
        public boolean mo19832h() {
            return ActivityC0664d.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.AbstractC0669h
        /* renamed from: i */
        public int mo19831i() {
            Window window = ActivityC0664d.this.getWindow();
            return window == null ? 0 : window.getAttributes().windowAnimations;
        }
    }

    /* renamed from: a */
    private static boolean m19881a(AbstractC0670i abstractC0670i, AbstractC0864e.EnumC0866b enumC0866b) {
        boolean z = false;
        for (Fragment fragment : abstractC0670i.mo19748c()) {
            if (fragment != null) {
                if (fragment.mo19203b().mo19223a().m19224a(AbstractC0864e.EnumC0866b.STARTED)) {
                    fragment.f2281aa.m19215b(enumC0866b);
                    z = true;
                }
                if (fragment.m19920t() != null) {
                    z = m19881a(fragment.m19916x(), enumC0866b) | z;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private int m19879b(Fragment fragment) {
        if (this.f2365j.m21077b() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.f2365j.m21069e(this.f2364i) >= 0) {
            this.f2364i = (this.f2364i + 1) % 65534;
        }
        int i = this.f2364i;
        this.f2365j.m21075b(i, fragment.f2291o);
        this.f2364i = (this.f2364i + 1) % 65534;
        return i;
    }

    /* renamed from: c */
    static void m19878c(int i) {
        if (((-65536) & i) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    /* renamed from: f */
    private void m19877f() {
        do {
        } while (m19881a(m19874m(), AbstractC0864e.EnumC0866b.CREATED));
    }

    /* renamed from: a */
    final View m19885a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2356a.m19863a(view, str, context, attributeSet);
    }

    /* renamed from: a */
    public void m19884a(Fragment fragment) {
    }

    /* renamed from: a */
    public void m19883a(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        this.f2363h = true;
        try {
            if (i == -1) {
                C0456a.m20822a(this, intent, -1, bundle);
                this.f2363h = false;
                return;
            }
            m19878c(i);
            C0456a.m20822a(this, intent, ((m19879b(fragment) + 1) << 16) + (65535 & i), bundle);
        } finally {
            this.f2363h = false;
        }
    }

    /* renamed from: a */
    void m19882a(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            C0456a.m20820a(this, strArr, i);
            return;
        }
        m19878c(i);
        try {
            this.f2361f = true;
            C0456a.m20820a(this, strArr, ((m19879b(fragment) + 1) << 16) + (65535 & i));
        } finally {
            this.f2361f = false;
        }
    }

    @Deprecated
    /* renamed from: a */
    protected boolean m19886a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // androidx.core.app.C0456a.AbstractC0460c
    /* renamed from: a_ */
    public final void mo19880a_(int i) {
        if (this.f2361f || i == -1) {
            return;
        }
        m19878c(i);
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
        printWriter.print(this.f2358c);
        printWriter.print(" mResumed=");
        printWriter.print(this.f2359d);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2360e);
        if (getApplication() != null) {
            AbstractC0714a.m19601a(this).mo19597a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f2356a.m19869a().mo19770a(str, fileDescriptor, printWriter, strArr);
    }

    @Deprecated
    /* renamed from: g */
    public void mo19876g() {
        invalidateOptionsMenu();
    }

    /* renamed from: l */
    protected void m19875l() {
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_RESUME);
        this.f2356a.m19850g();
    }

    /* renamed from: m */
    public AbstractC0670i m19874m() {
        return this.f2356a.m19869a();
    }

    @Deprecated
    /* renamed from: n */
    public AbstractC0714a m19873n() {
        return AbstractC0714a.m19601a(this);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f2356a.m19858b();
        int i3 = i >> 16;
        if (i3 == 0) {
            C0456a.AbstractC0459b m20824a = C0456a.m20824a();
            if (m20824a != null && m20824a.m20818a(this, i, i2, intent)) {
                return;
            }
            super.onActivityResult(i, i2, intent);
            return;
        }
        int i4 = i3 - 1;
        String m21080a = this.f2365j.m21080a(i4);
        this.f2365j.m21076b(i4);
        if (m21080a == null) {
            Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            return;
        }
        Fragment m19860a = this.f2356a.m19860a(m21080a);
        if (m19860a == null) {
            Log.w("FragmentActivity", "Activity result no fragment exists for who: " + m21080a);
        } else {
            m19860a.mo952a(65535 & i, i2, intent);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2356a.m19858b();
        this.f2356a.m19868a(configuration);
    }

    @Override // androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f2356a.m19862a((Fragment) null);
        if (bundle != null) {
            this.f2356a.m19867a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.f2364i = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.f2365j = new C0387h<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.f2365j.m21075b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.f2365j == null) {
            this.f2365j = new C0387h<>();
            this.f2364i = 0;
        }
        super.onCreate(bundle);
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_CREATE);
        this.f2356a.m19853d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.f2356a.m19865a(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View m19885a = m19885a(view, str, context, attributeSet);
        View view2 = m19885a;
        if (m19885a == null) {
            view2 = super.onCreateView(view, str, context, attributeSet);
        }
        return view2;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View m19885a = m19885a((View) null, str, context, attributeSet);
        View view = m19885a;
        if (m19885a == null) {
            view = super.onCreateView(str, context, attributeSet);
        }
        return view;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f2356a.m19847j();
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f2356a.m19846k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean m19856b;
        if (!super.onMenuItemSelected(i, menuItem)) {
            switch (i) {
                case 0:
                    m19856b = this.f2356a.m19864a(menuItem);
                    break;
                case 6:
                    m19856b = this.f2356a.m19856b(menuItem);
                    break;
                default:
                    m19856b = false;
                    break;
            }
        } else {
            m19856b = true;
        }
        return m19856b;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f2356a.m19859a(z);
    }

    @Override // android.app.Activity
    protected void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.f2356a.m19858b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case 0:
                this.f2356a.m19857b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f2359d = false;
        this.f2356a.m19849h();
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f2356a.m19855b(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m19875l();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? m19886a(view, menu) | this.f2356a.m19866a(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // android.app.Activity, androidx.core.app.C0456a.AbstractC0458a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f2356a.m19858b();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String m21080a = this.f2365j.m21080a(i3);
            this.f2365j.m21076b(i3);
            if (m21080a == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment m19860a = this.f2356a.m19860a(m21080a);
            if (m19860a == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + m21080a);
            } else {
                m19860a.mo950a(i & 65535, strArr, iArr);
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f2359d = true;
        this.f2356a.m19858b();
        this.f2356a.m19845l();
    }

    @Override // androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m19877f();
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_STOP);
        Parcelable m19854c = this.f2356a.m19854c();
        if (m19854c != null) {
            bundle.putParcelable("android:support:fragments", m19854c);
        }
        if (this.f2365j.m21077b() > 0) {
            bundle.putInt("android:support:next_request_index", this.f2364i);
            int[] iArr = new int[this.f2365j.m21077b()];
            String[] strArr = new String[this.f2365j.m21077b()];
            for (int i = 0; i < this.f2365j.m21077b(); i++) {
                iArr[i] = this.f2365j.m21073c(i);
                strArr[i] = this.f2365j.m21070d(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f2360e = false;
        if (!this.f2358c) {
            this.f2358c = true;
            this.f2356a.m19852e();
        }
        this.f2356a.m19858b();
        this.f2356a.m19845l();
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_START);
        this.f2356a.m19851f();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f2356a.m19858b();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f2360e = true;
        m19877f();
        this.f2356a.m19848i();
        this.f2357b.m19222a(AbstractC0864e.EnumC0865a.ON_STOP);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        if (!this.f2363h && i != -1) {
            m19878c(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (!this.f2363h && i != -1) {
            m19878c(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.f2362g && i != -1) {
            m19878c(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.f2362g && i != -1) {
            m19878c(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
