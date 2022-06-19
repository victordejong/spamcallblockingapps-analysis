package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil.class */
public class DiffUtil {
    private static final Comparator<Snake> SNAKE_COMPARATOR = new Comparator<Snake>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        public int compare(Snake snake, Snake snake2) {
            int i = snake.f66x - snake2.f66x;
            int i2 = i;
            if (i == 0) {
                i2 = snake.f67y - snake2.f67y;
            }
            return i2;
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$Callback.class */
    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$DiffResult.class */
    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_IGNORE = 16;
        private static final int FLAG_MASK = 31;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 5;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;
        private final List<Snake> mSnakes;

        DiffResult(Callback callback, List<Snake> list, int[] iArr, int[] iArr2, boolean z) {
            this.mSnakes = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z;
            addRootSnake();
            findMatchingItems();
        }

        private void addRootSnake() {
            Snake snake = this.mSnakes.isEmpty() ? null : this.mSnakes.get(0);
            if (snake != null && snake.f66x == 0 && snake.f67y == 0) {
                return;
            }
            Snake snake2 = new Snake();
            snake2.f66x = 0;
            snake2.f67y = 0;
            snake2.removal = false;
            snake2.size = 0;
            snake2.reverse = false;
            this.mSnakes.add(0, snake2);
        }

        private void dispatchAdditions(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onInserted(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 < 0) {
                    return;
                }
                int[] iArr = this.mNewItemStatuses;
                int i4 = i3 + i2;
                int i5 = iArr[i4] & 31;
                if (i5 == 0) {
                    listUpdateCallback.onInserted(i, 1);
                    for (PostponedUpdate postponedUpdate : list) {
                        postponedUpdate.currentPos++;
                    }
                } else if (i5 == 4 || i5 == 8) {
                    int i6 = iArr[i4] >> 5;
                    listUpdateCallback.onMoved(removePostponedUpdate(list, i6, true).currentPos, i);
                    if (i5 == 4) {
                        listUpdateCallback.onChanged(i, 1, this.mCallback.getChangePayload(i6, i4));
                    }
                } else if (i5 != 16) {
                    throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                } else {
                    list.add(new PostponedUpdate(i4, i, false));
                }
            }
        }

