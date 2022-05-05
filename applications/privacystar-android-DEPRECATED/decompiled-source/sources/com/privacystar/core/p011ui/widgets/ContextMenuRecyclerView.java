package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.p004v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.View;
/* renamed from: com.privacystar.core.ui.widgets.ContextMenuRecyclerView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ContextMenuRecyclerView.class */
public class ContextMenuRecyclerView extends RecyclerView {
    private RecyclerViewContextMenuInfo mContextMenuInfo;

    /* renamed from: com.privacystar.core.ui.widgets.ContextMenuRecyclerView$RecyclerViewContextMenuInfo */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ContextMenuRecyclerView$RecyclerViewContextMenuInfo.class */
    public static class RecyclerViewContextMenuInfo implements ContextMenu.ContextMenuInfo {

        /* renamed from: id */
        public final long f293id;
        public final int position;

        public RecyclerViewContextMenuInfo(int i, long j) {
            this.position = i;
            this.f293id = j;
        }
    }

    public ContextMenuRecyclerView(Context context) {
        super(context);
    }

    public ContextMenuRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ContextMenuRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        int childPosition = getChildPosition(view);
        if (childPosition < 0) {
            return false;
        }
        this.mContextMenuInfo = new RecyclerViewContextMenuInfo(childPosition, getAdapter().getItemId(childPosition));
        return super.showContextMenuForChild(view);
    }
}
