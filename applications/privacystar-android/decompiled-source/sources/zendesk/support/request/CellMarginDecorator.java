package zendesk.support.request;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.VisibleForTesting;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import zendesk.support.request.CellType;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellMarginDecorator.class */
class CellMarginDecorator extends RecyclerView.ItemDecoration {
    public static final int CELL = 1;
    public static final int CELL_LAST = 16;
    public static final int CELL_START_BLOCK = 2;
    public static final int CELL_WITH_LABEL = 8;
    private final ComponentRequestAdapter dataSource;
    private final int groupVerticalMargin;
    private final int verticalMargin;

    @VisibleForTesting
    CellMarginDecorator(ComponentRequestAdapter componentRequestAdapter, int i, int i2) {
        this.dataSource = componentRequestAdapter;
        this.verticalMargin = i;
        this.groupVerticalMargin = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellMarginDecorator(ComponentRequestAdapter componentRequestAdapter, Context context) {
        this.dataSource = componentRequestAdapter;
        this.verticalMargin = context.getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_message_margin_vertical);
        this.groupVerticalMargin = context.getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_message_group_margin_vertical);
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i;
        int i2;
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition != -1) {
            CellType.Base messageForPos = this.dataSource.getMessageForPos(childAdapterPosition);
            int positionType = messageForPos.getPositionType();
            Rect insets = messageForPos.getInsets();
            boolean z = (positionType & 2) == 2;
            boolean z2 = (positionType & 8) == 8;
            boolean z3 = (positionType & 16) == 16;
            boolean z4 = (positionType & 1) == 1;
            int i3 = -insets.left;
            int i4 = -insets.top;
            int i5 = -insets.right;
            int i6 = -insets.bottom;
            if (z && z2) {
                i = i4 + this.groupVerticalMargin;
                i2 = i6 + this.groupVerticalMargin;
            } else if (z) {
                i = i4 + this.groupVerticalMargin;
                i2 = i6 + this.verticalMargin;
            } else if (z2) {
                i = i4 + this.verticalMargin;
                i2 = i6 + this.groupVerticalMargin;
            } else if (z4) {
                i = i4 + this.verticalMargin;
                i2 = i6 + this.verticalMargin;
            } else {
                Logger.m298d("RequestActivity", "Unknown position type: %s", Integer.valueOf(positionType));
                i2 = i6;
                i = i4;
            }
            if (z3) {
                i2 = -insets.bottom;
            }
            rect.set(i3, i, i5, i2);
        }
    }
}
