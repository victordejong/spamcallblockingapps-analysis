package com.mikepenz.fastadapter;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/IAdapterNotifier.class */
public interface IAdapterNotifier {
    public static final IAdapterNotifier DEFAULT = new IAdapterNotifier() { // from class: com.mikepenz.fastadapter.IAdapterNotifier.1
        @Override // com.mikepenz.fastadapter.IAdapterNotifier
        public boolean notify(FastAdapter fastAdapter, int i, int i2, int i3) {
            if (i > i2) {
                if (i2 > 0) {
                    fastAdapter.notifyAdapterItemRangeChanged(i3, i2);
                }
                fastAdapter.notifyAdapterItemRangeInserted(i3 + i2, i - i2);
                return false;
            } else if (i > 0) {
                fastAdapter.notifyAdapterItemRangeChanged(i3, i);
                if (i >= i2) {
                    return false;
                }
                fastAdapter.notifyAdapterItemRangeRemoved(i3 + i, i2 - i);
                return false;
            } else if (i == 0) {
                fastAdapter.notifyAdapterItemRangeRemoved(i3, i2);
                return false;
            } else {
                fastAdapter.notifyAdapterDataSetChanged();
                return false;
            }
        }
    };
    public static final IAdapterNotifier LEGACY_DEFAULT = new IAdapterNotifier() { // from class: com.mikepenz.fastadapter.IAdapterNotifier.2
        @Override // com.mikepenz.fastadapter.IAdapterNotifier
        public boolean notify(FastAdapter fastAdapter, int i, int i2, int i3) {
            if (i > i2) {
                if (i2 > 0) {
                    fastAdapter.notifyAdapterItemRangeChanged(i3, i2);
                }
                fastAdapter.notifyAdapterItemRangeInserted(i3 + i2, i - i2);
                return false;
            } else if (i > 0 && i < i2) {
                fastAdapter.notifyAdapterItemRangeChanged(i3, i);
                fastAdapter.notifyAdapterItemRangeRemoved(i3 + i, i2 - i);
                return false;
            } else if (i == 0) {
                fastAdapter.notifyAdapterItemRangeRemoved(i3, i2);
                return false;
            } else {
                fastAdapter.notifyAdapterDataSetChanged();
                return false;
            }
        }
    };

    boolean notify(FastAdapter fastAdapter, int i, int i2, int i3);
}
