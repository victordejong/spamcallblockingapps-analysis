package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.AbstractC0125c;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.p015a.AbstractC0123b;
import androidx.activity.result.AbstractC0136c;
import androidx.activity.result.AbstractC0141d;
import androidx.core.app.AbstractC0766n;
import androidx.core.app.C0726a;
import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.C1238ac;
import androidx.lifecycle.LifecycleRegistry;
import androidx.p049h.p050a.AbstractC1160a;
import androidx.savedstate.C2770b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity.class */
public class FragmentActivity extends ComponentActivity implements C0726a.AbstractC0729a, C0726a.AbstractC0731c {
    static final String FRAGMENTS_TAG = "android:support:fragments";
    boolean mCreated;
    boolean mResumed;
    final C1103f mFragments = C1103f.m43620a(new C1048a());
    final LifecycleRegistry mFragmentLifecycleRegistry = new LifecycleRegistry(this);
    boolean mStopped = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$a.class */
    public final class C1048a extends AbstractC1105h<FragmentActivity> implements AbstractC0125c, AbstractC0141d, AbstractC1113m, AbstractC1239ad {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1048a() {
            super(r4);
            FragmentActivity.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC1105h, androidx.fragment.app.AbstractC1102e
        /* renamed from: a */
        public final View mo43613a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC1113m
        /* renamed from: a */
        public final void mo43585a(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.AbstractC1105h
        /* renamed from: a */
        public final void mo43610a(String str, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, null, printWriter, strArr);
        }

        @Override // androidx.fragment.app.AbstractC1105h, androidx.fragment.app.AbstractC1102e
        /* renamed from: a */
        public final boolean mo43614a() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.AbstractC1105h
        /* renamed from: a */
        public final boolean mo43611a(String str) {
            return C0726a.m44614a((Activity) FragmentActivity.this, str);
        }

        @Override // androidx.fragment.app.AbstractC1105h
        /* renamed from: b */
        public final boolean mo43609b() {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.AbstractC1105h
        /* renamed from: c */
        public final LayoutInflater mo43608c() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.AbstractC1105h
        /* renamed from: d */
        public final void mo43607d() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.AbstractC1105h
        /* renamed from: e */
        public final /* bridge */ /* synthetic */ FragmentActivity mo43606e() {
            return FragmentActivity.this;
        }

        @Override // androidx.activity.result.AbstractC0141d
        public final AbstractC0136c getActivityResultRegistry() {
            return FragmentActivity.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.AbstractC1263p
        public final AbstractC1253j getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.AbstractC0125c
        public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.AbstractC1239ad
        public final C1238ac getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }
    }

    public FragmentActivity() {
        init();
    }

    public FragmentActivity(int i) {
        super(i);
        init();
    }

    private void init() {
        getSavedStateRegistry().m39933a(FRAGMENTS_TAG, new C2770b.AbstractC2772b() { // from class: androidx.fragment.app.FragmentActivity.1
            @Override // androidx.savedstate.C2770b.AbstractC2772b
            /* renamed from: a */
            public final Bundle mo39931a() {
                Bundle bundle = new Bundle();
                FragmentActivity.this.markFragmentsCreated();
                FragmentActivity.this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_STOP);
                Parcelable m43703h = FragmentActivity.this.mFragments.f4356a.f4362e.m43703h();
                if (m43703h != null) {
                    bundle.putParcelable(FragmentActivity.FRAGMENTS_TAG, m43703h);
                }
                return bundle;
            }
        });
        addOnContextAvailableListener(new AbstractC0123b() { // from class: androidx.fragment.app.FragmentActivity.2
            @Override // androidx.activity.p015a.AbstractC0123b
            /* renamed from: a */
            public final void mo43768a() {
                C1103f c1103f = FragmentActivity.this.mFragments;
                c1103f.f4356a.f4362e.m43744a(c1103f.f4356a, c1103f.f4356a, (Fragment) null);
                Bundle m39934a = FragmentActivity.this.getSavedStateRegistry().m39934a(FragmentActivity.FRAGMENTS_TAG);
                if (m39934a != null) {
                    Parcelable parcelable = m39934a.getParcelable(FragmentActivity.FRAGMENTS_TAG);
                    C1103f c1103f2 = FragmentActivity.this.mFragments;
                    if (!(c1103f2.f4356a instanceof AbstractC1239ad)) {
                        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
                    }
                    c1103f2.f4356a.f4362e.m43759a(parcelable);
                }
            }
        });
    }

