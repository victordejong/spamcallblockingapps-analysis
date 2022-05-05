package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.lifecycle.ViewModelStoreOwner;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentController.class */
public class FragmentController {

    /* renamed from: a */
    private final FragmentHostCallback<?> f3757a;

    private FragmentController(FragmentHostCallback<?> fragmentHostCallback) {
        this.f3757a = fragmentHostCallback;
    }

    @NonNull
    /* renamed from: b */
    public static FragmentController m18493b(@NonNull FragmentHostCallback<?> fragmentHostCallback) {
        Preconditions.m19336e(fragmentHostCallback, "callbacks == null");
        return new FragmentController(fragmentHostCallback);
    }

    /* renamed from: a */
    public void m18494a(@Nullable Fragment fragment) {
        FragmentHostCallback<?> fragmentHostCallback = this.f3757a;
        fragmentHostCallback.f3762i.attachController(fragmentHostCallback, fragmentHostCallback, fragment);
    }

    /* renamed from: c */
    public void m18492c() {
        this.f3757a.f3762i.dispatchActivityCreated();
    }

    /* renamed from: d */
    public void m18491d(@NonNull Configuration configuration) {
        this.f3757a.f3762i.dispatchConfigurationChanged(configuration);
    }

    /* renamed from: e */
    public boolean m18490e(@NonNull MenuItem menuItem) {
        return this.f3757a.f3762i.dispatchContextItemSelected(menuItem);
    }

    /* renamed from: f */
    public void m18489f() {
        this.f3757a.f3762i.dispatchCreate();
    }

    /* renamed from: g */
    public boolean m18488g(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        return this.f3757a.f3762i.dispatchCreateOptionsMenu(menu, menuInflater);
    }

    /* renamed from: h */
    public void m18487h() {
        this.f3757a.f3762i.dispatchDestroy();
    }

    /* renamed from: i */
    public void m18486i() {
        this.f3757a.f3762i.dispatchLowMemory();
    }

    /* renamed from: j */
    public void m18485j(boolean z) {
        this.f3757a.f3762i.dispatchMultiWindowModeChanged(z);
    }

    /* renamed from: k */
    public boolean m18484k(@NonNull MenuItem menuItem) {
        return this.f3757a.f3762i.dispatchOptionsItemSelected(menuItem);
    }

    /* renamed from: l */
    public void m18483l(@NonNull Menu menu) {
        this.f3757a.f3762i.dispatchOptionsMenuClosed(menu);
    }

    /* renamed from: m */
    public void m18482m() {
        this.f3757a.f3762i.dispatchPause();
    }

    /* renamed from: n */
    public void m18481n(boolean z) {
        this.f3757a.f3762i.dispatchPictureInPictureModeChanged(z);
    }

    /* renamed from: o */
    public boolean m18480o(@NonNull Menu menu) {
        return this.f3757a.f3762i.dispatchPrepareOptionsMenu(menu);
    }

    /* renamed from: p */
    public void m18479p() {
        this.f3757a.f3762i.dispatchResume();
    }

    /* renamed from: q */
    public void m18478q() {
        this.f3757a.f3762i.dispatchStart();
    }

    /* renamed from: r */
    public void m18477r() {
        this.f3757a.f3762i.dispatchStop();
    }

    /* renamed from: s */
    public boolean m18476s() {
        return this.f3757a.f3762i.execPendingActions(true);
    }

    @Nullable
    /* renamed from: t */
    public Fragment m18475t(@NonNull String str) {
        return this.f3757a.f3762i.findFragmentByWho(str);
    }

    @NonNull
    /* renamed from: u */
    public FragmentManager m18474u() {
        return this.f3757a.f3762i;
    }

    /* renamed from: v */
    public void m18473v() {
        this.f3757a.f3762i.noteStateNotSaved();
    }

    @Nullable
    /* renamed from: w */
    public View m18472w(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.f3757a.f3762i.getLayoutInflaterFactory().onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: x */
    public void m18471x(@Nullable Parcelable parcelable) {
        FragmentHostCallback<?> fragmentHostCallback = this.f3757a;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            fragmentHostCallback.f3762i.restoreSaveState(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    @Nullable
    /* renamed from: y */
    public Parcelable m18470y() {
        return this.f3757a.f3762i.saveAllState();
    }
}
