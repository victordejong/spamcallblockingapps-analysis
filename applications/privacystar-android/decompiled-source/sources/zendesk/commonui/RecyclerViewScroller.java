package zendesk.commonui;

import android.support.annotation.NonNull;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.LinearSmoothScroller;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/RecyclerViewScroller.class */
class RecyclerViewScroller {
    private static final int FIXED_SCROLL_TIME = 50;
    private static final int SCROLL_INSTANT = 1;
    private static final int SCROLL_SMOOTH_FIXED_TIME = 3;
    private static final int SCROLL_SMOOTH_FIXED_VELOCITY = 2;
    private final LinearLayoutManager linearLayoutManager;
    private final RecyclerView recyclerView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerViewScroller(@NonNull RecyclerView recyclerView, @NonNull LinearLayoutManager linearLayoutManager) {
        this.recyclerView = recyclerView;
        this.linearLayoutManager = linearLayoutManager;
        recyclerView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: zendesk.commonui.RecyclerViewScroller.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NonNull View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (i4 < i8) {
                    RecyclerViewScroller.this.postScrollToBottom(1);
                }
            }
        });
        recyclerView.getAdapter().registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: zendesk.commonui.RecyclerViewScroller.2
            @Override // android.support.p004v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i, int i2) {
                RecyclerViewScroller.this.postScrollToBottom(3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postScrollToBottom(final int i) {
        this.recyclerView.post(new Runnable() { // from class: zendesk.commonui.RecyclerViewScroller.6
            @Override // java.lang.Runnable
            public void run() {
                RecyclerViewScroller.this.scrollToBottom(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToBottom(int i) {
        int itemCount = this.recyclerView.getAdapter().getItemCount() - 1;
        if (itemCount < 0) {
            return;
        }
        if (i == 1) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.recyclerView.findViewHolderForAdapterPosition(itemCount);
            this.linearLayoutManager.scrollToPositionWithOffset(itemCount, (this.recyclerView.getPaddingBottom() + ((findViewHolderForAdapterPosition == null || findViewHolderForAdapterPosition.itemView == null) ? 0 : findViewHolderForAdapterPosition.itemView.getHeight())) * (-1));
        } else if (i == 3) {
            LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(this.recyclerView.getContext()) { // from class: zendesk.commonui.RecyclerViewScroller.5
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.p004v7.widget.LinearSmoothScroller
                public int calculateTimeForScrolling(int i2) {
                    return 50;
                }
            };
            linearSmoothScroller.setTargetPosition(itemCount);
            this.linearLayoutManager.startSmoothScroll(linearSmoothScroller);
        } else if (i == 2) {
            LinearSmoothScroller linearSmoothScroller2 = new LinearSmoothScroller(this.recyclerView.getContext());
            linearSmoothScroller2.setTargetPosition(itemCount);
            this.linearLayoutManager.startSmoothScroll(linearSmoothScroller2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void install(@NonNull final InputBox inputBox) {
        inputBox.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: zendesk.commonui.RecyclerViewScroller.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    RecyclerViewScroller.this.postScrollToBottom(2);
                }
            }
        });
        inputBox.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: zendesk.commonui.RecyclerViewScroller.4
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NonNull View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                RecyclerViewScroller.this.recyclerView.post(new Runnable() { // from class: zendesk.commonui.RecyclerViewScroller.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int paddingLeft = RecyclerViewScroller.this.recyclerView.getPaddingLeft();
                        int paddingRight = RecyclerViewScroller.this.recyclerView.getPaddingRight();
                        int paddingTop = RecyclerViewScroller.this.recyclerView.getPaddingTop();
                        int height = inputBox.getHeight();
                        if (height != RecyclerViewScroller.this.recyclerView.getPaddingBottom()) {
                            RecyclerViewScroller.this.recyclerView.setPadding(paddingLeft, paddingTop, paddingRight, height);
                            RecyclerViewScroller.this.scrollToBottom(1);
                        }
                    }
                });
            }
        });
    }
}
