package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.graphics.PointF;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.helpers.log.Logger;
/* renamed from: com.telguarder.helpers.ui.LinearLayoutManagerWithSmoothScroller */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller.class */
public class LinearLayoutManagerWithSmoothScroller extends LinearLayoutManager {
    public CustomCallBack mCustomCallBack;

    /* renamed from: com.telguarder.helpers.ui.LinearLayoutManagerWithSmoothScroller$CustomCallBack */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack.class */
    public interface CustomCallBack {
        void onLayoutChildrenError(Exception exc);
    }

    /* renamed from: com.telguarder.helpers.ui.LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$TopSnappedSmoothScroller.class */
    private class TopSnappedSmoothScroller extends LinearSmoothScroller {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopSnappedSmoothScroller(Context context) {
            super(context);
            LinearLayoutManagerWithSmoothScroller.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i) {
            return LinearLayoutManagerWithSmoothScroller.this.computeScrollVectorForPosition(i);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getVerticalSnapPreference() {
            return -1;
        }
    }

    public LinearLayoutManagerWithSmoothScroller(Context context) {
        super(context, 1, false);
    }

    public LinearLayoutManagerWithSmoothScroller(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (Exception e) {
            Logger.error("LinearLayoutManagerWithSmoothScroller", "onLayoutChildrenError");
            if (this.mCustomCallBack == null) {
                return;
            }
            this.mCustomCallBack.onLayoutChildrenError(e);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        TopSnappedSmoothScroller topSnappedSmoothScroller = new TopSnappedSmoothScroller(recyclerView.getContext());
        topSnappedSmoothScroller.setTargetPosition(i);
        startSmoothScroll(topSnappedSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }
}
