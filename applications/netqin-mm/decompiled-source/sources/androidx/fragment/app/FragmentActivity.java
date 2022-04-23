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
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Lifecycle;
import com.google.common.collect.RegularImmutableMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p012b.p013a.AbstractC0572c;
import p012b.p035f.C0794h;
import p012b.p042i.p043h.C0838a;
import p012b.p063m.p064a.AbstractC1058f;
import p012b.p063m.p064a.AbstractC1059g;
import p012b.p063m.p064a.C1056d;
import p012b.p068o.AbstractC1126s;
import p012b.p068o.C1110h;
import p012b.p068o.C1125r;
import p012b.p069p.p070a.AbstractC1127a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity.class */
public class FragmentActivity extends ComponentActivity implements C0838a.AbstractC0840b, C0838a.AbstractC0842d {

    /* renamed from: i */
    public boolean f1334i;

    /* renamed from: j */
    public boolean f1335j;

    /* renamed from: l */
    public boolean f1337l;

    /* renamed from: m */
    public boolean f1338m;

    /* renamed from: n */
    public boolean f1339n;

    /* renamed from: o */
    public int f1340o;

    /* renamed from: p */
    public C0794h<String> f1341p;

    /* renamed from: g */
    public final C1056d f1332g = C1056d.m34939a(new C0226a());

    /* renamed from: h */
    public final C1110h f1333h = new C1110h(this);

    /* renamed from: k */
    public boolean f1336k = true;

    /* renamed from: androidx.fragment.app.FragmentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$a.class */
    public class C0226a extends AbstractC1058f<FragmentActivity> implements AbstractC1126s, AbstractC0572c {
        public C0226a() {
            super(FragmentActivity.this);
        }

