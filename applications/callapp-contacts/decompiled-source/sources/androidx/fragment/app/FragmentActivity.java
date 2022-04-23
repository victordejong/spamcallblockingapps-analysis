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
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.c;
import androidx.activity.result.d;
import androidx.core.app.a;
import androidx.core.app.n;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ac;
import androidx.lifecycle.ad;
import androidx.lifecycle.j;
import androidx.savedstate.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity.class */
public class FragmentActivity extends ComponentActivity implements a.AbstractC0041a, a.c {
    static final String FRAGMENTS_TAG = "android:support:fragments";
    boolean mCreated;
    boolean mResumed;
    final f mFragments = f.a(new a());
    final LifecycleRegistry mFragmentLifecycleRegistry = new LifecycleRegistry(this);
    boolean mStopped = true;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$a.class */
    final class a extends h<FragmentActivity> implements c, d, m, ad {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.h, androidx.fragment.app.e
        public final View a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.m
        public final void a(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.h
        public final void a(String str, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, null, printWriter, strArr);
        }

        @Override // androidx.fragment.app.h, androidx.fragment.app.e
        public final boolean a() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.h
        public final boolean a(String str) {
            return androidx.core.app.a.a((Activity) FragmentActivity.this, str);
        }

        @Override // androidx.fragment.app.h
        public final boolean b() {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.h
        public final LayoutInflater c() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.h
        public final void d() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.h
        public final /* bridge */ /* synthetic */ FragmentActivity e() {
            return FragmentActivity.this;
        }

        @Override // androidx.activity.result.d
        public final androidx.activity.result.c getActivityResultRegistry() {
            return FragmentActivity.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.p
        public final j getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.c
        public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.ad
        public final ac getViewModelStore() {
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
        getSavedStateRegistry().a(FRAGMENTS_TAG, new b.AbstractC0116b() { // from class: androidx.fragment.app.FragmentActivity.1
            @Override // androidx.savedstate.b.AbstractC0116b
            public final Bundle a() {
                Bundle bundle = new Bundle();
                FragmentActivity.this.markFragmentsCreated();
                FragmentActivity.this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_STOP);
                Parcelable h = FragmentActivity.this.mFragments.f2287a.e.h();
                if (h != null) {
                    bundle.putParcelable(FragmentActivity.FRAGMENTS_TAG, h);
                }
                return bundle;
            }
        });
        addOnContextAvailableListener(new androidx.activity.a.b() { // from class: androidx.fragment.app.FragmentActivity.2
            @Override // androidx.activity.a.b
            public final void a() {
                f fVar = FragmentActivity.this.mFragments;
                fVar.f2287a.e.a(fVar.f2287a, fVar.f2287a, (Fragment) null);
                Bundle a2 = FragmentActivity.this.getSavedStateRegistry().a(FragmentActivity.FRAGMENTS_TAG);
                if (a2 != null) {
                    Parcelable parcelable = a2.getParcelable(FragmentActivity.FRAGMENTS_TAG);
                    f fVar2 = FragmentActivity.this.mFragments;
                    if (fVar2.f2287a instanceof ad) {
                        fVar2.f2287a.e.a(parcelable);
                        return;
                    }
                    throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
                }
            }
        });
    }

    private static boolean markState(FragmentManager fragmentManager, j.b bVar) {
        boolean z = false;
        for (Fragment fragment : fragmentManager.f2186b.f()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.getHost() != null) {
                    z2 = z | markState(fragment.getChildFragmentManager(), bVar);
                }
                z = z2;
                if (fragment.mViewLifecycleOwner != null) {
                    z = z2;
                    if (fragment.mViewLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(j.b.STARTED)) {
                        fragment.mViewLifecycleOwner.f2378a.setCurrentState(bVar);
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.getCurrentState().isAtLeast(j.b.STARTED)) {
                    fragment.mLifecycleRegistry.setCurrentState(bVar);
                    z = true;
                }
            }
        }
        return z;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f2287a.e.f2188d.onCreateView(view, str, context, attributeSet);
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
            androidx.h.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.f2287a.e.a(str, fileDescriptor, printWriter, strArr);
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.f2287a.e;
    }

    @Deprecated
    public androidx.h.a.a getSupportLoaderManager() {
        return androidx.h.a.a.a(this);
    }

    void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), j.b.CREATED));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.a();
        this.mFragments.f2287a.e.a(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_CREATE);
        this.mFragments.f2287a.e.j();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        f fVar = this.mFragments;
        return onCreatePanelMenu | fVar.f2287a.e.a(menu, getMenuInflater());
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
        this.mFragments.f2287a.e.o();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.f2287a.e.p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.f2287a.e.a(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.f2287a.e.b(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.f2287a.e.b(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.f2287a.e.b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f2287a.e.d(5);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.f2287a.e.c(z);
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
        return i == 0 ? onPrepareOptionsPanel(view, menu) | this.mFragments.f2287a.e.a(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.a();
        this.mFragments.b();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_RESUME);
        this.mFragments.f2287a.e.m();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.f2287a.e.k();
        }
        this.mFragments.a();
        this.mFragments.b();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_START);
        this.mFragments.f2287a.e.l();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.f2287a.e.n();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(j.a.ON_STOP);
    }

    public void setEnterSharedElementCallback(n nVar) {
        androidx.core.app.a.a(this, nVar);
    }

    public void setExitSharedElementCallback(n nVar) {
        androidx.core.app.a.b(this, nVar);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            androidx.core.app.a.a(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            androidx.core.app.a.a(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        androidx.core.app.a.b((Activity) this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        androidx.core.app.a.c((Activity) this);
    }

    public void supportStartPostponedEnterTransition() {
        androidx.core.app.a.d((Activity) this);
    }

    @Override // androidx.core.app.a.c
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }
}
