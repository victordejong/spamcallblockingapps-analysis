package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.content.Intent;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.p011ui.debug.NetworkQueueView;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
/* renamed from: com.privacystar.core.ui.debug.actions.TestNetworkQueue */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestNetworkQueue.class */
public class TestNetworkQueue extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Network Requests Queue";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Intent intent = new Intent(context, DetailActivity.class);
        intent.putExtra(DetailActivity.getFragmentLaunchKey(), NetworkQueueView.class);
        context.startActivity(intent);
    }
}
