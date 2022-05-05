package com.privacystar.core.p011ui.intro;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.ICallLogCallback;
import com.privacystar.core.util.CallLogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0014J&\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\b\u0010\u0012\u001a\u00020\tH\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0007H\u0016J\b\u0010\u001c\u001a\u00020\tH\u0016¨\u0006\u001d"}, m254d2 = {"Lcom/privacystar/core/ui/intro/LoadingFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityFinalized;", "Lcom/privacystar/core/service/ICallLogCallback;", "()V", "activityLogLoadedCB", "", "canAutoTransition", "", "getLayoutResId", "", "getLogPageCallback", "pageNumber", "totalEntries", "page", "Ljava/util/ArrayList;", "Lcom/privacystar/core/util/CallLogUtil$BasicLogInfo;", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.LoadingFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/LoadingFragment.class */
public final class LoadingFragment extends IntroFragment implements IntroActivity.IntroActivityContent, IntroActivity.IntroActivityFinalized, ICallLogCallback {
    private HashMap _$_findViewCache;

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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityFinalized
    public void activityLogLoadedCB() {
        Timber.m37d("ActivityLog callback received, transitioning view.", new Object[0]);
        transitionIntroFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.loading_fragment;
    }

    @Override // com.privacystar.core.service.ICallLogCallback
    public void getLogPageCallback(int i, int i2, @NotNull ArrayList<CallLogUtil.BasicLogInfo> page) {
        Intrinsics.checkParameterIsNotNull(page, "page");
        Timber.m37d("Activity Log loaded, transitioning to ActivityLog view.", new Object[0]);
        transitionIntroFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
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

    @Override // com.privacystar.core.p011ui.PSFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        Timber.m37d("loadingFragment started", new Object[0]);
        if (IntroManagerImpl.INSTANCE.entryDependsOnActivityLoaded()) {
            Activity activity = this.activity;
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.intro.intro_core.IntroActivity");
            } else if (!((IntroActivity) activity).isActivityLogLoaded()) {
                Timber.m37d("ActivityLog is still loading, waiting until callback received.", new Object[0]);
                return;
            }
        }
        Timber.m37d("ActivityLog is already loaded, transitioning view.", new Object[0]);
        transitionIntroFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return true;
    }
}