    private static boolean markState(FragmentManager fragmentManager, AbstractC1253j.EnumC1256b enumC1256b) {
        boolean z = false;
        for (Fragment fragment : fragmentManager.f4210b.m43544f()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.getHost() != null) {
                    z2 = z | markState(fragment.getChildFragmentManager(), enumC1256b);
                }
                z = z2;
                if (fragment.mViewLifecycleOwner != null) {
                    z = z2;
                    if (fragment.mViewLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(AbstractC1253j.EnumC1256b.STARTED)) {
                        fragment.mViewLifecycleOwner.f4499a.setCurrentState(enumC1256b);
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.getCurrentState().isAtLeast(AbstractC1253j.EnumC1256b.STARTED)) {
                    fragment.mLifecycleRegistry.setCurrentState(enumC1256b);
                    z = true;
                }
            }
        }
        return z;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f4356a.f4362e.f4212d.onCreateView(view, str, context, attributeSet);
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
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            AbstractC1160a.m43461a(this).mo43456a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.f4356a.f4362e.m43739a(str, fileDescriptor, printWriter, strArr);
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.f4356a.f4362e;
    }

    @Deprecated
    public AbstractC1160a getSupportLoaderManager() {
        return AbstractC1160a.m43461a(this);
    }

    void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), AbstractC1253j.EnumC1256b.CREATED));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.m43621a();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.m43621a();
        this.mFragments.f4356a.f4362e.m43762a(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_CREATE);
        this.mFragments.f4356a.f4362e.m43699j();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
            C1103f c1103f = this.mFragments;
            return onCreatePanelMenu | c1103f.f4356a.f4362e.m43757a(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f4356a.f4362e.m43689o();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.f4356a.f4362e.m43687p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.f4356a.f4362e.m43756a(menuItem);
        }
        if (i == 6) {
            return this.mFragments.f4356a.f4362e.m43729b(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.f4356a.f4362e.m43721b(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.m43621a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.f4356a.f4362e.m43730b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f4356a.f4362e.m43713d(5);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.f4356a.f4362e.m43715c(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Deprecated
    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? onPrepareOptionsPanel(view, menu) | this.mFragments.f4356a.f4362e.m43758a(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.m43621a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.m43621a();
        this.mFragments.m43619b();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_RESUME);
        this.mFragments.f4356a.f4362e.m43693m();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.f4356a.f4362e.m43697k();
        }
        this.mFragments.m43621a();
        this.mFragments.m43619b();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_START);
        this.mFragments.f4356a.f4362e.m43695l();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.m43621a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.f4356a.f4362e.m43691n();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(AbstractC1253j.EnumC1255a.ON_STOP);
    }

    public void setEnterSharedElementCallback(AbstractC0766n abstractC0766n) {
        C0726a.m44615a(this, abstractC0766n);
    }

    public void setExitSharedElementCallback(AbstractC0766n abstractC0766n) {
        C0726a.m44611b(this, abstractC0766n);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            C0726a.m44617a(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            C0726a.m44616a(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        C0726a.m44612b((Activity) this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        C0726a.m44610c((Activity) this);
    }

    public void supportStartPostponedEnterTransition() {
        C0726a.m44609d((Activity) this);
    }

    @Override // androidx.core.app.C0726a.AbstractC0731c
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }
}
