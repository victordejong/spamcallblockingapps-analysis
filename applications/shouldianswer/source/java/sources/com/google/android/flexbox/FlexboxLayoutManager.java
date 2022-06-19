package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.customview.p026a.AbstractC0610a;
import androidx.recyclerview.widget.AbstractC1014i;
import androidx.recyclerview.widget.C1011g;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager.class */
public class FlexboxLayoutManager extends RecyclerView.AbstractC0956i implements RecyclerView.AbstractC0971s.AbstractC0973b, FlexContainer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DEBUG = false;
    private static final String TAG = "FlexboxLayoutManager";
    private static final Rect TEMP_RECT = new Rect();
    private int mAlignItems;
    private AnchorInfo mAnchorInfo;
    private final Context mContext;
    private int mDirtyPosition;
    private int mFlexDirection;
    private List<FlexLine> mFlexLines;
    private FlexboxHelper.FlexLinesResult mFlexLinesResult;
    private int mFlexWrap;
    private final FlexboxHelper mFlexboxHelper;
    private boolean mFromBottomToTop;
    private boolean mIsRtl;
    private int mJustifyContent;
    private int mLastHeight;
    private int mLastWidth;
    private LayoutState mLayoutState;
    private AbstractC1014i mOrientationHelper;
    private View mParent;
    private SavedState mPendingSavedState;
    private int mPendingScrollPosition;
    private int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private RecyclerView.C0968p mRecycler;
    private RecyclerView.C0974t mState;
    private AbstractC1014i mSubOrientationHelper;
    private SparseArray<View> mViewCache;

    /* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$AnchorInfo.class */
    public class AnchorInfo {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private boolean mAssignedFromSavedState;
        private int mCoordinate;
        private int mFlexLinePosition;
        private boolean mLayoutFromEnd;
        private int mPerpendicularCoordinate;
        private int mPosition;
        private boolean mValid;

        private AnchorInfo() {
            FlexboxLayoutManager.this = r4;
            this.mPerpendicularCoordinate = 0;
        }

        public void assignCoordinateFromPadding() {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.mIsRtl) {
                this.mCoordinate = this.mLayoutFromEnd ? FlexboxLayoutManager.this.mOrientationHelper.mo4568d() : FlexboxLayoutManager.this.mOrientationHelper.mo4570c();
            } else {
                this.mCoordinate = this.mLayoutFromEnd ? FlexboxLayoutManager.this.mOrientationHelper.mo4568d() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.mOrientationHelper.mo4570c();
            }
        }

        public void assignFromView(View view) {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.mIsRtl) {
                if (this.mLayoutFromEnd) {
                    this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.mo4571b(view) + FlexboxLayoutManager.this.mOrientationHelper.m4575b();
                } else {
                    this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.mo4572a(view);
                }
            } else if (this.mLayoutFromEnd) {
                this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.mo4572a(view) + FlexboxLayoutManager.this.mOrientationHelper.m4575b();
            } else {
                this.mCoordinate = FlexboxLayoutManager.this.mOrientationHelper.mo4571b(view);
            }
            this.mPosition = FlexboxLayoutManager.this.getPosition(view);
            int i = 0;
            this.mAssignedFromSavedState = false;
            int i2 = FlexboxLayoutManager.this.mFlexboxHelper.mIndexToFlexLine[this.mPosition];
            if (i2 != -1) {
                i = i2;
            }
            this.mFlexLinePosition = i;
            if (FlexboxLayoutManager.this.mFlexLines.size() > this.mFlexLinePosition) {
                this.mPosition = ((FlexLine) FlexboxLayoutManager.this.mFlexLines.get(this.mFlexLinePosition)).mFirstIndex;
            }
        }

        public void reset() {
            this.mPosition = -1;
            this.mFlexLinePosition = -1;
            this.mCoordinate = AbstractC0610a.INVALID_ID;
            boolean z = false;
            this.mValid = false;
            this.mAssignedFromSavedState = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.mFlexWrap == 0) {
                    if (FlexboxLayoutManager.this.mFlexDirection == 1) {
                        z = true;
                    }
                    this.mLayoutFromEnd = z;
                    return;
                }
                boolean z2 = false;
                if (FlexboxLayoutManager.this.mFlexWrap == 2) {
                    z2 = true;
                }
                this.mLayoutFromEnd = z2;
            } else if (FlexboxLayoutManager.this.mFlexWrap == 0) {
                boolean z3 = false;
                if (FlexboxLayoutManager.this.mFlexDirection == 3) {
                    z3 = true;
                }
                this.mLayoutFromEnd = z3;
            } else {
                boolean z4 = false;
                if (FlexboxLayoutManager.this.mFlexWrap == 2) {
                    z4 = true;
                }
                this.mLayoutFromEnd = z4;
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mFlexLinePosition=" + this.mFlexLinePosition + ", mCoordinate=" + this.mCoordinate + ", mPerpendicularCoordinate=" + this.mPerpendicularCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + ", mAssignedFromSavedState=" + this.mAssignedFromSavedState + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.C0961j implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator<LayoutParams>() { // from class: com.google.android.flexbox.FlexboxLayoutManager.LayoutParams.1
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        };
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private boolean mWrapBefore;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
        }

        protected LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
            this.mFlexGrow = parcel.readFloat();
            this.mFlexShrink = parcel.readFloat();
            this.mAlignSelf = parcel.readInt();
            this.mFlexBasisPercent = parcel.readFloat();
            this.mMinWidth = parcel.readInt();
            this.mMinHeight = parcel.readInt();
            this.mMaxWidth = parcel.readInt();
            this.mMaxHeight = parcel.readInt();
            this.mWrapBefore = parcel.readByte() != 0;
            this.bottomMargin = parcel.readInt();
            this.leftMargin = parcel.readInt();
            this.rightMargin = parcel.readInt();
            this.topMargin = parcel.readInt();
            this.height = parcel.readInt();
            this.width = parcel.readInt();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
        }

        public LayoutParams(RecyclerView.C0961j c0961j) {
            super(c0961j);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.C0961j) layoutParams);
            this.mFlexGrow = FlexItem.FLEX_GROW_DEFAULT;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = FlexItem.MAX_SIZE;
            this.mMaxHeight = FlexItem.MAX_SIZE;
            this.mFlexGrow = layoutParams.mFlexGrow;
            this.mFlexShrink = layoutParams.mFlexShrink;
            this.mAlignSelf = layoutParams.mAlignSelf;
            this.mFlexBasisPercent = layoutParams.mFlexBasisPercent;
            this.mMinWidth = layoutParams.mMinWidth;
            this.mMinHeight = layoutParams.mMinHeight;
            this.mMaxWidth = layoutParams.mMaxWidth;
            this.mMaxHeight = layoutParams.mMaxHeight;
            this.mWrapBefore = layoutParams.mWrapBefore;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return this.height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return this.bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return this.leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return this.rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return this.topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return 1;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return this.width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int i) {
            this.mAlignSelf = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float f) {
            this.mFlexBasisPercent = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float f) {
            this.mFlexGrow = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float f) {
            this.mFlexShrink = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int i) {
            this.height = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int i) {
            this.mMaxHeight = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int i) {
            this.mMaxWidth = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int i) {
            this.mMinHeight = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.mMinWidth = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int i) {
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int i) {
            this.width = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean z) {
            this.mWrapBefore = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.bottomMargin);
            parcel.writeInt(this.leftMargin);
            parcel.writeInt(this.rightMargin);
            parcel.writeInt(this.topMargin);
            parcel.writeInt(this.height);
            parcel.writeInt(this.width);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$LayoutState.class */
    public static class LayoutState {
        private static final int ITEM_DIRECTION_TAIL = 1;
        private static final int LAYOUT_END = 1;
        private static final int LAYOUT_START = -1;
        private static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
        private int mAvailable;
        private int mFlexLinePosition;
        private boolean mInfinite;
        private int mItemDirection;
        private int mLastScrollDelta;
        private int mLayoutDirection;
        private int mOffset;
        private int mPosition;
        private int mScrollingOffset;
        private boolean mShouldRecycle;

        private LayoutState() {
            this.mItemDirection = 1;
            this.mLayoutDirection = 1;
        }

        static /* synthetic */ int access$1508(LayoutState layoutState) {
            int i = layoutState.mFlexLinePosition;
            layoutState.mFlexLinePosition = i + 1;
            return i;
        }

        static /* synthetic */ int access$1510(LayoutState layoutState) {
            int i = layoutState.mFlexLinePosition;
            layoutState.mFlexLinePosition = i - 1;
            return i;
        }

        public boolean hasMore(RecyclerView.C0974t c0974t, List<FlexLine> list) {
            int i;
            int i2 = this.mPosition;
            return i2 >= 0 && i2 < c0974t.m4843e() && (i = this.mFlexLinePosition) >= 0 && i < list.size();
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.mAvailable + ", mFlexLinePosition=" + this.mFlexLinePosition + ", mPosition=" + this.mPosition + ", mOffset=" + this.mOffset + ", mScrollingOffset=" + this.mScrollingOffset + ", mLastScrollDelta=" + this.mLastScrollDelta + ", mItemDirection=" + this.mItemDirection + ", mLayoutDirection=" + this.mLayoutDirection + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.flexbox.FlexboxLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private int mAnchorOffset;
        private int mAnchorPosition;

        SavedState() {
        }

        private SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }

        public boolean hasValidAnchor(int i) {
            int i2 = this.mAnchorPosition;
            return i2 >= 0 && i2 < i;
        }

        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.mAnchorPosition + ", mAnchorOffset=" + this.mAnchorOffset + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    public FlexboxLayoutManager(Context context, int i) {
        this(context, i, 1);
    }

    public FlexboxLayoutManager(Context context, int i, int i2) {
        this.mFlexLines = new ArrayList();
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mAnchorInfo = new AnchorInfo();
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = AbstractC0610a.INVALID_ID;
        this.mLastWidth = AbstractC0610a.INVALID_ID;
        this.mLastHeight = AbstractC0610a.INVALID_ID;
        this.mViewCache = new SparseArray<>();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
        setFlexDirection(i);
        setFlexWrap(i2);
        setAlignItems(4);
        setAutoMeasureEnabled(true);
        this.mContext = context;
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mFlexLines = new ArrayList();
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mAnchorInfo = new AnchorInfo();
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = AbstractC0610a.INVALID_ID;
        this.mLastWidth = AbstractC0610a.INVALID_ID;
        this.mLastHeight = AbstractC0610a.INVALID_ID;
        this.mViewCache = new SparseArray<>();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
        RecyclerView.AbstractC0956i.C0960b properties = getProperties(context, attributeSet, i, i2);
        int i3 = properties.f2953a;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.f2955c) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.f2955c) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        setAutoMeasureEnabled(true);
        this.mContext = context;
    }

    private boolean canViewBeRecycledFromEnd(View view, int i) {
        boolean z = true;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            return this.mOrientationHelper.mo4572a(view) >= this.mOrientationHelper.mo4566e() - i;
        }
        if (this.mOrientationHelper.mo4571b(view) > i) {
            z = false;
        }
        return z;
    }

    private boolean canViewBeRecycledFromStart(View view, int i) {
        boolean z = true;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            return this.mOrientationHelper.mo4571b(view) <= i;
        }
        if (this.mOrientationHelper.mo4566e() - this.mOrientationHelper.mo4572a(view) > i) {
            z = false;
        }
        return z;
    }

    private void clearFlexLines() {
        this.mFlexLines.clear();
        this.mAnchorInfo.reset();
        this.mAnchorInfo.mPerpendicularCoordinate = 0;
    }

    private int computeScrollExtent(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        int m4843e = c0974t.m4843e();
        ensureOrientationHelper();
        View findFirstReferenceChild = findFirstReferenceChild(m4843e);
        View findLastReferenceChild = findLastReferenceChild(m4843e);
        if (c0974t.m4843e() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        return Math.min(this.mOrientationHelper.mo4564f(), this.mOrientationHelper.mo4571b(findLastReferenceChild) - this.mOrientationHelper.mo4572a(findFirstReferenceChild));
    }

    private int computeScrollOffset(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        int m4843e = c0974t.m4843e();
        View findFirstReferenceChild = findFirstReferenceChild(m4843e);
        View findLastReferenceChild = findLastReferenceChild(m4843e);
        if (c0974t.m4843e() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        int position = getPosition(findFirstReferenceChild);
        int position2 = getPosition(findLastReferenceChild);
        int abs = Math.abs(this.mOrientationHelper.mo4571b(findLastReferenceChild) - this.mOrientationHelper.mo4572a(findFirstReferenceChild));
        int i = this.mFlexboxHelper.mIndexToFlexLine[position];
        if (i == 0 || i == -1) {
            return 0;
        }
        return Math.round((i * (abs / ((this.mFlexboxHelper.mIndexToFlexLine[position2] - i) + 1))) + (this.mOrientationHelper.mo4570c() - this.mOrientationHelper.mo4572a(findFirstReferenceChild)));
    }

    private int computeScrollRange(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        int m4843e = c0974t.m4843e();
        View findFirstReferenceChild = findFirstReferenceChild(m4843e);
        View findLastReferenceChild = findLastReferenceChild(m4843e);
        if (c0974t.m4843e() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.mOrientationHelper.mo4571b(findLastReferenceChild) - this.mOrientationHelper.mo4572a(findFirstReferenceChild)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * c0974t.m4843e());
    }

    private void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new LayoutState();
        }
    }

    private void ensureOrientationHelper() {
        if (this.mOrientationHelper != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.mFlexWrap == 0) {
                this.mOrientationHelper = AbstractC1014i.m4577a(this);
                this.mSubOrientationHelper = AbstractC1014i.m4574b(this);
                return;
            }
            this.mOrientationHelper = AbstractC1014i.m4574b(this);
            this.mSubOrientationHelper = AbstractC1014i.m4577a(this);
        } else if (this.mFlexWrap == 0) {
            this.mOrientationHelper = AbstractC1014i.m4574b(this);
            this.mSubOrientationHelper = AbstractC1014i.m4577a(this);
        } else {
            this.mOrientationHelper = AbstractC1014i.m4577a(this);
            this.mSubOrientationHelper = AbstractC1014i.m4574b(this);
        }
    }

    private int fill(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, LayoutState layoutState) {
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            if (layoutState.mAvailable < 0) {
                layoutState.mScrollingOffset += layoutState.mAvailable;
            }
            recycleByLayoutState(c0968p, layoutState);
        }
        int i = layoutState.mAvailable;
        int i2 = layoutState.mAvailable;
        int i3 = 0;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        while (true) {
            if ((i2 > 0 || this.mLayoutState.mInfinite) && layoutState.hasMore(c0974t, this.mFlexLines)) {
                FlexLine flexLine = this.mFlexLines.get(layoutState.mFlexLinePosition);
                layoutState.mPosition = flexLine.mFirstIndex;
                i3 += layoutFlexLine(flexLine, layoutState);
                if (isMainAxisDirectionHorizontal || !this.mIsRtl) {
                    layoutState.mOffset += flexLine.getCrossSize() * layoutState.mLayoutDirection;
                } else {
                    layoutState.mOffset -= flexLine.getCrossSize() * layoutState.mLayoutDirection;
                }
                i2 -= flexLine.getCrossSize();
            }
        }
        layoutState.mAvailable -= i3;
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            layoutState.mScrollingOffset += i3;
            if (layoutState.mAvailable < 0) {
                layoutState.mScrollingOffset += layoutState.mAvailable;
            }
            recycleByLayoutState(c0968p, layoutState);
        }
        return i - layoutState.mAvailable;
    }

    private View findFirstReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(0, getChildCount(), i);
        if (findReferenceChild == null) {
            return null;
        }
        int i2 = this.mFlexboxHelper.mIndexToFlexLine[getPosition(findReferenceChild)];
        if (i2 != -1) {
            return findFirstReferenceViewInLine(findReferenceChild, this.mFlexLines.get(i2));
        }
        return null;
    }

    private View findFirstReferenceViewInLine(View view, FlexLine flexLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = flexLine.mItemCount;
        int i2 = 1;
        while (true) {
            View view2 = view;
            if (i2 < i) {
                View childAt = getChildAt(i2);
                view = view2;
                if (childAt != null) {
                    if (childAt.getVisibility() == 8) {
                        view = view2;
                    } else if (!this.mIsRtl || isMainAxisDirectionHorizontal) {
                        view = view2;
                        if (this.mOrientationHelper.mo4572a(view2) <= this.mOrientationHelper.mo4572a(childAt)) {
                        }
                        view = childAt;
                    } else {
                        view = view2;
                        if (this.mOrientationHelper.mo4571b(view2) >= this.mOrientationHelper.mo4571b(childAt)) {
                        }
                        view = childAt;
                    }
                }
                i2++;
            } else {
                return view2;
            }
        }
    }

    private View findLastReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(getChildCount() - 1, -1, i);
        if (findReferenceChild == null) {
            return null;
        }
        return findLastReferenceViewInLine(findReferenceChild, this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[getPosition(findReferenceChild)]));
    }

    private View findLastReferenceViewInLine(View view, FlexLine flexLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = getChildCount() - 2;
        int childCount2 = getChildCount();
        int i = flexLine.mItemCount;
        while (childCount > (childCount2 - i) - 1) {
            View childAt = getChildAt(childCount);
            View view2 = view;
            if (childAt != null) {
                if (childAt.getVisibility() == 8) {
                    view2 = view;
                } else if (!this.mIsRtl || isMainAxisDirectionHorizontal) {
                    view2 = view;
                    if (this.mOrientationHelper.mo4571b(view) >= this.mOrientationHelper.mo4571b(childAt)) {
                    }
                    view2 = childAt;
                } else {
                    view2 = view;
                    if (this.mOrientationHelper.mo4572a(view) <= this.mOrientationHelper.mo4572a(childAt)) {
                    }
                    view2 = childAt;
                }
            }
            childCount--;
            view = view2;
        }
        return view;
    }

    private View findOneVisibleChild(int i, int i2, boolean z) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (isViewVisible(childAt, z)) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    private View findReferenceChild(int i, int i2, int i3) {
        ensureOrientationHelper();
        ensureLayoutState();
        int mo4570c = this.mOrientationHelper.mo4570c();
        int mo4568d = this.mOrientationHelper.mo4568d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view != null) {
                    view3 = view;
                }
                return view3;
            }
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            View view4 = view;
            View view5 = view3;
            if (position >= 0) {
                view4 = view;
                view5 = view3;
                if (position >= i3) {
                    continue;
                } else if (((RecyclerView.C0961j) childAt.getLayoutParams()).isItemRemoved()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = childAt;
                        view4 = view;
                    }
                } else if (this.mOrientationHelper.mo4572a(childAt) >= mo4570c && this.mOrientationHelper.mo4571b(childAt) <= mo4568d) {
                    return childAt;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = childAt;
                        view5 = view3;
                    }
                }
            }
            i += i4;
            view = view4;
            view2 = view5;
        }
    }

    private int fixLayoutEndGap(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, boolean z) {
        int i2;
        int mo4568d;
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            int mo4570c = i - this.mOrientationHelper.mo4570c();
            if (mo4570c <= 0) {
                return 0;
            }
            i2 = handleScrollingCrossAxis(mo4570c, c0968p, c0974t);
        } else {
            int mo4568d2 = this.mOrientationHelper.mo4568d() - i;
            if (mo4568d2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingCrossAxis(-mo4568d2, c0968p, c0974t);
        }
        if (!z || (mo4568d = this.mOrientationHelper.mo4568d() - (i + i2)) <= 0) {
            return i2;
        }
        this.mOrientationHelper.mo4573a(mo4568d);
        return mo4568d + i2;
    }

    private int fixLayoutStartGap(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, boolean z) {
        int i2;
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            int mo4570c = i - this.mOrientationHelper.mo4570c();
            if (mo4570c <= 0) {
                return 0;
            }
            i2 = -handleScrollingCrossAxis(mo4570c, c0968p, c0974t);
        } else {
            int mo4568d = this.mOrientationHelper.mo4568d() - i;
            if (mo4568d <= 0) {
                return 0;
            }
            i2 = handleScrollingCrossAxis(-mo4568d, c0968p, c0974t);
        }
        int i3 = i2;
        if (z) {
            int mo4570c2 = (i + i2) - this.mOrientationHelper.mo4570c();
            i3 = i2;
            if (mo4570c2 > 0) {
                this.mOrientationHelper.mo4573a(-mo4570c2);
                i3 = i2 - mo4570c2;
            }
        }
        return i3;
    }

    private int getChildBottom(View view) {
        return getDecoratedBottom(view) + ((RecyclerView.C0961j) view.getLayoutParams()).bottomMargin;
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private int getChildLeft(View view) {
        return getDecoratedLeft(view) - ((RecyclerView.C0961j) view.getLayoutParams()).leftMargin;
    }

    private int getChildRight(View view) {
        return getDecoratedRight(view) + ((RecyclerView.C0961j) view.getLayoutParams()).rightMargin;
    }

    private int getChildTop(View view) {
        return getDecoratedTop(view) - ((RecyclerView.C0961j) view.getLayoutParams()).topMargin;
    }

    private int handleScrollingCrossAxis(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureOrientationHelper();
        int i2 = 1;
        this.mLayoutState.mShouldRecycle = true;
        boolean z = !isMainAxisDirectionHorizontal() && this.mIsRtl;
        if (!z ? i <= 0 : i >= 0) {
            i2 = -1;
        }
        int abs = Math.abs(i);
        updateLayoutState(i2, abs);
        int fill = this.mLayoutState.mScrollingOffset + fill(c0968p, c0974t, this.mLayoutState);
        if (fill < 0) {
            return 0;
        }
        if (z) {
            if (abs > fill) {
                i = (-i2) * fill;
            }
        } else if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.mo4573a(-i);
        this.mLayoutState.mLastScrollDelta = i;
        return i;
    }

    private int handleScrollingMainAxis(int i) {
        int i2;
        int i3;
        boolean z = false;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureOrientationHelper();
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.mParent;
        int width = isMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int width2 = isMainAxisDirectionHorizontal ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            z = true;
        }
        if (!z) {
            if (i > 0) {
                i2 = Math.min((width2 - this.mAnchorInfo.mPerpendicularCoordinate) - width, i);
            } else if (this.mAnchorInfo.mPerpendicularCoordinate + i >= 0) {
                i2 = i;
            } else {
                i3 = this.mAnchorInfo.mPerpendicularCoordinate;
                i2 = -i3;
            }
            return i2;
        }
        int abs = Math.abs(i);
        if (i >= 0) {
            i2 = i;
            if (this.mAnchorInfo.mPerpendicularCoordinate + i > 0) {
                i3 = this.mAnchorInfo.mPerpendicularCoordinate;
            }
            return i2;
        }
        i3 = Math.min((width2 + this.mAnchorInfo.mPerpendicularCoordinate) - width, abs);
        i2 = -i3;
        return i2;
    }

    private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        boolean z = false;
        if (i3 <= 0 || i == i3) {
            if (mode == Integer.MIN_VALUE) {
                boolean z2 = false;
                if (size >= i) {
                    z2 = true;
                }
                return z2;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z = true;
                }
                return z;
            }
        }
        return false;
    }

    private boolean isViewVisible(View view, boolean z) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int childLeft = getChildLeft(view);
        int childTop = getChildTop(view);
        int childRight = getChildRight(view);
        int childBottom = getChildBottom(view);
        boolean z2 = paddingLeft <= childLeft && width >= childRight;
        boolean z3 = childLeft >= width || childRight >= paddingLeft;
        boolean z4 = paddingTop <= childTop && height >= childBottom;
        boolean z5 = childTop >= height || childBottom >= paddingTop;
        if (z) {
            return z2 && z4;
        }
        return z3 && z5;
    }

    private int layoutFlexLine(FlexLine flexLine, LayoutState layoutState) {
        return isMainAxisDirectionHorizontal() ? layoutFlexLineMainAxisHorizontal(flexLine, layoutState) : layoutFlexLineMainAxisVertical(flexLine, layoutState);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x017e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int layoutFlexLineMainAxisHorizontal(com.google.android.flexbox.FlexLine r10, com.google.android.flexbox.FlexboxLayoutManager.LayoutState r11) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.layoutFlexLineMainAxisHorizontal(com.google.android.flexbox.FlexLine, com.google.android.flexbox.FlexboxLayoutManager$LayoutState):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int layoutFlexLineMainAxisVertical(com.google.android.flexbox.FlexLine r11, com.google.android.flexbox.FlexboxLayoutManager.LayoutState r12) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.layoutFlexLineMainAxisVertical(com.google.android.flexbox.FlexLine, com.google.android.flexbox.FlexboxLayoutManager$LayoutState):int");
    }

    private void recycleByLayoutState(RecyclerView.C0968p c0968p, LayoutState layoutState) {
        if (!layoutState.mShouldRecycle) {
            return;
        }
        if (layoutState.mLayoutDirection == -1) {
            recycleFlexLinesFromEnd(c0968p, layoutState);
        } else {
            recycleFlexLinesFromStart(c0968p, layoutState);
        }
    }

    private void recycleChildren(RecyclerView.C0968p c0968p, int i, int i2) {
        while (i2 >= i) {
            removeAndRecycleViewAt(i2, c0968p);
            i2--;
        }
    }

    private void recycleFlexLinesFromEnd(RecyclerView.C0968p c0968p, LayoutState layoutState) {
        if (layoutState.mScrollingOffset < 0) {
            return;
        }
        this.mOrientationHelper.mo4566e();
        int unused = layoutState.mScrollingOffset;
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        int i = childCount - 1;
        int i2 = this.mFlexboxHelper.mIndexToFlexLine[getPosition(getChildAt(i))];
        if (i2 == -1) {
            return;
        }
        FlexLine flexLine = this.mFlexLines.get(i2);
        int i3 = i;
        while (i3 >= 0) {
            View childAt = getChildAt(i3);
            if (!canViewBeRecycledFromEnd(childAt, layoutState.mScrollingOffset)) {
                break;
            }
            int i4 = i2;
            FlexLine flexLine2 = flexLine;
            if (flexLine.mFirstIndex == getPosition(childAt)) {
                if (i2 <= 0) {
                    break;
                }
                i4 = i2 + layoutState.mLayoutDirection;
                flexLine2 = this.mFlexLines.get(i4);
                childCount = i3;
            }
            i3--;
            i2 = i4;
            flexLine = flexLine2;
        }
        i3 = childCount;
        recycleChildren(c0968p, i3, i);
    }

    private void recycleFlexLinesFromStart(RecyclerView.C0968p c0968p, LayoutState layoutState) {
        int childCount;
        if (layoutState.mScrollingOffset >= 0 && (childCount = getChildCount()) != 0) {
            int i = this.mFlexboxHelper.mIndexToFlexLine[getPosition(getChildAt(0))];
            if (i == -1) {
                return;
            }
            FlexLine flexLine = this.mFlexLines.get(i);
            int i2 = -1;
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                if (!canViewBeRecycledFromStart(childAt, layoutState.mScrollingOffset)) {
                    break;
                }
                int i4 = i;
                FlexLine flexLine2 = flexLine;
                if (flexLine.mLastIndex == getPosition(childAt)) {
                    if (i >= this.mFlexLines.size() - 1) {
                        break;
                    }
                    i4 = i + layoutState.mLayoutDirection;
                    flexLine2 = this.mFlexLines.get(i4);
                    i2 = i3;
                }
                i3++;
                i = i4;
                flexLine = flexLine2;
            }
            i3 = i2;
            recycleChildren(c0968p, 0, i3);
        }
    }

    private void resolveInfiniteAmount() {
        int heightMode = isMainAxisDirectionHorizontal() ? getHeightMode() : getWidthMode();
        this.mLayoutState.mInfinite = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    private void resolveLayoutDirection() {
        int layoutDirection = getLayoutDirection();
        int i = this.mFlexDirection;
        boolean z = false;
        if (i == 0) {
            this.mIsRtl = layoutDirection == 1;
            boolean z2 = false;
            if (this.mFlexWrap == 2) {
                z2 = true;
            }
            this.mFromBottomToTop = z2;
        } else if (i == 1) {
            this.mIsRtl = layoutDirection != 1;
            boolean z3 = false;
            if (this.mFlexWrap == 2) {
                z3 = true;
            }
            this.mFromBottomToTop = z3;
        } else if (i == 2) {
            this.mIsRtl = layoutDirection == 1;
            if (this.mFlexWrap == 2) {
                this.mIsRtl = !this.mIsRtl;
            }
            this.mFromBottomToTop = false;
        } else if (i != 3) {
            this.mIsRtl = false;
            this.mFromBottomToTop = false;
        } else {
            if (layoutDirection == 1) {
                z = true;
            }
            this.mIsRtl = z;
            if (this.mFlexWrap == 2) {
                this.mIsRtl = !this.mIsRtl;
            }
            this.mFromBottomToTop = true;
        }
    }

    private boolean shouldMeasureChild(View view, int i, int i2, RecyclerView.C0961j c0961j) {
        return view.isLayoutRequested() || !isMeasurementCacheEnabled() || !isMeasurementUpToDate(view.getWidth(), i, c0961j.width) || !isMeasurementUpToDate(view.getHeight(), i2, c0961j.height);
    }

    private boolean updateAnchorFromChildren(RecyclerView.C0974t c0974t, AnchorInfo anchorInfo) {
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View findLastReferenceChild = anchorInfo.mLayoutFromEnd ? findLastReferenceChild(c0974t.m4843e()) : findFirstReferenceChild(c0974t.m4843e());
        if (findLastReferenceChild == null) {
            return false;
        }
        anchorInfo.assignFromView(findLastReferenceChild);
        if (c0974t.m4849a() || !supportsPredictiveItemAnimations()) {
            return true;
        }
        if (this.mOrientationHelper.mo4572a(findLastReferenceChild) >= this.mOrientationHelper.mo4568d() || this.mOrientationHelper.mo4571b(findLastReferenceChild) < this.mOrientationHelper.mo4570c()) {
            z = true;
        }
        if (!z) {
            return true;
        }
        anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? this.mOrientationHelper.mo4568d() : this.mOrientationHelper.mo4570c();
        return true;
    }

    private boolean updateAnchorFromPendingState(RecyclerView.C0974t c0974t, AnchorInfo anchorInfo, SavedState savedState) {
        int i;
        boolean z = false;
        if (c0974t.m4849a() || (i = this.mPendingScrollPosition) == -1) {
            return false;
        }
        if (i < 0 || i >= c0974t.m4843e()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = AbstractC0610a.INVALID_ID;
            return false;
        }
        anchorInfo.mPosition = this.mPendingScrollPosition;
        anchorInfo.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[anchorInfo.mPosition];
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null && savedState2.hasValidAnchor(c0974t.m4843e())) {
            anchorInfo.mCoordinate = this.mOrientationHelper.mo4570c() + savedState.mAnchorOffset;
            anchorInfo.mAssignedFromSavedState = true;
            anchorInfo.mFlexLinePosition = -1;
            return true;
        } else if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
            if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
                anchorInfo.mCoordinate = this.mOrientationHelper.mo4570c() + this.mPendingScrollPositionOffset;
                return true;
            }
            anchorInfo.mCoordinate = this.mPendingScrollPositionOffset - this.mOrientationHelper.mo4562g();
            return true;
        } else {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition == null) {
                if (getChildCount() > 0) {
                    if (this.mPendingScrollPosition < getPosition(getChildAt(0))) {
                        z = true;
                    }
                    anchorInfo.mLayoutFromEnd = z;
                }
                anchorInfo.assignCoordinateFromPadding();
                return true;
            } else if (this.mOrientationHelper.mo4565e(findViewByPosition) > this.mOrientationHelper.mo4564f()) {
                anchorInfo.assignCoordinateFromPadding();
                return true;
            } else if (this.mOrientationHelper.mo4572a(findViewByPosition) - this.mOrientationHelper.mo4570c() < 0) {
                anchorInfo.mCoordinate = this.mOrientationHelper.mo4570c();
                anchorInfo.mLayoutFromEnd = false;
                return true;
            } else if (this.mOrientationHelper.mo4568d() - this.mOrientationHelper.mo4571b(findViewByPosition) >= 0) {
                anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? this.mOrientationHelper.mo4571b(findViewByPosition) + this.mOrientationHelper.m4575b() : this.mOrientationHelper.mo4572a(findViewByPosition);
                return true;
            } else {
                anchorInfo.mCoordinate = this.mOrientationHelper.mo4568d();
                anchorInfo.mLayoutFromEnd = true;
                return true;
            }
        }
    }

    private void updateAnchorInfoForLayout(RecyclerView.C0974t c0974t, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingState(c0974t, anchorInfo, this.mPendingSavedState) && !updateAnchorFromChildren(c0974t, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = 0;
            anchorInfo.mFlexLinePosition = 0;
        }
    }

    private void updateDirtyPosition(int i) {
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = findLastVisibleItemPosition();
        if (i >= findLastVisibleItemPosition) {
            return;
        }
        int childCount = getChildCount();
        this.mFlexboxHelper.ensureMeasureSpecCache(childCount);
        this.mFlexboxHelper.ensureMeasuredSizeCache(childCount);
        this.mFlexboxHelper.ensureIndexToFlexLine(childCount);
        if (i >= this.mFlexboxHelper.mIndexToFlexLine.length) {
            return;
        }
        this.mDirtyPosition = i;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        if (findFirstVisibleItemPosition <= i && i <= findLastVisibleItemPosition) {
            return;
        }
        this.mPendingScrollPosition = getPosition(childClosestToStart);
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mPendingScrollPositionOffset = this.mOrientationHelper.mo4572a(childClosestToStart) - this.mOrientationHelper.mo4570c();
        } else {
            this.mPendingScrollPositionOffset = this.mOrientationHelper.mo4571b(childClosestToStart) + this.mOrientationHelper.mo4562g();
        }
    }

    private void updateFlexLines(int i) {
        int i2;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z = true;
        if (isMainAxisDirectionHorizontal()) {
            int i3 = this.mLastWidth;
            if (i3 == Integer.MIN_VALUE || i3 == width) {
                z = false;
            }
            i2 = this.mLayoutState.mInfinite ? this.mContext.getResources().getDisplayMetrics().heightPixels : this.mLayoutState.mAvailable;
        } else {
            int i4 = this.mLastHeight;
            z = (i4 == Integer.MIN_VALUE || i4 == height) ? false : true;
            i2 = this.mLayoutState.mInfinite ? this.mContext.getResources().getDisplayMetrics().widthPixels : this.mLayoutState.mAvailable;
        }
        this.mLastWidth = width;
        this.mLastHeight = height;
        if (this.mDirtyPosition == -1 && (this.mPendingScrollPosition != -1 || z)) {
            if (this.mAnchorInfo.mLayoutFromEnd) {
                return;
            }
            this.mFlexLines.clear();
            this.mFlexLinesResult.reset();
            if (isMainAxisDirectionHorizontal()) {
                this.mFlexboxHelper.calculateHorizontalFlexLinesToIndex(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i2, this.mAnchorInfo.mPosition, this.mFlexLines);
            } else {
                this.mFlexboxHelper.calculateVerticalFlexLinesToIndex(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i2, this.mAnchorInfo.mPosition, this.mFlexLines);
            }
            this.mFlexLines = this.mFlexLinesResult.mFlexLines;
            this.mFlexboxHelper.determineMainSize(makeMeasureSpec, makeMeasureSpec2);
            this.mFlexboxHelper.stretchViews();
            this.mAnchorInfo.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[this.mAnchorInfo.mPosition];
            this.mLayoutState.mFlexLinePosition = this.mAnchorInfo.mFlexLinePosition;
            return;
        }
        int i5 = this.mDirtyPosition;
        int min = i5 != -1 ? Math.min(i5, this.mAnchorInfo.mPosition) : this.mAnchorInfo.mPosition;
        this.mFlexLinesResult.reset();
        if (isMainAxisDirectionHorizontal()) {
            if (this.mFlexLines.size() > 0) {
                this.mFlexboxHelper.clearFlexLines(this.mFlexLines, min);
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i2, min, this.mAnchorInfo.mPosition, this.mFlexLines);
            } else {
                this.mFlexboxHelper.ensureIndexToFlexLine(i);
                this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i2, 0, this.mFlexLines);
            }
        } else if (this.mFlexLines.size() > 0) {
            this.mFlexboxHelper.clearFlexLines(this.mFlexLines, min);
            this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec2, makeMeasureSpec, i2, min, this.mAnchorInfo.mPosition, this.mFlexLines);
        } else {
            this.mFlexboxHelper.ensureIndexToFlexLine(i);
            this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i2, 0, this.mFlexLines);
        }
        this.mFlexLines = this.mFlexLinesResult.mFlexLines;
        this.mFlexboxHelper.determineMainSize(makeMeasureSpec, makeMeasureSpec2, min);
        this.mFlexboxHelper.stretchViews(min);
    }

    private void updateLayoutState(int i, int i2) {
        this.mLayoutState.mLayoutDirection = i;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z = !isMainAxisDirectionHorizontal && this.mIsRtl;
        if (i == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            this.mLayoutState.mOffset = this.mOrientationHelper.mo4571b(childAt);
            int position = getPosition(childAt);
            View findLastReferenceViewInLine = findLastReferenceViewInLine(childAt, this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[position]));
            this.mLayoutState.mItemDirection = 1;
            LayoutState layoutState = this.mLayoutState;
            layoutState.mPosition = position + layoutState.mItemDirection;
            if (this.mFlexboxHelper.mIndexToFlexLine.length <= this.mLayoutState.mPosition) {
                this.mLayoutState.mFlexLinePosition = -1;
            } else {
                this.mLayoutState.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[this.mLayoutState.mPosition];
            }
            if (z) {
                this.mLayoutState.mOffset = this.mOrientationHelper.mo4572a(findLastReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = (-this.mOrientationHelper.mo4572a(findLastReferenceViewInLine)) + this.mOrientationHelper.mo4570c();
                LayoutState layoutState2 = this.mLayoutState;
                int i3 = 0;
                if (layoutState2.mScrollingOffset >= 0) {
                    i3 = this.mLayoutState.mScrollingOffset;
                }
                layoutState2.mScrollingOffset = i3;
            } else {
                this.mLayoutState.mOffset = this.mOrientationHelper.mo4571b(findLastReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = this.mOrientationHelper.mo4571b(findLastReferenceViewInLine) - this.mOrientationHelper.mo4568d();
            }
            if ((this.mLayoutState.mFlexLinePosition == -1 || this.mLayoutState.mFlexLinePosition > this.mFlexLines.size() - 1) && this.mLayoutState.mPosition <= getFlexItemCount()) {
                int i4 = i2 - this.mLayoutState.mScrollingOffset;
                this.mFlexLinesResult.reset();
                if (i4 > 0) {
                    if (isMainAxisDirectionHorizontal) {
                        this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i4, this.mLayoutState.mPosition, this.mFlexLines);
                    } else {
                        this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i4, this.mLayoutState.mPosition, this.mFlexLines);
                    }
                    this.mFlexboxHelper.determineMainSize(makeMeasureSpec, makeMeasureSpec2, this.mLayoutState.mPosition);
                    this.mFlexboxHelper.stretchViews(this.mLayoutState.mPosition);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            this.mLayoutState.mOffset = this.mOrientationHelper.mo4572a(childAt2);
            int position2 = getPosition(childAt2);
            View findFirstReferenceViewInLine = findFirstReferenceViewInLine(childAt2, this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[position2]));
            this.mLayoutState.mItemDirection = 1;
            int i5 = this.mFlexboxHelper.mIndexToFlexLine[position2];
            int i6 = i5;
            if (i5 == -1) {
                i6 = 0;
            }
            if (i6 > 0) {
                this.mLayoutState.mPosition = position2 - this.mFlexLines.get(i6 - 1).getItemCount();
            } else {
                this.mLayoutState.mPosition = -1;
            }
            this.mLayoutState.mFlexLinePosition = i6 > 0 ? i6 - 1 : 0;
            if (z) {
                this.mLayoutState.mOffset = this.mOrientationHelper.mo4571b(findFirstReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = this.mOrientationHelper.mo4571b(findFirstReferenceViewInLine) - this.mOrientationHelper.mo4568d();
                LayoutState layoutState3 = this.mLayoutState;
                int i7 = 0;
                if (layoutState3.mScrollingOffset >= 0) {
                    i7 = this.mLayoutState.mScrollingOffset;
                }
                layoutState3.mScrollingOffset = i7;
            } else {
                this.mLayoutState.mOffset = this.mOrientationHelper.mo4572a(findFirstReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = (-this.mOrientationHelper.mo4572a(findFirstReferenceViewInLine)) + this.mOrientationHelper.mo4570c();
            }
        }
        LayoutState layoutState4 = this.mLayoutState;
        layoutState4.mAvailable = i2 - layoutState4.mScrollingOffset;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo, boolean z, boolean z2) {
        if (z2) {
            resolveInfiniteAmount();
        } else {
            this.mLayoutState.mInfinite = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mLayoutState.mAvailable = this.mOrientationHelper.mo4568d() - anchorInfo.mCoordinate;
        } else {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - getPaddingRight();
        }
        this.mLayoutState.mPosition = anchorInfo.mPosition;
        this.mLayoutState.mItemDirection = 1;
        this.mLayoutState.mLayoutDirection = 1;
        this.mLayoutState.mOffset = anchorInfo.mCoordinate;
        this.mLayoutState.mScrollingOffset = AbstractC0610a.INVALID_ID;
        this.mLayoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (!z || this.mFlexLines.size() <= 1 || anchorInfo.mFlexLinePosition < 0 || anchorInfo.mFlexLinePosition >= this.mFlexLines.size() - 1) {
            return;
        }
        FlexLine flexLine = this.mFlexLines.get(anchorInfo.mFlexLinePosition);
        LayoutState.access$1508(this.mLayoutState);
        this.mLayoutState.mPosition += flexLine.getItemCount();
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo, boolean z, boolean z2) {
        if (z2) {
            resolveInfiniteAmount();
        } else {
            this.mLayoutState.mInfinite = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - this.mOrientationHelper.mo4570c();
        } else {
            this.mLayoutState.mAvailable = (this.mParent.getWidth() - anchorInfo.mCoordinate) - this.mOrientationHelper.mo4570c();
        }
        this.mLayoutState.mPosition = anchorInfo.mPosition;
        this.mLayoutState.mItemDirection = 1;
        this.mLayoutState.mLayoutDirection = -1;
        this.mLayoutState.mOffset = anchorInfo.mCoordinate;
        this.mLayoutState.mScrollingOffset = AbstractC0610a.INVALID_ID;
        this.mLayoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (!z || anchorInfo.mFlexLinePosition <= 0 || this.mFlexLines.size() <= anchorInfo.mFlexLinePosition) {
            return;
        }
        FlexLine flexLine = this.mFlexLines.get(anchorInfo.mFlexLinePosition);
        LayoutState.access$1510(this.mLayoutState);
        this.mLayoutState.mPosition -= flexLine.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollHorizontally() {
        return !isMainAxisDirectionHorizontal() || getWidth() > this.mParent.getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollVertically() {
        return isMainAxisDirectionHorizontal() || getHeight() > this.mParent.getHeight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean checkLayoutParams(RecyclerView.C0961j c0961j) {
        return c0961j instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollExtent(RecyclerView.C0974t c0974t) {
        return computeScrollExtent(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollOffset(RecyclerView.C0974t c0974t) {
        computeScrollOffset(c0974t);
        return computeScrollOffset(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollRange(RecyclerView.C0974t c0974t) {
        return computeScrollRange(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s.AbstractC0973b
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = i < getPosition(getChildAt(0)) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(FlexItem.FLEX_GROW_DEFAULT, i2) : new PointF(i2, FlexItem.FLEX_GROW_DEFAULT);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollExtent(RecyclerView.C0974t c0974t) {
        return computeScrollExtent(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollOffset(RecyclerView.C0974t c0974t) {
        return computeScrollOffset(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollRange(RecyclerView.C0974t c0974t) {
        return computeScrollRange(c0974t);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true);
        return findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false);
        return findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        int i = -1;
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true);
        if (findOneVisibleChild != null) {
            i = getPosition(findOneVisibleChild);
        }
        return i;
    }

    public int findLastVisibleItemPosition() {
        int i = -1;
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false);
        if (findOneVisibleChild != null) {
            i = getPosition(findOneVisibleChild);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignItems() {
        return this.mAlignItems;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthCrossAxis(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (isMainAxisDirectionHorizontal()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (isMainAxisDirectionHorizontal()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexDirection() {
        return this.mFlexDirection;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getFlexItemAt(int i) {
        View view = this.mViewCache.get(i);
        return view != null ? view : this.mRecycler.m4886c(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexItemCount() {
        return this.mState.m4843e();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<FlexLine> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.mFlexLines.size());
        int size = this.mFlexLines.size();
        for (int i = 0; i < size; i++) {
            FlexLine flexLine = this.mFlexLines.get(i);
            if (flexLine.getItemCount() != 0) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<FlexLine> getFlexLinesInternal() {
        return this.mFlexLines;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexWrap() {
        return this.mFlexWrap;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getJustifyContent() {
        return this.mJustifyContent;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getLargestMainSize() {
        if (this.mFlexLines.size() == 0) {
            return 0;
        }
        int i = Integer.MIN_VALUE;
        int size = this.mFlexLines.size();
        for (int i2 = 0; i2 < size; i2++) {
            i = Math.max(i, this.mFlexLines.get(i2).mMainSize);
        }
        return i;
    }

    public int getPositionToFlexLineIndex(int i) {
        return this.mFlexboxHelper.mIndexToFlexLine[i];
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getReorderedFlexItemAt(int i) {
        return getFlexItemAt(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getSumOfCrossSize() {
        int size = this.mFlexLines.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.mFlexLines.get(i2).mCrossSize;
        }
        return i;
    }

    public boolean isLayoutRtl() {
        return this.mIsRtl;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.mFlexDirection;
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onAdapterChanged(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0945a abstractC0945a2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mParent = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0968p c0968p) {
        super.onDetachedFromWindow(recyclerView, c0968p);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(c0968p);
            c0968p.m4908a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        updateDirtyPosition(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutChildren(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        int i;
        int i2;
        this.mRecycler = c0968p;
        this.mState = c0974t;
        int m4843e = c0974t.m4843e();
        if (m4843e != 0 || !c0974t.m4849a()) {
            resolveLayoutDirection();
            ensureOrientationHelper();
            ensureLayoutState();
            this.mFlexboxHelper.ensureMeasureSpecCache(m4843e);
            this.mFlexboxHelper.ensureMeasuredSizeCache(m4843e);
            this.mFlexboxHelper.ensureIndexToFlexLine(m4843e);
            this.mLayoutState.mShouldRecycle = false;
            SavedState savedState = this.mPendingSavedState;
            if (savedState != null && savedState.hasValidAnchor(m4843e)) {
                this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            }
            if (!this.mAnchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
                this.mAnchorInfo.reset();
                updateAnchorInfoForLayout(c0974t, this.mAnchorInfo);
                this.mAnchorInfo.mValid = true;
            }
            detachAndScrapAttachedViews(c0968p);
            if (this.mAnchorInfo.mLayoutFromEnd) {
                updateLayoutStateToFillStart(this.mAnchorInfo, false, true);
            } else {
                updateLayoutStateToFillEnd(this.mAnchorInfo, false, true);
            }
            updateFlexLines(m4843e);
            if (this.mAnchorInfo.mLayoutFromEnd) {
                fill(c0968p, c0974t, this.mLayoutState);
                i = this.mLayoutState.mOffset;
                updateLayoutStateToFillEnd(this.mAnchorInfo, true, false);
                fill(c0968p, c0974t, this.mLayoutState);
                i2 = this.mLayoutState.mOffset;
            } else {
                fill(c0968p, c0974t, this.mLayoutState);
                i2 = this.mLayoutState.mOffset;
                updateLayoutStateToFillStart(this.mAnchorInfo, true, false);
                fill(c0968p, c0974t, this.mLayoutState);
                i = this.mLayoutState.mOffset;
            }
            if (getChildCount() <= 0) {
                return;
            }
            if (this.mAnchorInfo.mLayoutFromEnd) {
                fixLayoutStartGap(i + fixLayoutEndGap(i2, c0968p, c0974t, true), c0968p, c0974t, false);
            } else {
                fixLayoutEndGap(i2 + fixLayoutStartGap(i, c0968p, c0974t, true), c0968p, c0974t, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutCompleted(RecyclerView.C0974t c0974t) {
        super.onLayoutCompleted(c0974t);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = AbstractC0610a.INVALID_ID;
        this.mDirtyPosition = -1;
        this.mAnchorInfo.reset();
        this.mViewCache.clear();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexItemAdded(View view, int i, int i2, FlexLine flexLine) {
        calculateItemDecorationsForChild(view, TEMP_RECT);
        if (isMainAxisDirectionHorizontal()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            flexLine.mMainSize += leftDecorationWidth;
            flexLine.mDividerLengthInMainSize += leftDecorationWidth;
            return;
        }
        int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
        flexLine.mMainSize += topDecorationHeight;
        flexLine.mDividerLengthInMainSize += topDecorationHeight;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexLineAdded(FlexLine flexLine) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            View childClosestToStart = getChildClosestToStart();
            savedState2.mAnchorPosition = getPosition(childClosestToStart);
            savedState2.mAnchorOffset = this.mOrientationHelper.mo4572a(childClosestToStart) - this.mOrientationHelper.mo4570c();
        } else {
            savedState2.invalidateAnchor();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollHorizontallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (!isMainAxisDirectionHorizontal()) {
            int handleScrollingCrossAxis = handleScrollingCrossAxis(i, c0968p, c0974t);
            this.mViewCache.clear();
            return handleScrollingCrossAxis;
        }
        int handleScrollingMainAxis = handleScrollingMainAxis(i);
        this.mAnchorInfo.mPerpendicularCoordinate += handleScrollingMainAxis;
        this.mSubOrientationHelper.mo4573a(-handleScrollingMainAxis);
        return handleScrollingMainAxis;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = AbstractC0610a.INVALID_ID;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollVerticallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (isMainAxisDirectionHorizontal()) {
            int handleScrollingCrossAxis = handleScrollingCrossAxis(i, c0968p, c0974t);
            this.mViewCache.clear();
            return handleScrollingCrossAxis;
        }
        int handleScrollingMainAxis = handleScrollingMainAxis(i);
        this.mAnchorInfo.mPerpendicularCoordinate += handleScrollingMainAxis;
        this.mSubOrientationHelper.mo4573a(-handleScrollingMainAxis);
        return handleScrollingMainAxis;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignContent(int i) {
        throw new UnsupportedOperationException("Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute.");
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignItems(int i) {
        int i2 = this.mAlignItems;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                clearFlexLines();
            }
            this.mAlignItems = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            removeAllViews();
            this.mFlexDirection = i;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            clearFlexLines();
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexLines(List<FlexLine> list) {
        this.mFlexLines = list;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexWrap(int i) {
        if (i != 2) {
            int i2 = this.mFlexWrap;
            if (i2 == i) {
                return;
            }
            if (i2 == 0 || i == 0) {
                removeAllViews();
                clearFlexLines();
            }
            this.mFlexWrap = i;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            requestLayout();
            return;
        }
        throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setJustifyContent(int i) {
        if (this.mJustifyContent != i) {
            this.mJustifyContent = i;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0974t c0974t, int i) {
        C1011g c1011g = new C1011g(recyclerView.getContext());
        c1011g.m4862c(i);
        startSmoothScroll(c1011g);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void updateViewCache(int i, View view) {
        this.mViewCache.put(i, view);
    }
}
