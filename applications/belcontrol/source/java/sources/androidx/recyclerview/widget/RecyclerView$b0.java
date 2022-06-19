package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b0.class */
public abstract class RecyclerView$b0 {
    public static final int FLAG_ADAPTER_FULLUPDATE = 1024;
    public static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
    public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    public static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
    public static final int FLAG_BOUND = 1;
    public static final int FLAG_IGNORE = 128;
    public static final int FLAG_INVALID = 4;
    public static final int FLAG_MOVED = 2048;
    public static final int FLAG_NOT_RECYCLABLE = 16;
    public static final int FLAG_REMOVED = 8;
    public static final int FLAG_RETURNED_FROM_SCRAP = 32;
    public static final int FLAG_TMP_DETACHED = 256;
    public static final int FLAG_UPDATE = 2;
    private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
    public static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
    public final View itemView;
    public int mFlags;
    public WeakReference<RecyclerView> mNestedRecyclerView;
    public RecyclerView mOwnerRecyclerView;
    public int mPosition = -1;
    public int mOldPosition = -1;
    public long mItemId = -1;
    public int mItemViewType = -1;
    public int mPreLayoutPosition = -1;
    public RecyclerView$b0 mShadowedHolder = null;
    public RecyclerView$b0 mShadowingHolder = null;
    public List<Object> mPayloads = null;
    public List<Object> mUnmodifiedPayloads = null;
    private int mIsRecyclableCount = 0;
    public RecyclerView$u mScrapContainer = null;
    public boolean mInChangeScrap = false;
    private int mWasImportantForAccessibilityBeforeHidden = 0;
    public int mPendingAccessibilityState = -1;

    public RecyclerView$b0(View view) {
        if (view != null) {
            this.itemView = view;
            return;
        }
        throw new IllegalArgumentException("itemView may not be null");
    }

    private void createPayloadsIfNeeded() {
        if (this.mPayloads == null) {
            ArrayList arrayList = new ArrayList();
            this.mPayloads = arrayList;
            this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
        }
    }

    public void addChangePayload(Object obj) {
        if (obj == null) {
            addFlags(1024);
        } else if ((1024 & this.mFlags) != 0) {
        } else {
            createPayloadsIfNeeded();
            this.mPayloads.add(obj);
        }
    }

    public void addFlags(int i) {
        this.mFlags = i | this.mFlags;
    }

    public void clearOldPosition() {
        this.mOldPosition = -1;
        this.mPreLayoutPosition = -1;
    }

    public void clearPayload() {
        List<Object> list = this.mPayloads;
        if (list != null) {
            list.clear();
        }
        this.mFlags &= -1025;
    }

    public void clearReturnedFromScrapFlag() {
        this.mFlags &= -33;
    }

    public void clearTmpDetachFlag() {
        this.mFlags &= -257;
    }

    public boolean doesTransientStatePreventRecycling() {
        return (this.mFlags & 16) == 0 && jb.P(this.itemView);
    }

