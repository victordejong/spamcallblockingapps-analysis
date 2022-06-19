package com.tenor.android.core.measurable;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/measurable/MeasurableRecyclerViewHelper.class */
public class MeasurableRecyclerViewHelper {
    public static void flushMeasurableViewHolderDataSet(RecyclerView recyclerView) {
        for (IMeasurableViewHolder iMeasurableViewHolder : getViewHolders(recyclerView, IMeasurableViewHolder.class)) {
            iMeasurableViewHolder.flush();
        }
    }

    public static <T extends IViewHolder> List<T> getViewHolders(RecyclerView recyclerView, Class<T> cls) {
        return recyclerView == null ? new ArrayList() : getViewHolders(recyclerView, cls, 0, recyclerView.getAdapter().getItemCount() - 1);
    }

    public static <T extends IViewHolder> List<T> getViewHolders(RecyclerView recyclerView, Class<T> cls, int i, int i2) {
        ArrayList arrayList = new ArrayList(Math.max((i2 - i) + 1, 0));
        if (recyclerView != null && recyclerView.getAdapter() != null) {
            int itemCount = recyclerView.getAdapter().getItemCount();
            if (i >= 0 && i2 < itemCount) {
                while (i <= i2) {
                    RecyclerView.AbstractC0313c0 findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i);
                    if (cls.isInstance(findViewHolderForAdapterPosition)) {
                        arrayList.add((IViewHolder) findViewHolderForAdapterPosition);
                    }
                    i++;
                }
            }
        }
        return arrayList;
    }

    public static void notifyMeasurableViewHolderDataRangeChanged(RecyclerView recyclerView, int i, int i2) {
        if (i == -1 || i2 == -1) {
            return;
        }
        for (IMeasurableViewHolder iMeasurableViewHolder : getViewHolders(recyclerView, IMeasurableViewHolder.class, i, i2)) {
            iMeasurableViewHolder.measure(recyclerView);
        }
    }

    public static void notifyMeasurableViewHolderDataSetChanged(RecyclerView recyclerView) {
        notifyMeasurableViewHolderDataRangeChanged(recyclerView, 0, recyclerView.getAdapter().getItemCount() - 1);
    }

    public static void notifyMeasurableViewHoldersOnRefresh(RecyclerView recyclerView) {
        flushMeasurableViewHolderDataSet(recyclerView);
    }

    public static void notifyViewHoldersOnPause(RecyclerView recyclerView) {
        for (IMeasurableViewHolder iMeasurableViewHolder : getViewHolders(recyclerView, IMeasurableViewHolder.class)) {
            iMeasurableViewHolder.pauseMeasurer(recyclerView);
        }
    }

    public static void notifyViewHoldersOnResume(RecyclerView recyclerView) {
        for (IMeasurableViewHolder iMeasurableViewHolder : getViewHolders(recyclerView, IMeasurableViewHolder.class)) {
            iMeasurableViewHolder.resumeMeasurer(recyclerView);
        }
    }

    public static void onConstruct(RecyclerView recyclerView) {
        recyclerView.addOnScrollListener(new MeasurableOnScrollListener());
        recyclerView.addOnChildAttachStateChangeListener(new 1(recyclerView));
    }
}
