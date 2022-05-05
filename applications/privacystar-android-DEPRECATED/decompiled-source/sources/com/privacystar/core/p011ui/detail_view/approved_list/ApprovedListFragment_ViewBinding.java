package com.privacystar.core.p011ui.detail_view.approved_list;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.ContextMenuRecyclerView;
/* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListFragment_ViewBinding.class */
public class ApprovedListFragment_ViewBinding implements Unbinder {
    private ApprovedListFragment target;
    private View view2131296996;

    @UiThread
    public ApprovedListFragment_ViewBinding(final ApprovedListFragment approvedListFragment, View view) {
        this.target = approvedListFragment;
        approvedListFragment.recyclerView = (ContextMenuRecyclerView) Utils.findRequiredViewAsType(view, C1566R.C1569id.number_list_rv, "field 'recyclerView'", ContextMenuRecyclerView.class);
        approvedListFragment.noItemsContainer = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.no_items_container, "field 'noItemsContainer'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.number_list_no_items_allow, "field 'allowContactTV' and method 'allowContact'");
        approvedListFragment.allowContactTV = (TextView) Utils.castView(findRequiredView, C1566R.C1569id.number_list_no_items_allow, "field 'allowContactTV'", TextView.class);
        this.view2131296996 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                approvedListFragment.allowContact();
            }
        });
        approvedListFragment.contactsAllowedHeader = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.number_list_contacts_allowed_header, "field 'contactsAllowedHeader'", LinearLayout.class);
        approvedListFragment.bannerLocation = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.number_list_banner_location, "field 'bannerLocation'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ApprovedListFragment approvedListFragment = this.target;
        if (approvedListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        approvedListFragment.recyclerView = null;
        approvedListFragment.noItemsContainer = null;
        approvedListFragment.allowContactTV = null;
        approvedListFragment.contactsAllowedHeader = null;
        approvedListFragment.bannerLocation = null;
        this.view2131296996.setOnClickListener(null);
        this.view2131296996 = null;
    }
}
