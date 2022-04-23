package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract;
import com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0010H\u0016J\b\u0010\u0019\u001a\u00020\u0010H\u0016J\b\u0010\u001a\u001a\u00020\u0010H\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u0010H\u0016J\b\u0010'\u001a\u00020\u0010H\u0016J\b\u0010(\u001a\u00020$H\u0016J\b\u0010)\u001a\u00020$H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006*"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionContract$View;", "()V", "dialogFragment", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment;", "getDialogFragment", "()Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment;", "setDialogFragment", "(Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionDialogFragment;)V", "presenter", "Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsPresenter;", "readyToTransition", "", "getReadyToTransition", "()Z", "setReadyToTransition", "(Z)V", "canAutoTransition", "getLayoutResId", "", "handlesBackButton", "hasOverlayPermission", "isReadyToTransition", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "", "setIsReadyToTransition", "ready", "shouldDisplay", "showOverlayDialog", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionsFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsFragment.class */
public final class AFOverlayPermissionsFragment extends IntroFragment implements IntroActivity.IntroActivityContent, AFOverlayPermissionContract.View {
    private HashMap _$_findViewCache;
    @Nullable
    private AFOverlayPermissionDialogFragment dialogFragment;
    @NotNull
    private final AFOverlayPermissionsPresenter presenter = new AFOverlayPermissionsPresenter(this);
    private boolean readyToTransition;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return false;
    }

    @Nullable
    public final AFOverlayPermissionDialogFragment getDialogFragment() {
        return this.dialogFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.loading_fragment;
    }

    @NotNull
    public final AFOverlayPermissionsPresenter getPresenter() {
        return this.presenter;
    }

    public final boolean getReadyToTransition() {
        return this.readyToTransition;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.View
    public boolean hasOverlayPermission() {
        return Build.VERSION.SDK_INT >= 23 ? Settings.canDrawOverlays(getContext()) : true;
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.View
    public boolean isReadyToTransition() {
        return this.readyToTransition;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutResId(), viewGroup, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        Timber.m37d("Resumed", new Object[0]);
        this.presenter.onViewResumed();
    }

    public final void setDialogFragment(@Nullable AFOverlayPermissionDialogFragment aFOverlayPermissionDialogFragment) {
        this.dialogFragment = aFOverlayPermissionDialogFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.View
    public void setIsReadyToTransition(boolean z) {
        this.readyToTransition = z;
    }

    public final void setReadyToTransition(boolean z) {
        this.readyToTransition = z;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.View
    public void showOverlayDialog() {
        if (this.dialogFragment != null) {
            Timber.m25w("Dialog already shown", new Object[0]);
        } else if (getFragmentManager() != null) {
            AFOverlayPermissionDialogFragment.Companion companion = AFOverlayPermissionDialogFragment.Companion;
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.support.v4.app.FragmentManager");
            }
            this.dialogFragment = companion.showWithCallbacks(fragmentManager, new AFOverlayPermissionsFragment$showOverlayDialog$1(this.presenter), new AFOverlayPermissionsFragment$showOverlayDialog$2(this.presenter));
        } else {
            Timber.m25w("FragmentManager is null", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionContract.View
    public void transition() {
        Timber.m37d("Fragment in transition", new Object[0]);
        if (this.dialogFragment != null && isResumed()) {
            AFOverlayPermissionDialogFragment aFOverlayPermissionDialogFragment = this.dialogFragment;
            if (aFOverlayPermissionDialogFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment");
            }
            aFOverlayPermissionDialogFragment.dismissAllowingStateLoss();
        }
        transitionIntroFragment();
    }
}
