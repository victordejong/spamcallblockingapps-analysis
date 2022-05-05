package gogolook.callgogolook2.search;

import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.search.views.view.SearchBar;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchFragment_ViewBinding.class */
public class TextSearchFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    public TextSearchFragment f12736a;

    @UiThread
    public TextSearchFragment_ViewBinding(TextSearchFragment textSearchFragment, View view) {
        this.f12736a = textSearchFragment;
        textSearchFragment.mBottomLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.bottom_layout, "field 'mBottomLayout'", RelativeLayout.class);
        textSearchFragment.mSearchHistory = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.rl_history, "field 'mSearchHistory'", RelativeLayout.class);
        textSearchFragment.mSearchHistoryRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R$id.rv_search_history, "field 'mSearchHistoryRecyclerView'", RecyclerView.class);
        textSearchFragment.mSearchResult = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.rl_search_result, "field 'mSearchResult'", RelativeLayout.class);
        textSearchFragment.mSearchResultRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R$id.rv_search_result, "field 'mSearchResultRecyclerView'", RecyclerView.class);
        textSearchFragment.mSearchContainer = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.text_search_container, "field 'mSearchContainer'", RelativeLayout.class);
        textSearchFragment.mSearchArea = (Button) Utils.findRequiredViewAsType(view, R$id.btn_search_area, "field 'mSearchArea'", Button.class);
        textSearchFragment.mSearchListResult = (Button) Utils.findRequiredViewAsType(view, R$id.btn_search_list_result, "field 'mSearchListResult'", Button.class);
        textSearchFragment.mMyLocation = (Button) Utils.findRequiredViewAsType(view, R$id.btn_my_location, "field 'mMyLocation'", Button.class);
        textSearchFragment.mSearchBar = (SearchBar) Utils.findRequiredViewAsType(view, 2131363147, "field 'mSearchBar'", SearchBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        TextSearchFragment textSearchFragment = this.f12736a;
        if (textSearchFragment != null) {
            this.f12736a = null;
            textSearchFragment.mBottomLayout = null;
            textSearchFragment.mSearchHistory = null;
            textSearchFragment.mSearchHistoryRecyclerView = null;
            textSearchFragment.mSearchResult = null;
            textSearchFragment.mSearchResultRecyclerView = null;
            textSearchFragment.mSearchContainer = null;
            textSearchFragment.mSearchArea = null;
            textSearchFragment.mSearchListResult = null;
            textSearchFragment.mMyLocation = null;
            textSearchFragment.mSearchBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
