package com.privacystar.core.p011ui.debug;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.debug.DebugViewActivity_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/DebugViewActivity_ViewBinding.class */
public class DebugViewActivity_ViewBinding implements Unbinder {
    private DebugViewActivity target;

    @UiThread
    public DebugViewActivity_ViewBinding(DebugViewActivity debugViewActivity) {
        this(debugViewActivity, debugViewActivity.getWindow().getDecorView());
    }

    @UiThread
    public DebugViewActivity_ViewBinding(DebugViewActivity debugViewActivity, View view) {
        this.target = debugViewActivity;
        debugViewActivity.debugItemsView = (RecyclerView) Utils.findRequiredViewAsType(view, C1566R.C1569id.debug_item_list, "field 'debugItemsView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DebugViewActivity debugViewActivity = this.target;
        if (debugViewActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        debugViewActivity.debugItemsView = null;
    }
}
