package androidx.fragment.app;

import android.app.Activity;
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
import androidx.activity.AbstractC0050d;
import androidx.activity.ActivityC0046b;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.C0427a;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0927y;
import androidx.lifecycle.C0904l;
import androidx.lifecycle.C0926x;
import androidx.p014c.C0388h;
import androidx.p039h.p040a.AbstractC0759a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class ActivityC0711c extends ActivityC0046b implements C0427a.AbstractC0429a, C0427a.AbstractC0431c {

    /* renamed from: c */
    boolean f2320c;

    /* renamed from: d */
    boolean f2321d;

    /* renamed from: f */
    boolean f2323f;

    /* renamed from: g */
    boolean f2324g;

    /* renamed from: h */
    boolean f2325h;

    /* renamed from: i */
    int f2326i;

    /* renamed from: j */
    C0388h<String> f2327j;

    /* renamed from: a */
    final C0714e f2318a = C0714e.m5653a(new C0712a());

    /* renamed from: b */
    final C0904l f2319b = new C0904l(this);

    /* renamed from: e */
    boolean f2322e = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$a.class */
    public class C0712a extends AbstractC0716g<ActivityC0711c> implements AbstractC0050d, AbstractC0927y {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0712a() {
            super(r4);
            ActivityC0711c.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC0716g, androidx.fragment.app.AbstractC0713d
        /* renamed from: a */
        public View mo5632a(int i) {
            return ActivityC0711c.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: a */
        public void mo5630a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            ActivityC0711c.this.m5675a(fragment, intent, i, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: a */
        public void mo5629a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
            ActivityC0711c.this.m5674a(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: a */
        public void mo5628a(Fragment fragment, String[] strArr, int i) {
            ActivityC0711c.this.m5673a(fragment, strArr, i);
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: a */
        public void mo5626a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            ActivityC0711c.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.AbstractC0716g, androidx.fragment.app.AbstractC0713d
        /* renamed from: a */
        public boolean mo5633a() {
            Window window = ActivityC0711c.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: a */
        public boolean mo5631a(Fragment fragment) {
            return !ActivityC0711c.this.isFinishing();
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: a */
        public boolean mo5627a(String str) {
            return C0427a.m6675a((Activity) ActivityC0711c.this, str);
        }

        @Override // androidx.activity.AbstractC0050d
        /* renamed from: b */
        public OnBackPressedDispatcher mo5664b() {
            return ActivityC0711c.this.mo5664b();
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: b */
        public void mo5625b(Fragment fragment) {
            ActivityC0711c.this.m5676a(fragment);
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: c */
        public LayoutInflater mo5624c() {
            return ActivityC0711c.this.getLayoutInflater().cloneInContext(ActivityC0711c.this);
        }

        /* renamed from: d */
        public ActivityC0711c mo5620h() {
            return ActivityC0711c.this;
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: e */
        public void mo5623e() {
            ActivityC0711c.this.mo5668d();
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: f */
        public boolean mo5622f() {
            return ActivityC0711c.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.AbstractC0716g
        /* renamed from: g */
        public int mo5621g() {
            Window window = ActivityC0711c.this.getWindow();
            return window == null ? 0 : window.getAttributes().windowAnimations;
        }

        @Override // androidx.lifecycle.AbstractC0903k
        public AbstractC0896g getLifecycle() {
            return ActivityC0711c.this.f2319b;
        }

        @Override // androidx.lifecycle.AbstractC0927y
        public C0926x getViewModelStore() {
            return ActivityC0711c.this.getViewModelStore();
        }
    }

    /* renamed from: a */
    private static boolean m5672a(AbstractC0717h abstractC0717h, AbstractC0896g.EnumC0898b enumC0898b) {
        boolean z = false;
        for (Fragment fragment : abstractC0717h.mo5539c()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.getLifecycle().mo5112a().m5114a(AbstractC0896g.EnumC0898b.STARTED)) {
                    fragment.mLifecycleRegistry.m5104b(enumC0898b);
                    z2 = true;
                }
                z = z2;
                if (fragment.getHost() != null) {
                    z = z2 | m5672a(fragment.getChildFragmentManager(), enumC0898b);
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private int m5671b(Fragment fragment) {
        if (this.f2327j.m6802b() < 65534) {
            while (this.f2327j.m6794e(this.f2326i) >= 0) {
                this.f2326i = (this.f2326i + 1) % 65534;
            }
            int i = this.f2326i;
            this.f2327j.m6800b(i, fragment.mWho);
            this.f2326i = (this.f2326i + 1) % 65534;
            return i;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    /* renamed from: c */
    private void m5670c() {
        do {
        } while (m5672a(m5665j(), AbstractC0896g.EnumC0898b.CREATED));
    }

    /* renamed from: d */
    static void m5667d(int i) {
        if ((i & (-65536)) == 0) {
            return;
        }
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }

    /* renamed from: a */
    final View m5677a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2318a.m5655a(view, str, context, attributeSet);
    }

    /* renamed from: a */
    public void m5676a(Fragment fragment) {
    }

    /* renamed from: a */
    public void m5675a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.f2325h = true;
        try {
            if (i == -1) {
                C0427a.m6677a(this, intent, -1, bundle);
                return;
            }
            m5667d(i);
            C0427a.m6677a(this, intent, ((m5671b(fragment) + 1) << 16) + (i & 65535), bundle);
        } finally {
            this.f2325h = false;
        }
    }

    /* renamed from: a */
    public void m5674a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.f2324g = true;
        try {
            if (i == -1) {
                C0427a.m6676a(this, intentSender, i, intent, i2, i3, i4, bundle);
                return;
            }
            m5667d(i);
            C0427a.m6676a(this, intentSender, ((m5671b(fragment) + 1) << 16) + (i & 65535), intent, i2, i3, i4, bundle);
        } finally {
            this.f2324g = false;
        }
    }

    /* renamed from: a */
    void m5673a(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            C0427a.m6674a(this, strArr, i);
            return;
        }
        m5667d(i);
        try {
            this.f2323f = true;
            C0427a.m6674a(this, strArr, ((m5671b(fragment) + 1) << 16) + (i & 65535));
        } finally {
            this.f2323f = false;
        }
    }

    @Deprecated
    /* renamed from: a */
    protected boolean m5678a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // androidx.core.app.C0427a.AbstractC0431c
    /* renamed from: c */
    public final void mo5669c(int i) {
        if (this.f2323f || i == -1) {
            return;
        }
        m5667d(i);
    }

    @Deprecated
    /* renamed from: d */
    public void mo5668d() {
        invalidateOptionsMenu();
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
        printWriter.print(this.f2320c);
        printWriter.print(" mResumed=");
        printWriter.print(this.f2321d);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2322e);
        if (getApplication() != null) {
            AbstractC0759a.m5407a(this).mo5403a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f2318a.m5661a().mo5561a(str, fileDescriptor, printWriter, strArr);
    }

    /* renamed from: i */
    protected void m5666i() {
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_RESUME);
        this.f2318a.m5642g();
    }

    /* renamed from: j */
    public AbstractC0717h m5665j() {
        return this.f2318a.m5661a();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.f2318a.m5650b();
        int i3 = i >> 16;
        if (i3 == 0) {
            C0427a.AbstractC0430b m6679a = C0427a.m6679a();
            if (m6679a != null && m6679a.m6672a(this, i, i2, intent)) {
                return;
            }
            super.onActivityResult(i, i2, intent);
            return;
        }
        int i4 = i3 - 1;
        String m6805a = this.f2327j.m6805a(i4);
        this.f2327j.m6801b(i4);
        if (m6805a == null) {
            Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            return;
        }
        Fragment m5652a = this.f2318a.m5652a(m6805a);
        if (m5652a != null) {
            m5652a.onActivityResult(i & 65535, i2, intent);
            return;
        }
        Log.w("FragmentActivity", "Activity result no fragment exists for who: " + m6805a);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2318a.m5650b();
        this.f2318a.m5660a(configuration);
    }

    @Override // androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f2318a.m5654a((Fragment) null);
        if (bundle != null) {
            this.f2318a.m5659a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.f2326i = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.f2327j = new C0388h<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.f2327j.m6800b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.f2327j == null) {
            this.f2327j = new C0388h<>();
            this.f2326i = 0;
        }
        super.onCreate(bundle);
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_CREATE);
        this.f2318a.m5645d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.f2318a.m5657a(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View m5677a = m5677a(view, str, context, attributeSet);
        return m5677a == null ? super.onCreateView(view, str, context, attributeSet) : m5677a;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View m5677a = m5677a((View) null, str, context, attributeSet);
        return m5677a == null ? super.onCreateView(str, context, attributeSet) : m5677a;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f2318a.m5639j();
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f2318a.m5638k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f2318a.m5656a(menuItem);
        }
        if (i == 6) {
            return this.f2318a.m5648b(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f2318a.m5651a(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f2318a.m5650b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f2318a.m5649b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f2321d = false;
        this.f2318a.m5641h();
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f2318a.m5647b(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m5666i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? m5678a(view, menu) | this.f2318a.m5658a(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // android.app.Activity, androidx.core.app.C0427a.AbstractC0429a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f2318a.m5650b();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String m6805a = this.f2327j.m6805a(i3);
            this.f2327j.m6801b(i3);
            if (m6805a == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment m5652a = this.f2318a.m5652a(m6805a);
            if (m5652a != null) {
                m5652a.onRequestPermissionsResult(i & 65535, strArr, iArr);
                return;
            }
            Log.w("FragmentActivity", "Activity result no fragment exists for who: " + m6805a);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f2321d = true;
        this.f2318a.m5650b();
        this.f2318a.m5637l();
    }

    @Override // androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m5670c();
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_STOP);
        Parcelable m5646c = this.f2318a.m5646c();
        if (m5646c != null) {
            bundle.putParcelable("android:support:fragments", m5646c);
        }
        if (this.f2327j.m6802b() > 0) {
            bundle.putInt("android:support:next_request_index", this.f2326i);
            int[] iArr = new int[this.f2327j.m6802b()];
            String[] strArr = new String[this.f2327j.m6802b()];
            for (int i = 0; i < this.f2327j.m6802b(); i++) {
                iArr[i] = this.f2327j.m6798c(i);
                strArr[i] = this.f2327j.m6795d(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f2322e = false;
        if (!this.f2320c) {
            this.f2320c = true;
            this.f2318a.m5644e();
        }
        this.f2318a.m5650b();
        this.f2318a.m5637l();
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_START);
        this.f2318a.m5643f();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f2318a.m5650b();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f2322e = true;
        m5670c();
        this.f2318a.m5640i();
        this.f2319b.m5111a(AbstractC0896g.EnumC0897a.ON_STOP);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.f2325h && i != -1) {
            m5667d(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (!this.f2325h && i != -1) {
            m5667d(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.f2324g && i != -1) {
            m5667d(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.f2324g && i != -1) {
            m5667d(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