    public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
        addFlags(8);
        offsetPosition(i2, z);
        this.mPosition = i;
    }

    public final int getAdapterPosition() {
        RecyclerView recyclerView = this.mOwnerRecyclerView;
        if (recyclerView == null) {
            return -1;
        }
        return recyclerView.getAdapterPositionFor(this);
    }

    public final long getItemId() {
        return this.mItemId;
    }

    public final int getItemViewType() {
        return this.mItemViewType;
    }

    public final int getLayoutPosition() {
        int i = this.mPreLayoutPosition;
        int i2 = i;
        if (i == -1) {
            i2 = this.mPosition;
        }
        return i2;
    }

    public final int getOldPosition() {
        return this.mOldPosition;
    }

    @Deprecated
    public final int getPosition() {
        int i = this.mPreLayoutPosition;
        int i2 = i;
        if (i == -1) {
            i2 = this.mPosition;
        }
        return i2;
    }

    public List<Object> getUnmodifiedPayloads() {
        if ((this.mFlags & 1024) == 0) {
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }
        return FULLUPDATE_PAYLOADS;
    }

    public boolean hasAnyOfTheFlags(int i) {
        return (i & this.mFlags) != 0;
    }

    public boolean isAdapterPositionUnknown() {
        return (this.mFlags & 512) != 0 || isInvalid();
    }

    public boolean isAttachedToTransitionOverlay() {
        return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
    }

    public boolean isBound() {
        boolean z = true;
        if ((this.mFlags & 1) == 0) {
            z = false;
        }
        return z;
    }

    public boolean isInvalid() {
        return (this.mFlags & 4) != 0;
    }

    public final boolean isRecyclable() {
        return (this.mFlags & 16) == 0 && !jb.P(this.itemView);
    }

    public boolean isRemoved() {
        return (this.mFlags & 8) != 0;
    }

    public boolean isScrap() {
        return this.mScrapContainer != null;
    }

    public boolean isTmpDetached() {
        return (this.mFlags & 256) != 0;
    }

    public boolean isUpdated() {
        return (this.mFlags & 2) != 0;
    }

    public boolean needsUpdate() {
        return (this.mFlags & 2) != 0;
    }

    public void offsetPosition(int i, boolean z) {
        if (this.mOldPosition == -1) {
            this.mOldPosition = this.mPosition;
        }
        if (this.mPreLayoutPosition == -1) {
            this.mPreLayoutPosition = this.mPosition;
        }
        if (z) {
            this.mPreLayoutPosition += i;
        }
        this.mPosition += i;
        if (this.itemView.getLayoutParams() != null) {
            ((RecyclerView$LayoutParams) this.itemView.getLayoutParams()).f1338c = true;
        }
    }

    public void onEnteredHiddenState(RecyclerView recyclerView) {
        int i = this.mPendingAccessibilityState;
        if (i == -1) {
            i = jb.z(this.itemView);
        }
        this.mWasImportantForAccessibilityBeforeHidden = i;
        recyclerView.setChildImportantForAccessibilityInternal(this, 4);
    }

    public void onLeftHiddenState(RecyclerView recyclerView) {
        recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
        this.mWasImportantForAccessibilityBeforeHidden = 0;
    }

    public void resetInternal() {
        this.mFlags = 0;
        this.mPosition = -1;
        this.mOldPosition = -1;
        this.mItemId = -1L;
        this.mPreLayoutPosition = -1;
        this.mIsRecyclableCount = 0;
        this.mShadowedHolder = null;
        this.mShadowingHolder = null;
        clearPayload();
        this.mWasImportantForAccessibilityBeforeHidden = 0;
        this.mPendingAccessibilityState = -1;
        RecyclerView.clearNestedRecyclerViewIfNotNested(this);
    }

    public void saveOldPosition() {
        if (this.mOldPosition == -1) {
            this.mOldPosition = this.mPosition;
        }
    }

    public void setFlags(int i, int i2) {
        this.mFlags = (i & i2) | (this.mFlags & (i2 ^ (-1)));
    }

    public final void setIsRecyclable(boolean z) {
        int i;
        int i2 = this.mIsRecyclableCount;
        int i3 = z ? i2 - 1 : i2 + 1;
        this.mIsRecyclableCount = i3;
        if (i3 < 0) {
            this.mIsRecyclableCount = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            return;
        }
        if (!z && i3 == 1) {
            i = this.mFlags | 16;
        } else if (!z || i3 != 0) {
            return;
        } else {
            i = this.mFlags & (-17);
        }
        this.mFlags = i;
    }

    public void setScrapContainer(RecyclerView$u recyclerView$u, boolean z) {
        this.mScrapContainer = recyclerView$u;
        this.mInChangeScrap = z;
    }

    public boolean shouldBeKeptAsChild() {
        return (this.mFlags & 16) != 0;
    }

    public boolean shouldIgnore() {
        return (this.mFlags & 128) != 0;
    }

    public void stopIgnoring() {
        this.mFlags &= -129;
    }

    public String toString() {
        String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
        StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
        if (isScrap()) {
            sb.append(" scrap ");
            sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
        }
        if (isInvalid()) {
            sb.append(" invalid");
        }
        if (!isBound()) {
            sb.append(" unbound");
        }
        if (needsUpdate()) {
            sb.append(" update");
        }
        if (isRemoved()) {
            sb.append(" removed");
        }
        if (shouldIgnore()) {
            sb.append(" ignored");
        }
        if (isTmpDetached()) {
            sb.append(" tmpDetached");
        }
        if (!isRecyclable()) {
            sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
        }
        if (isAdapterPositionUnknown()) {
            sb.append(" undefined adapter position");
        }
        if (this.itemView.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    public void unScrap() {
        this.mScrapContainer.m6151J(this);
    }

    public boolean wasReturnedFromScrap() {
        return (this.mFlags & 32) != 0;
    }
}