        @Override // p012b.p063m.p064a.AbstractC1058f, p012b.p063m.p064a.AbstractC1055c
        /* renamed from: a */
        public View mo34919a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // p012b.p068o.AbstractC1109g
        /* renamed from: a */
        public Lifecycle mo34644a() {
            return FragmentActivity.this.f1333h;
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: a */
        public void mo34918a(Fragment fragment) {
            FragmentActivity.this.m38335b(fragment);
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: a */
        public void mo34917a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            FragmentActivity.this.m38339a(fragment, intent, i, bundle);
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: a */
        public void mo34916a(Fragment fragment, String[] strArr, int i) {
            FragmentActivity.this.m38338a(fragment, strArr, i);
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: a */
        public void mo34914a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: a */
        public boolean mo34915a(String str) {
            return C0838a.m35800a((Activity) FragmentActivity.this, str);
        }

        @Override // p012b.p013a.AbstractC0572c
        /* renamed from: b */
        public OnBackPressedDispatcher mo36901b() {
            return FragmentActivity.this.mo36901b();
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: b */
        public boolean mo34913b(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // p012b.p063m.p064a.AbstractC1058f, p012b.p063m.p064a.AbstractC1055c
        /* renamed from: c */
        public boolean mo34912c() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // p012b.p068o.AbstractC1126s
        /* renamed from: d */
        public C1125r mo34622d() {
            return FragmentActivity.this.mo34622d();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: i */
        public FragmentActivity mo34908i() {
            return FragmentActivity.this;
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: j */
        public LayoutInflater mo34907j() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: k */
        public int mo34906k() {
            Window window = FragmentActivity.this.getWindow();
            return window == null ? 0 : window.getAttributes().windowAnimations;
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: l */
        public boolean mo34905l() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // p012b.p063m.p064a.AbstractC1058f
        /* renamed from: m */
        public void mo34904m() {
            FragmentActivity.this.mo38331j();
        }
    }

    /* renamed from: a */
    public static boolean m38337a(AbstractC1059g gVar, Lifecycle.State state) {
        boolean z = false;
        for (Fragment fragment : gVar.mo34818d()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.mo34644a().mo34663a().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.f1277R.m34648d(state);
                    z2 = true;
                }
                z = z2;
                if (fragment.m38351u() != null) {
                    z = z2 | m38337a(fragment.m38365n(), state);
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static void m38336b(int i) {
        if ((i & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    /* renamed from: a */
    public final int m38340a(Fragment fragment) {
        if (this.f1341p.m36000g() < 65534) {
            while (this.f1341p.m36008b(this.f1340o) >= 0) {
                this.f1340o = (this.f1340o + 1) % 65534;
            }
            int i = this.f1340o;
            this.f1341p.m36004c(i, fragment.f1286e);
            this.f1340o = (this.f1340o + 1) % 65534;
            return i;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    /* renamed from: a */
    public final View m38341a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f1332g.m34941a(view, str, context, attributeSet);
    }

    @Override // p012b.p042i.p043h.C0838a.AbstractC0842d
    /* renamed from: a */
    public final void mo35795a(int i) {
        if (!this.f1337l && i != -1) {
            m38336b(i);
        }
    }

    /* renamed from: a */
    public void m38339a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.f1339n = true;
        try {
            if (i == -1) {
                C0838a.m35801a(this, intent, -1, bundle);
                return;
            }
            m38336b(i);
            C0838a.m35801a(this, intent, ((m38340a(fragment) + 1) << 16) + (i & RegularImmutableMap.SHORT_MASK), bundle);
        } finally {
            this.f1339n = false;
        }
    }

    /* renamed from: a */
    public void m38338a(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            C0838a.m35799a(this, strArr, i);
            return;
        }
        m38336b(i);
        try {
            this.f1337l = true;
            C0838a.m35799a(this, strArr, ((m38340a(fragment) + 1) << 16) + (i & RegularImmutableMap.SHORT_MASK));
        } finally {
            this.f1337l = false;
        }
    }

    @Deprecated
    /* renamed from: a */
    public boolean m38342a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    /* renamed from: b */
    public void m38335b(Fragment fragment) {
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
        printWriter.print(this.f1334i);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1335j);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1336k);
        if (getApplication() != null) {
            AbstractC1127a.m34621a(this).mo34619a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f1332g.m34925j().mo34847a(str, fileDescriptor, printWriter, strArr);
    }

    /* renamed from: g */
    public AbstractC1059g m38334g() {
        return this.f1332g.m34925j();
    }

    /* renamed from: h */
    public final void m38333h() {
        do {
        } while (m38337a(m38334g(), Lifecycle.State.CREATED));
    }

    /* renamed from: i */
    public void m38332i() {
        this.f1333h.m34662a(Lifecycle.Event.ON_RESUME);
        this.f1332g.m34929f();
    }

    @Deprecated
    /* renamed from: j */
    public void mo38331j() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f1332g.m34924k();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a = this.f1341p.m36010a(i4);
            this.f1341p.m36003d(i4);
            if (a == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a2 = this.f1332g.m34938a(a);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a);
                return;
            }
            a2.mo17447a(i & RegularImmutableMap.SHORT_MASK, i2, intent);
            return;
        }
        C0838a.AbstractC0841c a3 = C0838a.m35803a();
        if (a3 == null || !a3.m35797a(this, i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1332g.m34924k();
        this.f1332g.m34946a(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f1332g.m34940a((Fragment) null);
        if (bundle != null) {
            this.f1332g.m34945a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.f1340o = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.f1341p = new C0794h<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.f1341p.m36004c(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.f1341p == null) {
            this.f1341p = new C0794h<>();
            this.f1340o = 0;
        }
        super.onCreate(bundle);
        this.f1333h.m34662a(Lifecycle.Event.ON_CREATE);
        this.f1332g.m34936b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.f1332g.m34943a(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View a = m38341a(view, str, context, attributeSet);
        return a == null ? super.onCreateView(view, str, context, attributeSet) : a;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a = m38341a((View) null, str, context, attributeSet);
        return a == null ? super.onCreateView(str, context, attributeSet) : a;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f1332g.m34932c();
        this.f1333h.m34662a(Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f1332g.m34931d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f1332g.m34934b(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.f1332g.m34942a(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f1332g.m34937a(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f1332g.m34924k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f1332g.m34944a(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1335j = false;
        this.f1332g.m34930e();
        this.f1333h.m34662a(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f1332g.m34933b(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m38332i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? m38342a(view, menu) | this.f1332g.m34935b(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // android.app.Activity, p012b.p042i.p043h.C0838a.AbstractC0840b
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f1332g.m34924k();
        int i2 = (i >> 16) & RegularImmutableMap.SHORT_MASK;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String a = this.f1341p.m36010a(i3);
            this.f1341p.m36003d(i3);
            if (a == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a2 = this.f1332g.m34938a(a);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a);
                return;
            }
            a2.mo19631a(i & RegularImmutableMap.SHORT_MASK, strArr, iArr);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1335j = true;
        this.f1332g.m34924k();
        this.f1332g.m34926i();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m38333h();
        this.f1333h.m34662a(Lifecycle.Event.ON_STOP);
        Parcelable l = this.f1332g.m34923l();
        if (l != null) {
            bundle.putParcelable("android:support:fragments", l);
        }
        if (this.f1341p.m36000g() > 0) {
            bundle.putInt("android:support:next_request_index", this.f1340o);
            int[] iArr = new int[this.f1341p.m36000g()];
            String[] strArr = new String[this.f1341p.m36000g()];
            for (int i = 0; i < this.f1341p.m36000g(); i++) {
                iArr[i] = this.f1341p.m36005c(i);
                strArr[i] = this.f1341p.m36001e(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f1336k = false;
        if (!this.f1334i) {
            this.f1334i = true;
            this.f1332g.m34947a();
        }
        this.f1332g.m34924k();
        this.f1332g.m34926i();
        this.f1333h.m34662a(Lifecycle.Event.ON_START);
        this.f1332g.m34928g();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f1332g.m34924k();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f1336k = true;
        m38333h();
        this.f1332g.m34927h();
        this.f1333h.m34662a(Lifecycle.Event.ON_STOP);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.f1339n && i != -1) {
            m38336b(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (!this.f1339n && i != -1) {
            m38336b(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        if (!this.f1338m && i != -1) {
            m38336b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (!this.f1338m && i != -1) {
            m38336b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
