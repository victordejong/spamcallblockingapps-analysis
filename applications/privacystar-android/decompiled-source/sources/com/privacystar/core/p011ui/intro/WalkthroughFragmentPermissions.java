package com.privacystar.core.p011ui.intro;

import android.view.View;
import com.privacystar.core.service.PreferenceUtil;
import java.util.HashMap;
import kotlin.Metadata;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0014¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/ui/intro/WalkthroughFragmentPermissions;", "Lcom/privacystar/core/ui/intro/WalkthroughFragment;", "()V", "getIndex", "", "handleLink", "", "transitionWalkthrough", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.WalkthroughFragmentPermissions */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/WalkthroughFragmentPermissions.class */
public final class WalkthroughFragmentPermissions extends WalkthroughFragment {
    private HashMap _$_findViewCache;

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
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

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    protected int getIndex() {
        return 6;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void handleLink() {
        Timber.m28v("Showing permissions info dialog.", new Object[0]);
        showPermissionsInfoDialog();
    }

    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.intro.WalkthroughFragment
    public void transitionWalkthrough() {
        PreferenceUtil.putWalkthroughCompleted(true);
        transitionIntroFragment();
    }
}
