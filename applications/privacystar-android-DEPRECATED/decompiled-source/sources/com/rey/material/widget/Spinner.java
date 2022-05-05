package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.ArrowDrawable;
import com.rey.material.drawable.DividerDrawable;
import com.rey.material.util.ThemeUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner.class */
public class Spinner extends FrameLayout implements ThemeManager.OnThemeChangedListener {
    private static final int INVALID_POSITION = -1;
    private static final int MAX_ITEMS_MEASURED = 15;
    private SpinnerAdapter mAdapter;
    private boolean mArrowAnimSwitchMode;
    private ArrowDrawable mArrowDrawable;
    private int mArrowPadding;
    private int mArrowSize;
    private boolean mDisableChildrenWhenDisabled;
    private DividerDrawable mDividerDrawable;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDropDownWidth;
    private int mGravity;
    private boolean mIsRtl;
    private boolean mLabelEnable;
    private TextView mLabelView;
    private int mMinHeight;
    private int mMinWidth;
    private OnItemClickListener mOnItemClickListener;
    private OnItemSelectedListener mOnItemSelectedListener;
    private DropdownPopup mPopup;
    private int mSelectedPosition;
    private DropDownAdapter mTempAdapter;
    private RecycleBin mRecycler = new RecycleBin();
    private Rect mTempRect = new Rect();
    private SpinnerDataSetObserver mDataSetObserver = new SpinnerDataSetObserver();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$DropDownAdapter.class */
    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter, View.OnClickListener {
        private SpinnerAdapter mAdapter;
        private ListAdapter mListAdapter;
        private AdapterView.OnItemClickListener mOnItemClickListener;

        public DropDownAdapter(SpinnerAdapter spinnerAdapter) {
            this.mAdapter = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.mListAdapter = (ListAdapter) spinnerAdapter;
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mListAdapter;
            return listAdapter == null || listAdapter.areAllItemsEnabled();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter == null ? 0 : this.mAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            return this.mAdapter == null ? null : this.mAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mAdapter == null ? null : this.mAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.mAdapter == null ? -1L : this.mAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.getItemViewType(i);
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View dropDownView = getDropDownView(i, view, viewGroup);
            dropDownView.setOnClickListener(this);
            dropDownView.setTag(Integer.valueOf(i));
            return dropDownView;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.getViewTypeCount();
            }
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter != null && this.mAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.mListAdapter;
            return listAdapter == null || listAdapter.isEnabled(i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            if (this.mOnItemClickListener != null) {
                this.mOnItemClickListener.onItemClick(null, view, intValue, 0L);
            }
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
            this.mOnItemClickListener = onItemClickListener;
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$DropdownPopup.class */
    public class DropdownPopup extends ListPopupWindow {
        private ViewTreeObserver.OnGlobalLayoutListener layoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.rey.material.widget.Spinner.DropdownPopup.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DropdownPopup.this.computeContentWidth();
                DropdownPopup.super.show();
            }
        };
        private DropDownAdapter mAdapter;
        private CharSequence mHintText;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i, int i2) {
            super(context, attributeSet, i, i2);
            setAnchorView(Spinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.rey.material.widget.Spinner.DropdownPopup.2
                @Override // android.widget.PopupWindow.OnDismissListener
                @TargetApi(16)
                public void onDismiss() {
                    ViewTreeObserver viewTreeObserver = Spinner.this.getViewTreeObserver();
                    if (viewTreeObserver != null) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            viewTreeObserver.removeOnGlobalLayoutListener(DropdownPopup.this.layoutListener);
                        } else {
                            viewTreeObserver.removeGlobalOnLayoutListener(DropdownPopup.this.layoutListener);
                        }
                    }
                    Spinner.this.onPopupDismissed();
                }
            });
        }

        void computeContentWidth() {
            Drawable background = getBackground();
            int i = 0;
            if (background != null) {
                background.getPadding(Spinner.this.mTempRect);
                i = Spinner.this.mIsRtl ? Spinner.this.mTempRect.right : -Spinner.this.mTempRect.left;
            } else {
                Rect rect = Spinner.this.mTempRect;
                Spinner.this.mTempRect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = Spinner.this.getPaddingLeft();
            int paddingRight = Spinner.this.getPaddingRight();
            int width = Spinner.this.getWidth();
            if (Spinner.this.mDropDownWidth == -2) {
                int measureContentWidth = Spinner.this.measureContentWidth(this.mAdapter, getBackground());
                int i2 = (Spinner.this.getContext().getResources().getDisplayMetrics().widthPixels - Spinner.this.mTempRect.left) - Spinner.this.mTempRect.right;
                int i3 = measureContentWidth;
                if (measureContentWidth > i2) {
                    i3 = i2;
                }
                setContentWidth(Math.max(i3, (width - paddingLeft) - paddingRight));
            } else if (Spinner.this.mDropDownWidth == -1) {
                setContentWidth((width - paddingLeft) - paddingRight);
            } else {
                setContentWidth(Spinner.this.mDropDownWidth);
            }
            setHorizontalOffset(Spinner.this.mIsRtl ? i + ((width - paddingRight) - getWidth()) : i + paddingLeft);
        }

        public CharSequence getHintText() {
            return this.mHintText;
        }

        @Override // com.rey.material.widget.ListPopupWindow
        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.mAdapter = (DropDownAdapter) listAdapter;
            this.mAdapter.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.rey.material.widget.Spinner.DropdownPopup.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    Spinner.this.performItemClick(view, i, DropdownPopup.this.mAdapter.getItemId(i));
                    DropdownPopup.this.dismiss();
                }
            });
        }

        public void setPromptText(CharSequence charSequence) {
            this.mHintText = charSequence;
        }

        @Override // com.rey.material.widget.ListPopupWindow
        public void show() {
            ViewTreeObserver viewTreeObserver;
            boolean isShowing = isShowing();
            computeContentWidth();
            setInputMethodMode(2);
            super.show();
            if (!isShowing && (viewTreeObserver = Spinner.this.getViewTreeObserver()) != null) {
                viewTreeObserver.addOnGlobalLayoutListener(this.layoutListener);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$OnItemClickListener.class */
    public interface OnItemClickListener {
        boolean onItemClick(Spinner spinner, View view, int i, long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$OnItemSelectedListener.class */
    public interface OnItemSelectedListener {
        void onItemSelected(Spinner spinner, View view, int i, long j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$RecycleBin.class */
    public class RecycleBin {
        private final SparseArray<View> mScrapHeap;

        private RecycleBin() {
            this.mScrapHeap = new SparseArray<>();
        }

        void clear() {
            this.mScrapHeap.clear();
        }

        View get(int i) {
            View view = this.mScrapHeap.get(i);
            if (view != null) {
                this.mScrapHeap.delete(i);
            }
            return view;
        }

        public void put(int i, View view) {
            this.mScrapHeap.put(i, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rey.material.widget.Spinner.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int position;
        boolean showDropdown;

        SavedState(Parcel parcel) {
            super(parcel);
            this.position = parcel.readInt();
            this.showDropdown = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + " showDropdown=" + this.showDropdown + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeByte(this.showDropdown ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Spinner$SpinnerDataSetObserver.class */
    public class SpinnerDataSetObserver extends DataSetObserver {
        private SpinnerDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            Spinner.this.onDataChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            Spinner.this.onDataInvalidated();
        }
    }

    public Spinner(Context context) {
        super(context, null, C1686R.C1687attr.listPopupWindowStyle);
    }

    public Spinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C1686R.C1687attr.listPopupWindowStyle);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private int getArrowDrawableWidth() {
        return this.mArrowDrawable != null ? this.mArrowSize + (this.mArrowPadding * 2) : 0;
    }

    private int getDividerDrawableHeight() {
        return this.mDividerHeight > 0 ? this.mDividerHeight + this.mDividerPadding : 0;
    }

    private TextView getLabelView() {
        if (this.mLabelView == null) {
            this.mLabelView = new TextView(getContext());
            if (Build.VERSION.SDK_INT >= 17) {
                this.mLabelView.setTextDirection(this.mIsRtl ? 4 : 3);
            }
            this.mLabelView.setSingleLine(true);
            this.mLabelView.setDuplicateParentStateEnabled(true);
        }
        return this.mLabelView;
    }

    private int getSpec(int i, int i2) {
        int i3;
        switch (i2) {
            case -2:
                if (i <= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                    break;
                } else {
                    i3 = View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
                    break;
                }
            case -1:
                if (i <= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                    break;
                } else {
                    i3 = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
                    break;
                }
            default:
                i3 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                break;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int measureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            i = i;
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        int i3 = i2;
        if (drawable != null) {
            drawable.getPadding(this.mTempRect);
            i3 = i2 + this.mTempRect.left + this.mTempRect.right;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDataChanged() {
        if (this.mSelectedPosition == -1) {
            setSelection(0);
        } else if (this.mSelectedPosition < this.mAdapter.getCount()) {
            onDataInvalidated();
        } else {
            setSelection(this.mAdapter.getCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDataInvalidated() {
        if (this.mAdapter != null) {
            if (this.mLabelView == null) {
                removeAllViews();
            } else {
                for (int childCount = getChildCount() - 1; childCount > 0; childCount--) {
                    removeViewAt(childCount);
                }
            }
            int itemViewType = this.mAdapter.getItemViewType(this.mSelectedPosition);
            View view = this.mAdapter.getView(this.mSelectedPosition, this.mRecycler.get(itemViewType), this);
            view.setFocusable(false);
            view.setClickable(false);
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            super.addView(view);
            this.mRecycler.put(itemViewType, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPopupDismissed() {
        if (this.mArrowDrawable != null) {
            this.mArrowDrawable.setMode(ArrowDrawable.MODE_DOWN, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopup() {
        if (!this.mPopup.isShowing()) {
            this.mPopup.show();
            final ListView listView = this.mPopup.getListView();
            if (listView != null) {
                if (Build.VERSION.SDK_INT >= 11) {
                    listView.setChoiceMode(1);
                }
                listView.setSelection(getSelectedItemPosition());
                if (this.mArrowDrawable != null && this.mArrowAnimSwitchMode) {
                    listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.rey.material.widget.Spinner.2
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public boolean onPreDraw() {
                            listView.getViewTreeObserver().removeOnPreDrawListener(this);
                            Spinner.this.mArrowDrawable.setMode(ArrowDrawable.MODE_UP, true);
                            return true;
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r2v8, types: [int[], int[][]] */
    @Override // com.rey.material.widget.FrameLayout
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        super.applyStyle(context, attributeSet, i, i2);
        removeAllViews();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.Spinner, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        ColorStateList colorStateList = null;
        int i3 = -1;
        ColorStateList colorStateList2 = null;
        int i4 = -1;
        Interpolator interpolator = null;
        boolean z = true;
        ColorStateList colorStateList3 = null;
        int i5 = -1;
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = obtainStyledAttributes.getIndex(i6);
            if (index == C1686R.styleable.Spinner_spn_labelEnable) {
                this.mLabelEnable = obtainStyledAttributes.getBoolean(index, false);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_labelPadding) {
                getLabelView().setPadding(0, 0, 0, obtainStyledAttributes.getDimensionPixelSize(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_labelTextSize) {
                i3 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList = colorStateList;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_labelTextColor) {
                colorStateList = obtainStyledAttributes.getColorStateList(index);
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_labelTextAppearance) {
                getLabelView().setTextAppearance(context, obtainStyledAttributes.getResourceId(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_labelEllipsize) {
                switch (obtainStyledAttributes.getInteger(index, 0)) {
                    case 1:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.START);
                        colorStateList = colorStateList;
                        i3 = i3;
                        colorStateList2 = colorStateList2;
                        i4 = i4;
                        interpolator = interpolator;
                        z = z;
                        i5 = i5;
                        continue;
                    case 2:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.MIDDLE);
                        colorStateList = colorStateList;
                        i3 = i3;
                        colorStateList2 = colorStateList2;
                        i4 = i4;
                        interpolator = interpolator;
                        z = z;
                        i5 = i5;
                        continue;
                    case 3:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.END);
                        colorStateList = colorStateList;
                        i3 = i3;
                        colorStateList2 = colorStateList2;
                        i4 = i4;
                        interpolator = interpolator;
                        z = z;
                        i5 = i5;
                        continue;
                    case 4:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        colorStateList = colorStateList;
                        i3 = i3;
                        colorStateList2 = colorStateList2;
                        i4 = i4;
                        interpolator = interpolator;
                        z = z;
                        i5 = i5;
                        continue;
                    default:
                        getLabelView().setEllipsize(TextUtils.TruncateAt.END);
                        colorStateList = colorStateList;
                        i3 = i3;
                        colorStateList2 = colorStateList2;
                        i4 = i4;
                        interpolator = interpolator;
                        z = z;
                        i5 = i5;
                        continue;
                }
            } else if (index == C1686R.styleable.Spinner_spn_label) {
                getLabelView().setText(obtainStyledAttributes.getString(index));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_android_gravity) {
                this.mGravity = obtainStyledAttributes.getInt(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_android_minWidth) {
                setMinimumWidth(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_android_minHeight) {
                setMinimumHeight(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_android_dropDownWidth) {
                this.mDropDownWidth = obtainStyledAttributes.getLayoutDimension(index, -2);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_android_popupBackground) {
                this.mPopup.setBackgroundDrawable(obtainStyledAttributes.getDrawable(index));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_android_prompt) {
                this.mPopup.setPromptText(obtainStyledAttributes.getString(index));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_popupItemAnimation) {
                this.mPopup.setItemAnimation(obtainStyledAttributes.getResourceId(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_popupItemAnimOffset) {
                this.mPopup.setItemAnimationOffset(obtainStyledAttributes.getInteger(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_disableChildrenWhenDisabled) {
                this.mDisableChildrenWhenDisabled = obtainStyledAttributes.getBoolean(index, false);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowSwitchMode) {
                this.mArrowAnimSwitchMode = obtainStyledAttributes.getBoolean(index, false);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowAnimDuration) {
                i4 = obtainStyledAttributes.getInteger(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowSize) {
                this.mArrowSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowPadding) {
                this.mArrowPadding = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowColor) {
                colorStateList2 = obtainStyledAttributes.getColorStateList(index);
                colorStateList = colorStateList;
                i3 = i3;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowInterpolator) {
                interpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_arrowAnimClockwise) {
                z = obtainStyledAttributes.getBoolean(index, true);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_dividerHeight) {
                this.mDividerHeight = obtainStyledAttributes.getDimensionPixelOffset(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_dividerPadding) {
                this.mDividerPadding = obtainStyledAttributes.getDimensionPixelOffset(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
            } else if (index == C1686R.styleable.Spinner_spn_dividerAnimDuration) {
                i5 = obtainStyledAttributes.getInteger(index, 0);
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
            } else {
                colorStateList = colorStateList;
                i3 = i3;
                colorStateList2 = colorStateList2;
                i4 = i4;
                interpolator = interpolator;
                z = z;
                i5 = i5;
                if (index == C1686R.styleable.Spinner_spn_dividerColor) {
                    colorStateList3 = obtainStyledAttributes.getColorStateList(index);
                    i5 = i5;
                    z = z;
                    interpolator = interpolator;
                    i4 = i4;
                    colorStateList2 = colorStateList2;
                    i3 = i3;
                    colorStateList = colorStateList;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (colorStateList != null) {
            getLabelView().setTextColor(colorStateList);
        }
        if (i3 >= 0) {
            getLabelView().setTextSize(0, i3);
        }
        if (this.mLabelEnable) {
            addView(getLabelView(), 0, new ViewGroup.LayoutParams(-2, -2));
        }
        if (this.mArrowSize > 0) {
            if (this.mArrowDrawable == null) {
                ColorStateList colorStateList4 = colorStateList2;
                if (colorStateList2 == null) {
                    colorStateList4 = ColorStateList.valueOf(ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK));
                }
                if (i4 < 0) {
                    i4 = 0;
                }
                this.mArrowDrawable = new ArrowDrawable(ArrowDrawable.MODE_DOWN, this.mArrowSize, colorStateList4, i4, interpolator, z);
                this.mArrowDrawable.setCallback(this);
            } else {
                this.mArrowDrawable.setArrowSize(this.mArrowSize);
                this.mArrowDrawable.setClockwise(z);
                if (colorStateList2 != null) {
                    this.mArrowDrawable.setColor(colorStateList2);
                }
                if (i4 >= 0) {
                    this.mArrowDrawable.setAnimationDuration(i4);
                }
                if (interpolator != null) {
                    this.mArrowDrawable.setInterpolator(interpolator);
                }
            }
        } else if (this.mArrowDrawable != null) {
            this.mArrowDrawable.setCallback(null);
            this.mArrowDrawable = null;
        }
        if (this.mDividerHeight > 0) {
            if (this.mDividerDrawable == null) {
                if (i5 < 0) {
                    i5 = 0;
                }
                if (colorStateList3 == null) {
                    colorStateList3 = new ColorStateList(new int[]{new int[]{-16842919}, new int[]{16842919, 16842910}}, new int[]{ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK), ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK)});
                }
                this.mDividerDrawable = new DividerDrawable(this.mDividerHeight, colorStateList3, i5);
                this.mDividerDrawable.setCallback(this);
            } else {
                this.mDividerDrawable.setDividerHeight(this.mDividerHeight);
                if (colorStateList3 != null) {
                    this.mDividerDrawable.setColor(colorStateList3);
                }
                if (i5 >= 0) {
                    this.mDividerDrawable.setAnimationDuration(i5);
                }
            }
        } else if (this.mDividerDrawable != null) {
            this.mDividerDrawable.setCallback(null);
            this.mDividerDrawable = null;
        }
        if (this.mTempAdapter != null) {
            this.mPopup.setAdapter(this.mTempAdapter);
            this.mTempAdapter = null;
        }
        if (this.mAdapter != null) {
            setAdapter(this.mAdapter);
        }
        if (isInEditMode()) {
            TextView textView = new TextView(context, attributeSet, i);
            textView.setText("Item 1");
            super.addView(textView);
        }
        requestLayout();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.mDividerDrawable != null) {
            this.mDividerDrawable.draw(canvas);
        }
        if (this.mArrowDrawable != null) {
            this.mArrowDrawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mArrowDrawable != null) {
            this.mArrowDrawable.setState(getDrawableState());
        }
        if (this.mDividerDrawable != null) {
            this.mDividerDrawable.setState(getDrawableState());
        }
    }

    public SpinnerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.View
    public int getBaseline() {
        int baseline;
        View selectedView = getSelectedView();
        if (selectedView == null || (baseline = selectedView.getBaseline()) < 0) {
            return -1;
        }
        int paddingTop = getPaddingTop();
        int i = paddingTop;
        if (this.mLabelView != null) {
            i = paddingTop + this.mLabelView.getMeasuredHeight();
        }
        int measuredHeight = ((getMeasuredHeight() - i) - getPaddingBottom()) - getDividerDrawableHeight();
        int i2 = this.mGravity & 112;
        return i2 != 48 ? i2 != 80 ? ((measuredHeight - selectedView.getMeasuredHeight()) / 2) + i + baseline : ((i + measuredHeight) - selectedView.getMeasuredHeight()) + baseline : i + baseline;
    }

    public int getDropDownHorizontalOffset() {
        return this.mPopup.getHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        return this.mPopup.getVerticalOffset();
    }

    public int getDropDownWidth() {
        return this.mDropDownWidth;
    }

    public Drawable getPopupBackground() {
        return this.mPopup.getBackground();
    }

    public Object getSelectedItem() {
        return this.mAdapter == null ? null : this.mAdapter.getItem(this.mSelectedPosition);
    }

    public int getSelectedItemPosition() {
        return this.mSelectedPosition;
    }

    public View getSelectedView() {
        View childAt = getChildAt(getChildCount() - 1);
        View view = childAt;
        if (childAt == this.mLabelView) {
            view = null;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.FrameLayout
    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mLabelEnable = false;
        this.mDropDownWidth = -2;
        this.mArrowAnimSwitchMode = false;
        this.mGravity = 17;
        this.mDisableChildrenWhenDisabled = false;
        this.mSelectedPosition = -1;
        this.mIsRtl = false;
        setWillNotDraw(false);
        this.mPopup = new DropdownPopup(context, attributeSet, i, i2);
        this.mPopup.setModal(true);
        if (isInEditMode()) {
            applyStyle(C1686R.C1691style.Material_Widget_Spinner);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.rey.material.widget.Spinner.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Spinner.this.showPopup();
            }
        });
        super.init(context, attributeSet, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPopup != null && this.mPopup.isShowing()) {
            this.mPopup.dismiss();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0169, code lost:
        if (r7.mIsRtl != false) goto L_0x016c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x016c, code lost:
        r12 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0172, code lost:
        r12 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0186, code lost:
        if (r7.mIsRtl != false) goto L_0x0172;
     */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.Spinner.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight() + getArrowDrawableWidth();
        int paddingTop = getPaddingTop() + getPaddingBottom() + getDividerDrawableHeight();
        int i10 = 0;
        if (this.mLabelView == null || this.mLabelView.getLayoutParams() == null) {
            i4 = 0;
            i3 = 0;
        } else {
            this.mLabelView.measure(View.MeasureSpec.makeMeasureSpec(mode == 0 ? 0 : size - paddingLeft, mode), View.MeasureSpec.makeMeasureSpec(0, 0));
            i4 = this.mLabelView.getMeasuredWidth();
            i3 = this.mLabelView.getMeasuredHeight();
        }
        View selectedView = getSelectedView();
        if (selectedView != null) {
            ViewGroup.LayoutParams layoutParams = selectedView.getLayoutParams();
            selectedView.measure(getSpec(size - paddingLeft, layoutParams.width), getSpec((size2 - paddingTop) - this.mLabelView.getMeasuredHeight(), layoutParams.height));
            i10 = selectedView.getMeasuredWidth();
            i5 = selectedView.getMeasuredHeight();
        } else {
            i5 = 0;
        }
        int max = Math.max(this.mMinWidth, Math.max(i4, i10) + paddingLeft);
        int max2 = Math.max(this.mMinHeight, i5 + i3 + paddingTop);
        if (mode != Integer.MIN_VALUE) {
            i6 = size;
            if (mode != 1073741824) {
                i6 = max;
            }
        } else {
            i6 = Math.min(size, max);
        }
        if (mode2 != Integer.MIN_VALUE) {
            i7 = size2;
            if (mode2 != 1073741824) {
                i7 = max2;
            }
        } else {
            i7 = Math.min(size2, max2);
        }
        setMeasuredDimension(i6, i7);
        if (selectedView != null) {
            ViewGroup.LayoutParams layoutParams2 = selectedView.getLayoutParams();
            switch (layoutParams2.width) {
                case -2:
                    i8 = selectedView.getMeasuredWidth();
                    break;
                case -1:
                    i8 = i6 - paddingLeft;
                    break;
                default:
                    i8 = layoutParams2.width;
                    break;
            }
            switch (layoutParams2.height) {
                case -2:
                    i9 = selectedView.getMeasuredHeight();
                    break;
                case -1:
                    i9 = (i7 - i3) - paddingTop;
                    break;
                default:
                    i9 = layoutParams2.height;
                    break;
            }
            if (selectedView.getMeasuredWidth() != i8 || selectedView.getMeasuredHeight() != i9) {
                selectedView.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
            }
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setSelection(savedState.position);
        if (savedState.showDropdown && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.rey.material.widget.Spinner.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    Spinner.this.showPopup();
                    ViewTreeObserver viewTreeObserver2 = Spinner.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeGlobalOnLayoutListener(this);
                    }
                }
            });
        }
    }

    @Override // android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.mIsRtl != z) {
            this.mIsRtl = z;
            if (this.mLabelView != null && Build.VERSION.SDK_INT >= 17) {
                this.mLabelView.setTextDirection(this.mIsRtl ? 4 : 3);
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = getSelectedItemPosition();
        savedState.showDropdown = this.mPopup != null && this.mPopup.isShowing();
        return savedState;
    }

    public boolean performItemClick(View view, int i, long j) {
        if (this.mOnItemClickListener == null) {
            setSelection(i);
            return false;
        } else if (!this.mOnItemClickListener.onItemClick(this, view, i, j)) {
            return true;
        } else {
            setSelection(i);
            return true;
        }
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
        }
        this.mRecycler.clear();
        this.mAdapter = spinnerAdapter;
        this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
        onDataChanged();
        if (this.mPopup != null) {
            this.mPopup.setAdapter(new DropDownAdapter(spinnerAdapter));
        } else {
            this.mTempAdapter = new DropDownAdapter(spinnerAdapter);
        }
    }

    public void setDropDownHorizontalOffset(int i) {
        this.mPopup.setHorizontalOffset(i);
    }

    public void setDropDownVerticalOffset(int i) {
        this.mPopup.setVerticalOffset(i);
    }

    public void setDropDownWidth(int i) {
        this.mDropDownWidth = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.mDisableChildrenWhenDisabled) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setEnabled(z);
            }
        }
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = i;
            if ((i & 7) == 0) {
                i2 = i | GravityCompat.START;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.mMinHeight = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.mMinWidth = i;
        super.setMinimumWidth(i);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnItemSelectedListener = onItemSelectedListener;
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(getContext().getDrawable(i));
    }

    public void setSelection(int i) {
        int i2 = i;
        if (this.mAdapter != null) {
            i2 = Math.max(0, Math.min(i, this.mAdapter.getCount() - 1));
        }
        if (this.mSelectedPosition != i2) {
            this.mSelectedPosition = i2;
            if (this.mOnItemSelectedListener != null) {
                this.mOnItemSelectedListener.onItemSelected(this, getSelectedView(), i2, this.mAdapter == null ? -1L : this.mAdapter.getItemId(i2));
            }
            onDataInvalidated();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || this.mArrowDrawable == drawable || this.mDividerDrawable == drawable;
    }
}
