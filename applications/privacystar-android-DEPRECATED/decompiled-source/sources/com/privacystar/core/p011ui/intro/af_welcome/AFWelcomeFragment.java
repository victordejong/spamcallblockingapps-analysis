package com.privacystar.core.p011ui.intro.af_welcome;

import android.os.Bundle;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcome;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcomeDialogFragment;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u0012H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0012H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0016J\b\u0010\"\u001a\u00020 H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006#"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeView;", "()V", "dialogFragment", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment;", "getDialogFragment", "()Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment;", "setDialogFragment", "(Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomeDialogFragment;)V", "presenter", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomePresenter;", "getPresenter", "()Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomePresenter;", "presenter$delegate", "Lkotlin/Lazy;", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "shouldDisplay", "showWelcomeDialog", "", "isPremium", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcomeFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcomeFragment.class */
public final class AFWelcomeFragment extends IntroFragment implements IntroActivity.IntroActivityContent, AFWelcome.AFWelcomeView {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AFWelcomeFragment.class), "presenter", "getPresenter()Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomePresenter;"))};
    private HashMap _$_findViewCache;
    @Nullable
    private AFWelcomeDialogFragment dialogFragment;
    @NotNull
    private final Lazy presenter$delegate = LazyKt.lazy(new AFWelcomeFragment$presenter$2(this));

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
    public final AFWelcomeDialogFragment getDialogFragment() {
        return this.dialogFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.splash_activity;
    }

    @NotNull
    public final AFWelcomePresenter getPresenter() {
        Lazy lazy = this.presenter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (AFWelcomePresenter) lazy.getValue();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        getPresenter().onBackButtonClick();
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        getPresenter().onViewCreated();
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void setDialogFragment(@Nullable AFWelcomeDialogFragment aFWelcomeDialogFragment) {
        this.dialogFragment = aFWelcomeDialogFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getPassedWelcome();
    }

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeView
    public void showWelcomeDialog(boolean z) {
        AFWelcomeDialogFragment.Companion companion = AFWelcomeDialogFragment.Companion;
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager!!");
        this.dialogFragment = companion.showWithCallback(fragmentManager, z, false, new AFWelcomeFragment$showWelcomeDialog$1(this));
    }

    @Override // com.privacystar.core.p011ui.intro.af_welcome.AFWelcome.AFWelcomeView
    public void transition() {
        PreferenceUtil.putPassedWelcome(true);
        AFWelcomeDialogFragment aFWelcomeDialogFragment = this.dialogFragment;
        if (aFWelcomeDialogFragment != null) {
            aFWelcomeDialogFragment.dismiss();
        }
        transitionIntroFragment();
    }
}
