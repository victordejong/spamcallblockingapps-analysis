package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterHelper.class */
public class AdapterHelper implements OpReorderer.Callback {
    public static final boolean DEBUG = false;
    public static final int POSITION_TYPE_INVISIBLE = 0;
    public static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    public static final String TAG = "AHT";
    public final Callback mCallback;
    public final boolean mDisableRecycler;
    public int mExistingUpdateTypes;
    public Runnable mOnItemProcessedCallback;
    public final OpReorderer mOpReorderer;
    public final ArrayList<UpdateOp> mPendingUpdates;
    public final ArrayList<UpdateOp> mPostponedList;
    public Pools.Pool<UpdateOp> mUpdateOpPool;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterHelper$Callback.class */
    public interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i);

        void markViewHoldersUpdated(int i, int i2, Object obj);

        void offsetPositionsForAdd(int i, int i2);

        void offsetPositionsForMove(int i, int i2);

        void offsetPositionsForRemovingInvisible(int i, int i2);

        void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterHelper$UpdateOp.class */
    public static class UpdateOp {
        public static final int ADD = 1;
        public static final int MOVE = 8;
        public static final int POOL_SIZE = 30;
        public static final int REMOVE = 2;
        public static final int UPDATE = 4;
        public int cmd;
        public int itemCount;
        public Object payload;
        public int positionStart;

        public UpdateOp(int i, int i2, int i3, Object obj) {
            this.cmd = i;
            this.positionStart = i2;
            this.itemCount = i3;
            this.payload = obj;
        }

        public String cmdToString() {
            int i = this.cmd;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || UpdateOp.class != obj.getClass()) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            int i = this.cmd;
            if (i != updateOp.cmd) {
                return false;
            }
            if (i == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount != updateOp.itemCount || this.positionStart != updateOp.positionStart) {
                return false;
            }
            Object obj2 = this.payload;
            return obj2 != null ? obj2.equals(updateOp.payload) : updateOp.payload == null;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
        }
    }

    public AdapterHelper(Callback callback) {
        this(callback, false);
    }

    public AdapterHelper(Callback callback, boolean z) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = z;
        this.mOpReorderer = new OpReorderer(this);
    }

    private void applyAdd(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyMove(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyRemove(UpdateOp updateOp) {
        boolean z;
        int i = updateOp.positionStart;
        int i2 = updateOp.itemCount + i;
        int i3 = 0;
        char c = 65535;
        int i4 = i;
        while (i4 < i2) {
            if (this.mCallback.findViewHolder(i4) != null || canFindInPreLayout(i4)) {
                if (c == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i, i3, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i, i3, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i4 -= i3;
                i2 -= i3;
                i3 = 1;
            } else {
                i3++;
            }
            i4++;
        }
        UpdateOp updateOp2 = updateOp;
        if (i3 != updateOp.itemCount) {
            recycleUpdateOp(updateOp);
            updateOp2 = obtainUpdateOp(2, i, i3, null);
        }
        if (c == 0) {
            dispatchAndUpdateViewHolders(updateOp2);
        } else {
            postponeAndUpdateViewHolders(updateOp2);
        }
    }

    private void applyUpdate(UpdateOp updateOp) {
        int i;
        int i2 = updateOp.positionStart;
        int i3 = updateOp.itemCount;
        int i4 = i2;
        int i5 = 0;
        char c = 65535;
        for (int i6 = i2; i6 < i3 + i2; i6++) {
            if (this.mCallback.findViewHolder(i6) != null || canFindInPreLayout(i6)) {
                i = i5;
                i4 = i4;
                if (c == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i4, i5, updateOp.payload));
                    i4 = i6;
                    i = 0;
                }
                c = 1;
            } else {
                i = i5;
                i4 = i4;
                if (c == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i4, i5, updateOp.payload));
                    i4 = i6;
                    i = 0;
                }
                c = 0;
            }
            i5 = i + 1;
        }
        UpdateOp updateOp2 = updateOp;
        if (i5 != updateOp.itemCount) {
            Object obj = updateOp.payload;
            recycleUpdateOp(updateOp);
            updateOp2 = obtainUpdateOp(4, i4, i5, obj);
        }
        if (c == 0) {
            dispatchAndUpdateViewHolders(updateOp2);
        } else {
            postponeAndUpdateViewHolders(updateOp2);
        }
    }

    private boolean canFindInPreLayout(int i) {
        int size = this.mPostponedList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.mPostponedList.get(i2);
            int i3 = updateOp.cmd;
            if (i3 == 8) {
                if (findPositionOffset(updateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = updateOp.positionStart;
                int i5 = updateOp.itemCount;
                for (int i6 = i4; i6 < i5 + i4; i6++) {
                    if (findPositionOffset(i6, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void dispatchAndUpdateViewHolders(UpdateOp updateOp) {
        int i;
        int i2 = updateOp.cmd;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(updateOp.positionStart, i2);
        int i3 = updateOp.positionStart;
        int i4 = updateOp.cmd;
        if (i4 == 2) {
            i = 0;
        } else if (i4 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + updateOp);
        }
        int i5 = 1;
        for (int i6 = 1; i6 < updateOp.itemCount; i6++) {
            int updatePositionWithPostponed2 = updatePositionWithPostponed(updateOp.positionStart + (i * i6), updateOp.cmd);
            int i7 = updateOp.cmd;
            if (i7 == 2 ? updatePositionWithPostponed2 == updatePositionWithPostponed : i7 == 4 && updatePositionWithPostponed2 == updatePositionWithPostponed + 1) {
                i5++;
            } else {
                UpdateOp obtainUpdateOp = obtainUpdateOp(updateOp.cmd, updatePositionWithPostponed, i5, updateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i3);
                recycleUpdateOp(obtainUpdateOp);
                i3 = i3;
                if (updateOp.cmd == 4) {
                    i3 += i5;
                }
                updatePositionWithPostponed = updatePositionWithPostponed2;
                i5 = 1;
            }
        }
        Object obj = updateOp.payload;
        recycleUpdateOp(updateOp);
        if (i5 > 0) {
            UpdateOp obtainUpdateOp2 = obtainUpdateOp(updateOp.cmd, updatePositionWithPostponed, i5, obj);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i3);
            recycleUpdateOp(obtainUpdateOp2);
        }
    }

    private void postponeAndUpdateViewHolders(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        int i = updateOp.cmd;
        if (i == 1) {
            this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
        } else if (i == 2) {
            this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(updateOp.positionStart, updateOp.itemCount);
        } else if (i == 4) {
            this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
        } else if (i == 8) {
            this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    private int updatePositionWithPostponed(int i, int i2) {
        for (int size = this.mPostponedList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.mPostponedList.get(size);
            int i3 = updateOp.cmd;
            if (i3 == 8) {
                int i4 = updateOp.positionStart;
                int i5 = updateOp.itemCount;
                if (i4 >= i5) {
                    i5 = i4;
                    i4 = i5;
                }
                if (i < i4 || i > i5) {
                    int i6 = updateOp.positionStart;
                    i = i;
                    if (i < i6) {
                        if (i2 == 1) {
                            updateOp.positionStart = i6 + 1;
                            updateOp.itemCount++;
                            i = i;
                        } else {
                            i = i;
                            if (i2 == 2) {
                                updateOp.positionStart = i6 - 1;
                                updateOp.itemCount--;
                                i = i;
                            }
                        }
                    }
                } else {
                    int i7 = updateOp.positionStart;
                    if (i4 == i7) {
                        if (i2 == 1) {
                            updateOp.itemCount++;
                        } else if (i2 == 2) {
                            updateOp.itemCount--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            updateOp.positionStart = i7 + 1;
                        } else if (i2 == 2) {
                            updateOp.positionStart = i7 - 1;
                        }
                        i--;
                    }
                }
            } else {
                int i8 = updateOp.positionStart;
                if (i8 <= i) {
                    if (i3 == 1) {
                        i -= updateOp.itemCount;
                    } else {
                        i = i;
                        if (i3 == 2) {
                            i += updateOp.itemCount;
                        }
                    }
                } else if (i2 == 1) {
                    updateOp.positionStart = i8 + 1;
                    i = i;
                } else {
                    i = i;
                    if (i2 == 2) {
                        updateOp.positionStart = i8 - 1;
                        i = i;
                    }
                }
            }
        }
        for (int size2 = this.mPostponedList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.mPostponedList.get(size2);
            if (updateOp2.cmd == 8) {
                int i9 = updateOp2.itemCount;
                if (i9 == updateOp2.positionStart || i9 < 0) {
                    this.mPostponedList.remove(size2);
                    recycleUpdateOp(updateOp2);
                }
            } else if (updateOp2.itemCount <= 0) {
                this.mPostponedList.remove(size2);
                recycleUpdateOp(updateOp2);
            }
        }
        return i;
    }

    public AdapterHelper addUpdateOp(UpdateOp... updateOpArr) {
        Collections.addAll(this.mPendingUpdates, updateOpArr);
        return this;
    }

    public int applyPendingUpdatesToPosition(int i) {
        int size = this.mPendingUpdates.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i2);
            int i3 = updateOp.cmd;
            if (i3 == 1) {
                i = i;
                if (updateOp.positionStart <= i) {
                    i += updateOp.itemCount;
                }
            } else if (i3 == 2) {
                int i4 = updateOp.positionStart;
                i = i;
                if (i4 <= i) {
                    int i5 = updateOp.itemCount;
                    if (i4 + i5 > i) {
                        return -1;
                    }
                    i -= i5;
                } else {
                    continue;
                }
            } else if (i3 != 8) {
                i = i;
            } else {
                int i6 = updateOp.positionStart;
                if (i6 == i) {
                    i = updateOp.itemCount;
                } else {
                    int i7 = i;
                    if (i6 < i) {
                        i7 = i - 1;
                    }
                    i = i7;
                    if (updateOp.itemCount <= i7) {
                        i = i7 + 1;
                    }
                }
            }
        }
        return i;
    }

    public void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i = 0; i < size; i++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    public void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            int i2 = updateOp.cmd;
            if (i2 == 1) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
            } else if (i2 == 2) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForRemovingInvisible(updateOp.positionStart, updateOp.itemCount);
            } else if (i2 == 4) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
            } else if (i2 == 8) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    public void dispatchFirstPassAndUpdateViewHolders(UpdateOp updateOp, int i) {
        this.mCallback.onDispatchFirstPass(updateOp);
        int i2 = updateOp.cmd;
        if (i2 == 2) {
            this.mCallback.offsetPositionsForRemovingInvisible(i, updateOp.itemCount);
        } else if (i2 == 4) {
            this.mCallback.markViewHoldersUpdated(i, updateOp.itemCount, updateOp.payload);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    public int findPositionOffset(int i) {
        return findPositionOffset(i, 0);
    }

    public int findPositionOffset(int i, int i2) {
        int size = this.mPostponedList.size();
        for (int i3 = i2; i3 < size; i3++) {
            UpdateOp updateOp = this.mPostponedList.get(i3);
            int i4 = updateOp.cmd;
            if (i4 == 8) {
                int i5 = updateOp.positionStart;
                if (i5 == i) {
                    i = updateOp.itemCount;
                } else {
                    int i6 = i;
                    if (i5 < i) {
                        i6 = i - 1;
                    }
                    i = i6;
                    if (updateOp.itemCount <= i6) {
                        i = i6 + 1;
                    }
                }
            } else {
                int i7 = updateOp.positionStart;
                i = i;
                if (i7 > i) {
                    continue;
                } else if (i4 == 2) {
                    int i8 = updateOp.itemCount;
                    if (i < i7 + i8) {
                        return -1;
                    }
                    i -= i8;
                } else {
                    i = i;
                    if (i4 == 1) {
                        i += updateOp.itemCount;
                    }
                }
            }
        }
        return i;
    }

    public boolean hasAnyUpdateTypes(int i) {
        return (i & this.mExistingUpdateTypes) != 0;
    }

    public boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    public boolean hasUpdates() {
        return !this.mPostponedList.isEmpty() && !this.mPendingUpdates.isEmpty();
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj) {
        UpdateOp updateOp;
        UpdateOp acquire = this.mUpdateOpPool.acquire();
        if (acquire == null) {
            updateOp = new UpdateOp(i, i2, i3, obj);
        } else {
            acquire.cmd = i;
            acquire.positionStart = i2;
            acquire.itemCount = i3;
            acquire.payload = obj;
            updateOp = acquire;
        }
        return updateOp;
    }

    public boolean onItemRangeChanged(int i, int i2, Object obj) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, i, i2, obj));
        this.mExistingUpdateTypes |= 4;
        if (this.mPendingUpdates.size() == 1) {
            z = true;
        }
        return z;
    }

    public boolean onItemRangeInserted(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, i, i2, null));
        this.mExistingUpdateTypes |= 1;
        if (this.mPendingUpdates.size() == 1) {
            z = true;
        }
        return z;
    }

    public boolean onItemRangeMoved(int i, int i2, int i3) {
        boolean z = false;
        if (i == i2) {
            return false;
        }
        if (i3 == 1) {
            this.mPendingUpdates.add(obtainUpdateOp(8, i, i2, null));
            this.mExistingUpdateTypes |= 8;
            if (this.mPendingUpdates.size() == 1) {
                z = true;
            }
            return z;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    public boolean onItemRangeRemoved(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, i, i2, null));
        this.mExistingUpdateTypes |= 2;
        if (this.mPendingUpdates.size() == 1) {
            z = true;
        }
        return z;
    }

    public void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            int i2 = updateOp.cmd;
            if (i2 == 1) {
                applyAdd(updateOp);
            } else if (i2 == 2) {
                applyRemove(updateOp);
            } else if (i2 == 4) {
                applyUpdate(updateOp);
            } else if (i2 == 8) {
                applyMove(updateOp);
            }
            Runnable runnable = this.mOnItemProcessedCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp updateOp) {
        if (!this.mDisableRecycler) {
            updateOp.payload = null;
            this.mUpdateOpPool.release(updateOp);
        }
    }

    public void recycleUpdateOpsAndClearList(List<UpdateOp> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp(list.get(i));
        }
        list.clear();
    }

    public void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }
}
