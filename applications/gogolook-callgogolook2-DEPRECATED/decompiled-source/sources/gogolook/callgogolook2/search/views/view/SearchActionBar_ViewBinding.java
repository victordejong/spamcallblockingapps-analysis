package gogolook.callgogolook2.search.views.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/SearchActionBar_ViewBinding.class */
public class SearchActionBar_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SearchActionBar f12752a;

    @UiThread
    public SearchActionBar_ViewBinding(SearchActionBar searchActionBar, View view) {
        this.f12752a = searchActionBar;
        searchActionBar.keywordEdit = (SearchBarEditText) Utils.findRequiredViewAsType(view, R$id.et_search_keyword, "field 'keywordEdit'", SearchBarEditText.class);
        searchActionBar.voiceButton = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_searchbar_voice_btn, "field 'voiceButton'", ImageView.class);
        searchActionBar.deleteButton = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_searchbar_delete_btn, "field 'deleteButton'", ImageView.class);
        searchActionBar.mDrawerIcons = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.rl_searchbar_drawer_icons, "field 'mDrawerIcons'", RelativeLayout.class);
        searchActionBar.mEmptyView = Utils.findRequiredView(view, R$id.ll_empty, "field 'mEmptyView'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchActionBar searchActionBar = this.f12752a;
        if (searchActionBar != null) {
            this.f12752a = null;
            searchActionBar.keywordEdit = null;
            searchActionBar.voiceButton = null;
            searchActionBar.deleteButton = null;
            searchActionBar.mDrawerIcons = null;
            searchActionBar.mEmptyView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