        private void dispatchRemovals(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onRemoved(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 < 0) {
                    return;
                }
                int[] iArr = this.mOldItemStatuses;
                int i4 = i3 + i2;
                int i5 = iArr[i4] & 31;
                if (i5 == 0) {
                    listUpdateCallback.onRemoved(i + i2, 1);
                    for (PostponedUpdate postponedUpdate : list) {
                        postponedUpdate.currentPos--;
                    }
                } else if (i5 == 4 || i5 == 8) {
                    int i6 = iArr[i4] >> 5;
                    PostponedUpdate removePostponedUpdate = removePostponedUpdate(list, i6, false);
                    listUpdateCallback.onMoved(i + i2, removePostponedUpdate.currentPos - 1);
                    if (i5 == 4) {
                        listUpdateCallback.onChanged(removePostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(i4, i6));
                    }
                } else if (i5 != 16) {
                    throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                } else {
                    list.add(new PostponedUpdate(i4, i + i2, true));
                }
            }
        }

        private void findAddition(int i, int i2, int i3) {
            if (this.mOldItemStatuses[i - 1] != 0) {
                return;
            }
            findMatchingItem(i, i2, i3, false);
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00fd, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean findMatchingItem(int r6, int r7, int r8, boolean r9) {
            /*
                Method dump skipped, instructions count: 274
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.DiffResult.findMatchingItem(int, int, int, boolean):boolean");
        }

        private void findMatchingItems() {
            int i;
            int i2 = this.mOldListSize;
            int i3 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int i4 = snake.f66x;
                int i5 = snake.size;
                int i6 = snake.f67y;
                int i7 = snake.size;
                if (this.mDetectMoves) {
                    while (true) {
                        if (i2 > i4 + i5) {
                            findAddition(i2, i3, size);
                            i2--;
                        }
                    }
                    for (i = i3; i > i6 + i7; i--) {
                        findRemoval(i2, i, size);
                    }
                }
                for (int i8 = 0; i8 < snake.size; i8++) {
                    int i9 = snake.f66x + i8;
                    int i10 = snake.f67y + i8;
                    int i11 = this.mCallback.areContentsTheSame(i9, i10) ? 1 : 2;
                    this.mOldItemStatuses[i9] = (i10 << 5) | i11;
                    this.mNewItemStatuses[i10] = (i9 << 5) | i11;
                }
                i2 = snake.f66x;
                i3 = snake.f67y;
            }
        }

        private void findRemoval(int i, int i2, int i3) {
            if (this.mNewItemStatuses[i2 - 1] != 0) {
                return;
            }
            findMatchingItem(i, i2, i3, true);
        }

        private static PostponedUpdate removePostponedUpdate(List<PostponedUpdate> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                PostponedUpdate postponedUpdate = list.get(size);
                if (postponedUpdate.posInOwnerList == i && postponedUpdate.removal == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).currentPos += z ? 1 : -1;
                        size++;
                    }
                    return postponedUpdate;
                }
                size--;
            }
            return null;
        }

        public int convertNewPositionToOld(int i) {
            if (i >= 0 && i < this.mNewListSize) {
                int i2 = this.mNewItemStatuses[i];
                if ((i2 & 31) != 0) {
                    return i2 >> 5;
                }
                return -1;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", new list size = " + this.mNewListSize);
        }

        public int convertOldPositionToNew(int i) {
            if (i >= 0 && i < this.mOldListSize) {
                int i2 = this.mOldItemStatuses[i];
                if ((i2 & 31) != 0) {
                    return i2 >> 5;
                }
                return -1;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", old list size = " + this.mOldListSize);
        }

        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            ArrayList arrayList = new ArrayList();
            int i = this.mOldListSize;
            int i2 = this.mNewListSize;
            int size = this.mSnakes.size();
            while (true) {
                size--;
                if (size < 0) {
                    batchingListUpdateCallback.dispatchLastEvent();
                    return;
                }
                Snake snake = this.mSnakes.get(size);
                int i3 = snake.size;
                int i4 = snake.f66x + i3;
                int i5 = snake.f67y + i3;
                if (i4 < i) {
                    dispatchRemovals(arrayList, batchingListUpdateCallback, i4, i - i4, i4);
                }
                if (i5 < i2) {
                    dispatchAdditions(arrayList, batchingListUpdateCallback, i4, i2 - i5, i5);
                }
                for (int i6 = i3 - 1; i6 >= 0; i6--) {
                    if ((this.mOldItemStatuses[snake.f66x + i6] & 31) == 2) {
                        batchingListUpdateCallback.onChanged(snake.f66x + i6, 1, this.mCallback.getChangePayload(snake.f66x + i6, snake.f67y + i6));
                    }
                }
                i = snake.f66x;
                i2 = snake.f67y;
            }
        }

        public void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        List<Snake> getSnakes() {
            return this.mSnakes;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$ItemCallback.class */
    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(T t, T t2);

        public abstract boolean areItemsTheSame(T t, T t2);

        public Object getChangePayload(T t, T t2) {
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$PostponedUpdate.class */
    public static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$Range.class */
    public static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.oldListStart = i;
            this.oldListEnd = i2;
            this.newListStart = i3;
            this.newListEnd = i4;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$Snake.class */
    public static class Snake {
        boolean removal;
        boolean reverse;
        int size;

        /* renamed from: x */
        int f66x;

        /* renamed from: y */
        int f67y;

        Snake() {
        }
    }

    private DiffUtil() {
    }

    public static DiffResult calculateDiff(Callback callback) {
        return calculateDiff(callback, true);
    }

    public static DiffResult calculateDiff(Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int abs = oldListSize + newListSize + Math.abs(oldListSize - newListSize);
        int i = abs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake diffPartial = diffPartial(callback, range.oldListStart, range.oldListEnd, range.newListStart, range.newListEnd, iArr, iArr2, abs);
            if (diffPartial != null) {
                if (diffPartial.size > 0) {
                    arrayList.add(diffPartial);
                }
                diffPartial.f66x += range.oldListStart;
                diffPartial.f67y += range.newListStart;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                if (diffPartial.reverse) {
                    range2.oldListEnd = diffPartial.f66x;
                    range2.newListEnd = diffPartial.f67y;
                } else if (diffPartial.removal) {
                    range2.oldListEnd = diffPartial.f66x - 1;
                    range2.newListEnd = diffPartial.f67y;
                } else {
                    range2.oldListEnd = diffPartial.f66x;
                    range2.newListEnd = diffPartial.f67y - 1;
                }
                arrayList2.add(range2);
                if (!diffPartial.reverse) {
                    range.oldListStart = diffPartial.f66x + diffPartial.size;
                    range.newListStart = diffPartial.f67y + diffPartial.size;
                } else if (diffPartial.removal) {
                    range.oldListStart = diffPartial.f66x + diffPartial.size + 1;
                    range.newListStart = diffPartial.f67y + diffPartial.size;
                } else {
                    range.oldListStart = diffPartial.f66x + diffPartial.size;
                    range.newListStart = diffPartial.f67y + diffPartial.size + 1;
                }
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, SNAKE_COMPARATOR);
        return new DiffResult(callback, arrayList, iArr, iArr2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a1, code lost:
        if (r10[r0 - 1] < r10[r0 + 1]) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a7, code lost:
        if (r11[r0 - 1] < r11[r0 + 1]) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.recyclerview.widget.DiffUtil.Snake diffPartial(androidx.recyclerview.widget.DiffUtil.Callback r5, int r6, int r7, int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.diffPartial(androidx.recyclerview.widget.DiffUtil$Callback, int, int, int, int, int[], int[], int):androidx.recyclerview.widget.DiffUtil$Snake");
    }
}
