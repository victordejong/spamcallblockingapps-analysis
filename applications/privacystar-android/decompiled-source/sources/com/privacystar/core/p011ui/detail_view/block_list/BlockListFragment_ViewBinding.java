package com.privacystar.core.p011ui.detail_view.block_list;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.ContextMenuRecyclerView;
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListFragment_ViewBinding.class */
public class BlockListFragment_ViewBinding implements Unbinder {
    private BlockListFragment target;

    @UiThread
    public BlockListFragment_ViewBinding(BlockListFragment blockListFragment, View view) {
        this.target = blockListFragment;
        blockListFragment.recyclerView = (ContextMenuRecyclerView) Utils.findRequiredViewAsType(view, C1566R.C1569id.number_list_rv, "field 'recyclerView'", ContextMenuRecyclerView.class);
        blockListFragment.noItemsContainer = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.no_items_container, "field 'noItemsContainer'", LinearLayout.class);
        blockListFragment.bannerLocation = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.number_list_banner_location, "field 'bannerLocation'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BlockListFragment blockListFragment = this.target;
        if (blockListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        blockListFragment.recyclerView = null;
        blockListFragment.noItemsContainer = null;
        blockListFragment.bannerLocation = null;
    }
}
