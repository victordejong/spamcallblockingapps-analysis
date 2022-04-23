package android.support.p004v7.widget;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.widget.ChildHelper */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/ChildHelper.class */
public class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.widget.ChildHelper$Bucket */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/ChildHelper$Bucket.class */
    public static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        Bucket() {
        }

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        void clear(int i) {
            if (i < 64) {
                this.mData &= (1 << i) ^ (-1);
            } else if (this.mNext != null) {
                this.mNext.clear(i - 64);
            }
        }

        int countOnesBefore(int i) {
            return this.mNext == null ? i >= 64 ? Long.bitCount(this.mData) : Long.bitCount(this.mData & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.mData & ((1 << i) - 1)) : this.mNext.countOnesBefore(i - 64) + Long.bitCount(this.mData);
        }

        boolean get(int i) {
            if (i >= 64) {
                ensureNext();
                return this.mNext.get(i - 64);
            }
            return (this.mData & (1 << i)) != 0;
        }

        void insert(int i, boolean z) {
            if (i >= 64) {
                ensureNext();
                this.mNext.insert(i - 64, z);
                return;
            }
            boolean z2 = (this.mData & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            this.mData = (this.mData & j) | (((j ^ (-1)) & this.mData) << 1);
            if (z) {
                set(i);
            } else {
                clear(i);
            }
            if (z2 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z2);
            }
        }

        boolean remove(int i) {
            if (i >= 64) {
                ensureNext();
                return this.mNext.remove(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.mData & j) != 0;
            this.mData &= j ^ (-1);
            long j2 = j - 1;
            this.mData = (this.mData & j2) | Long.rotateRight((j2 ^ (-1)) & this.mData, 1);
            if (this.mNext != null) {
                if (this.mNext.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z;
        }

        void reset() {
            this.mData = 0L;
            if (this.mNext != null) {
                this.mNext.reset();
            }
        }

        void set(int i) {
            if (i >= 64) {
                ensureNext();
                this.mNext.set(i - 64);
                return;
            }
            this.mData |= 1 << i;
        }

        public String toString() {
            String str;
            if (this.mNext == null) {
                str = Long.toBinaryString(this.mData);
            } else {
                str = this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.widget.ChildHelper$Callback */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/ChildHelper$Callback.class */
    public interface Callback {
        void addView(View view, int i);

        void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i);

        View getChildAt(int i);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.mBucket.get(r8) == false) goto L_0x003b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getOffset(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L_0x0006
            r0 = -1
            return r0
        L_0x0006:
            r0 = r5
            android.support.v7.widget.ChildHelper$Callback r0 = r0.mCallback
            int r0 = r0.getChildCount()
            r7 = r0
            r0 = r6
            r8 = r0
        L_0x0012:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r6
            r1 = r8
            r2 = r5
            android.support.v7.widget.ChildHelper$Bucket r2 = r2.mBucket
            r3 = r8
            int r2 = r2.countOnesBefore(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x002a:
            r0 = r5
            android.support.v7.widget.ChildHelper$Bucket r0 = r0.mBucket
            r1 = r8
            boolean r0 = r0.get(r1)
            if (r0 == 0) goto L_0x003b
            int r8 = r8 + 1
            goto L_0x002a
        L_0x003b:
            r0 = r8
            return r0
        L_0x003d:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L_0x0012
        L_0x0045:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.widget.ChildHelper.getOffset(int):int");
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.onLeftHiddenState(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addView(View view, int i, boolean z) {
        int childCount = i < 0 ? this.mCallback.getChildCount() : getOffset(i);
        this.mBucket.insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, childCount);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addView(View view, boolean z) {
        addView(view, -1, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int childCount = i < 0 ? this.mCallback.getChildCount() : getOffset(i);
        this.mBucket.insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, childCount, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachViewFromParent(int i) {
        int offset = getOffset(i);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findHiddenNonRemovedView(int i) {
        int size = this.mHiddenViews.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.mHiddenViews.get(i2);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (!(childViewHolder.getLayoutPosition() != i || childViewHolder.isInvalid() || childViewHolder.isRemoved())) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getChildAt(int i) {
        return this.mCallback.getChildAt(getOffset(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getUnfilteredChildAt(int i) {
        return this.mCallback.getChildAt(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.mBucket.set(indexOfChild);
        hideViewInternal(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int indexOfChild(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild != -1 && !this.mBucket.get(indexOfChild)) {
            return indexOfChild - this.mBucket.countOnesBefore(indexOfChild);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeView(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (this.mBucket.remove(indexOfChild)) {
                unhideViewInternal(view);
            }
            this.mCallback.removeViewAt(indexOfChild);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeViewAt(int i) {
        int offset = getOffset(i);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt != null) {
            if (this.mBucket.remove(offset)) {
                unhideViewInternal(childAt);
            }
            this.mCallback.removeViewAt(offset);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeViewIfHidden(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild == -1) {
            unhideViewInternal(view);
            return true;
        } else if (!this.mBucket.get(indexOfChild)) {
            return false;
        } else {
            this.mBucket.remove(indexOfChild);
            unhideViewInternal(view);
            this.mCallback.removeViewAt(indexOfChild);
            return true;
        }
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unhide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (!this.mBucket.get(indexOfChild)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        } else {
            this.mBucket.clear(indexOfChild);
            unhideViewInternal(view);
        }
    }
}
