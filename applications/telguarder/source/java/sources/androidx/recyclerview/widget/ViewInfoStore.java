package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewInfoStore.class */
public class ViewInfoStore {
    private static final boolean DEBUG = false;
    final SimpleArrayMap<RecyclerView.ViewHolder, InfoRecord> mLayoutHolderMap = new SimpleArrayMap<>();
    final LongSparseArray<RecyclerView.ViewHolder> mOldChangedHolders = new LongSparseArray<>();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewInfoStore$InfoRecord.class */
    public static class InfoRecord {
        static final int FLAG_APPEAR = 2;
        static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
        static final int FLAG_APPEAR_PRE_AND_POST = 14;
        static final int FLAG_DISAPPEARED = 1;
        static final int FLAG_POST = 8;
        static final int FLAG_PRE = 4;
        static final int FLAG_PRE_AND_POST = 12;
        static Pools.Pool<InfoRecord> sPool = new Pools.SimplePool(20);
        int flags;
        RecyclerView.ItemAnimator.ItemHolderInfo postInfo;
        RecyclerView.ItemAnimator.ItemHolderInfo preInfo;

        private InfoRecord() {
        }

        static void drainCache() {
            do {
            } while (sPool.acquire() != null);
        }

        static InfoRecord obtain() {
            InfoRecord acquire = sPool.acquire();
            InfoRecord infoRecord = acquire;
            if (acquire == null) {
                infoRecord = new InfoRecord();
            }
            return infoRecord;
        }

        static void recycle(InfoRecord infoRecord) {
            infoRecord.flags = 0;
            infoRecord.preInfo = null;
            infoRecord.postInfo = null;
            sPool.release(infoRecord);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewInfoStore$ProcessCallback.class */
    public interface ProcessCallback {
        void processAppeared(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processDisappeared(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processPersistent(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void unused(RecyclerView.ViewHolder viewHolder);
    }

    private RecyclerView.ItemAnimator.ItemHolderInfo popFromLayoutStep(RecyclerView.ViewHolder viewHolder, int i) {
        InfoRecord valueAt;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        int indexOfKey = this.mLayoutHolderMap.indexOfKey(viewHolder);
        if (indexOfKey < 0 || (valueAt = this.mLayoutHolderMap.valueAt(indexOfKey)) == null || (valueAt.flags & i) == 0) {
            return null;
        }
        valueAt.flags &= i ^ (-1);
        if (i == 4) {
            itemHolderInfo = valueAt.preInfo;
        } else if (i != 8) {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        } else {
            itemHolderInfo = valueAt.postInfo;
        }
        if ((valueAt.flags & 12) == 0) {
            this.mLayoutHolderMap.removeAt(indexOfKey);
            InfoRecord.recycle(valueAt);
        }
        return itemHolderInfo;
    }

    public void addToAppearedInPreLayoutHolders(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.flags |= 2;
        infoRecord2.preInfo = itemHolderInfo;
    }

    public void addToDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.flags |= 1;
    }

    public void addToOldChangeHolders(long j, RecyclerView.ViewHolder viewHolder) {
        this.mOldChangedHolders.put(j, viewHolder);
    }

    public void addToPostLayout(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.postInfo = itemHolderInfo;
        infoRecord2.flags |= 8;
    }

    public void addToPreLayout(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.obtain();
            this.mLayoutHolderMap.put(viewHolder, infoRecord2);
        }
        infoRecord2.preInfo = itemHolderInfo;
        infoRecord2.flags |= 4;
    }

    public void clear() {
        this.mLayoutHolderMap.clear();
        this.mOldChangedHolders.clear();
    }

    public RecyclerView.ViewHolder getFromOldChangeHolders(long j) {
        return this.mOldChangedHolders.get(j);
    }

    public boolean isDisappearing(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        boolean z = true;
        if (infoRecord == null || (infoRecord.flags & 1) == 0) {
            z = false;
        }
        return z;
    }

    public boolean isInPreLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        return (infoRecord == null || (infoRecord.flags & 4) == 0) ? false : true;
    }

    public void onDetach() {
        InfoRecord.drainCache();
    }

    public void onViewDetached(RecyclerView.ViewHolder viewHolder) {
        removeFromDisappearedInLayout(viewHolder);
    }

    public RecyclerView.ItemAnimator.ItemHolderInfo popFromPostLayout(RecyclerView.ViewHolder viewHolder) {
        return popFromLayoutStep(viewHolder, 8);
    }

    public RecyclerView.ItemAnimator.ItemHolderInfo popFromPreLayout(RecyclerView.ViewHolder viewHolder) {
        return popFromLayoutStep(viewHolder, 4);
    }

    public void process(ProcessCallback processCallback) {
        for (int size = this.mLayoutHolderMap.size() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder keyAt = this.mLayoutHolderMap.keyAt(size);
            InfoRecord removeAt = this.mLayoutHolderMap.removeAt(size);
            if ((removeAt.flags & 3) == 3) {
                processCallback.unused(keyAt);
            } else if ((removeAt.flags & 1) != 0) {
                if (removeAt.preInfo == null) {
                    processCallback.unused(keyAt);
                } else {
                    processCallback.processDisappeared(keyAt, removeAt.preInfo, removeAt.postInfo);
                }
            } else if ((removeAt.flags & 14) == 14) {
                processCallback.processAppeared(keyAt, removeAt.preInfo, removeAt.postInfo);
            } else if ((removeAt.flags & 12) == 12) {
                processCallback.processPersistent(keyAt, removeAt.preInfo, removeAt.postInfo);
            } else if ((removeAt.flags & 4) != 0) {
                processCallback.processDisappeared(keyAt, removeAt.preInfo, null);
            } else if ((removeAt.flags & 8) != 0) {
                processCallback.processAppeared(keyAt, removeAt.preInfo, removeAt.postInfo);
            } else {
                int i = removeAt.flags;
            }
            InfoRecord.recycle(removeAt);
        }
    }

    public void removeFromDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.mLayoutHolderMap.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.flags &= -2;
    }

    public void removeViewHolder(RecyclerView.ViewHolder viewHolder) {
        int size = this.mOldChangedHolders.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            } else if (viewHolder == this.mOldChangedHolders.valueAt(size)) {
                this.mOldChangedHolders.removeAt(size);
                break;
            } else {
                size--;
            }
        }
        InfoRecord remove = this.mLayoutHolderMap.remove(viewHolder);
        if (remove != null) {
            InfoRecord.recycle(remove);
        }
    }
}
