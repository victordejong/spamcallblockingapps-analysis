package gogolook.callgogolook2.phonebook;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.view.widget.WSpinner;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteFragment_ViewBinding.class */
public class FavoriteFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    public FavoriteFragment f12454a;

    @UiThread
    public FavoriteFragment_ViewBinding(FavoriteFragment favoriteFragment, View view) {
        this.f12454a = favoriteFragment;
        favoriteFragment.mFilterSpinner = (WSpinner) Utils.findRequiredViewAsType(view, R$id.sp_filter, "field 'mFilterSpinner'", WSpinner.class);
        favoriteFragment.mSortSpinner = (WSpinner) Utils.findRequiredViewAsType(view, R$id.sp_sort, "field 'mSortSpinner'", WSpinner.class);
        favoriteFragment.mRvFavoriteList = (RecyclerView) Utils.findRequiredViewAsType(view, R$id.rv_favorite_list, "field 'mRvFavoriteList'", RecyclerView.class);
        favoriteFragment.mLlSearching = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_searching, "field 'mLlSearching'", LinearLayout.class);
        favoriteFragment.mListContainer = Utils.findRequiredView(view, R$id.rl_listview, "field 'mListContainer'");
        favoriteFragment.mColdStartContainer = Utils.findRequiredView(view, R$id.ll_coldstart_container, "field 'mColdStartContainer'");
        favoriteFragment.mColdStartClose = Utils.findRequiredView(view, R$id.iv_coldstart_close, "field 'mColdStartClose'");
        favoriteFragment.mColdStartList = (RecyclerView) Utils.findRequiredViewAsType(view, R$id.rv_coldstart, "field 'mColdStartList'", RecyclerView.class);
        favoriteFragment.mBtnFab = (Button) Utils.findRequiredViewAsType(view, R$id.btn_fab, "field 'mBtnFab'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FavoriteFragment favoriteFragment = this.f12454a;
        if (favoriteFragment != null) {
            this.f12454a = null;
            favoriteFragment.mFilterSpinner = null;
            favoriteFragment.mSortSpinner = null;
            favoriteFragment.mRvFavoriteList = null;
            favoriteFragment.mLlSearching = null;
            favoriteFragment.mListContainer = null;
            favoriteFragment.mColdStartContainer = null;
            favoriteFragment.mColdStartClose = null;
            favoriteFragment.mColdStartList = null;
            favoriteFragment.mBtnFab = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
