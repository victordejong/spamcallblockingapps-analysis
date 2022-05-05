package com.rey.material.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import com.rey.material.C1686R;
import com.rey.material.app.Dialog;
import com.rey.material.drawable.BlankDrawable;
import com.rey.material.widget.CheckBox;
import com.rey.material.widget.ListView;
import com.rey.material.widget.RadioButton;
import com.rey.material.widget.TextView;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog.class */
public class SimpleDialog extends Dialog {
    protected static final int MODE_CUSTOM = 4;
    protected static final int MODE_ITEMS = 2;
    protected static final int MODE_MESSAGE = 1;
    protected static final int MODE_MULTI_ITEMS = 3;
    protected static final int MODE_NONE = 0;
    private InternalAdapter mAdapter;
    private int mCheckBoxStyle;
    private int mItemHeight;
    private int mItemTextAppearance;
    private InternalListView mListView;
    private TextView mMessage;
    private int mMessageTextAppearanceId;
    private int mMessageTextColor;
    private int mMode;
    private OnSelectionChangedListener mOnSelectionChangedListener;
    private int mRadioButtonStyle;
    private InternalScrollView mScrollView;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$Builder.class */
    public static class Builder extends Dialog.Builder implements OnSelectionChangedListener {
        public static final Parcelable.Creator<Builder> CREATOR = new Parcelable.Creator<Builder>() { // from class: com.rey.material.app.SimpleDialog.Builder.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Builder createFromParcel(Parcel parcel) {
                return new Builder(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Builder[] newArray(int i) {
                return new Builder[i];
            }
        };
        protected CharSequence[] mItems;
        protected CharSequence mMessage;
        protected int mMode;
        protected int[] mSelectedIndexes;

        public Builder() {
            super(C1686R.C1691style.Material_App_Dialog_Simple_Light);
        }

        public Builder(int i) {
            super(i);
        }

        protected Builder(Parcel parcel) {
            super(parcel);
        }

        public int getSelectedIndex() {
            if (this.mMode == 2 || this.mMode == 3) {
                return this.mSelectedIndexes[0];
            }
            return -1;
        }

        public int[] getSelectedIndexes() {
            if (this.mMode == 2 || this.mMode == 3) {
                return this.mSelectedIndexes;
            }
            return null;
        }

        public CharSequence getSelectedValue() {
            int selectedIndex = getSelectedIndex();
            return selectedIndex >= 0 ? this.mItems[selectedIndex] : null;
        }

        public CharSequence[] getSelectedValues() {
            int[] selectedIndexes = getSelectedIndexes();
            if (selectedIndexes == null || selectedIndexes.length == 0) {
                return null;
            }
            CharSequence[] charSequenceArr = new CharSequence[selectedIndexes.length];
            for (int i = 0; i < selectedIndexes.length; i++) {
                charSequenceArr[i] = this.mItems[selectedIndexes[i]];
            }
            return charSequenceArr;
        }

        public Builder items(CharSequence[] charSequenceArr, int i) {
            this.mMode = 2;
            this.mItems = charSequenceArr;
            this.mSelectedIndexes = new int[]{i};
            return this;
        }

        public Builder message(CharSequence charSequence) {
            this.mMode = 1;
            this.mMessage = charSequence;
            return this;
        }

        public Builder multiChoiceItems(CharSequence[] charSequenceArr, int... iArr) {
            this.mMode = 3;
            this.mItems = charSequenceArr;
            this.mSelectedIndexes = iArr;
            return this;
        }

        @Override // com.rey.material.app.Dialog.Builder
        protected Dialog onBuild(Context context, int i) {
            SimpleDialog simpleDialog = new SimpleDialog(context, i);
            switch (this.mMode) {
                case 1:
                    simpleDialog.message(this.mMessage);
                    break;
                case 2:
                    CharSequence[] charSequenceArr = this.mItems;
                    int i2 = 0;
                    if (this.mSelectedIndexes != null) {
                        i2 = this.mSelectedIndexes[0];
                    }
                    simpleDialog.items(charSequenceArr, i2);
                    simpleDialog.onSelectionChangedListener(this);
                    break;
                case 3:
                    simpleDialog.multiChoiceItems(this.mItems, this.mSelectedIndexes);
                    simpleDialog.onSelectionChangedListener(this);
                    break;
            }
            return simpleDialog;
        }

        @Override // com.rey.material.app.Dialog.Builder
        protected void onReadFromParcel(Parcel parcel) {
            this.mMode = parcel.readInt();
            switch (this.mMode) {
                case 1:
                    this.mMessage = (CharSequence) parcel.readParcelable(null);
                    return;
                case 2:
                    Parcelable[] readParcelableArray = parcel.readParcelableArray(null);
                    if (readParcelableArray == null || readParcelableArray.length <= 0) {
                        this.mItems = null;
                    } else {
                        this.mItems = new CharSequence[readParcelableArray.length];
                        for (int i = 0; i < this.mItems.length; i++) {
                            this.mItems[i] = (CharSequence) readParcelableArray[i];
                        }
                    }
                    this.mSelectedIndexes = new int[]{parcel.readInt()};
                    return;
                case 3:
                    Parcelable[] readParcelableArray2 = parcel.readParcelableArray(null);
                    if (readParcelableArray2 == null || readParcelableArray2.length <= 0) {
                        this.mItems = null;
                    } else {
                        this.mItems = new CharSequence[readParcelableArray2.length];
                        for (int i2 = 0; i2 < this.mItems.length; i2++) {
                            this.mItems[i2] = (CharSequence) readParcelableArray2[i2];
                        }
                    }
                    int readInt = parcel.readInt();
                    if (readInt > 0) {
                        this.mSelectedIndexes = new int[readInt];
                        parcel.readIntArray(this.mSelectedIndexes);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        @Override // com.rey.material.app.SimpleDialog.OnSelectionChangedListener
        public void onSelectionChanged(int i, boolean z) {
            switch (this.mMode) {
                case 2:
                    if (!z) {
                        return;
                    }
                    if (this.mSelectedIndexes == null) {
                        this.mSelectedIndexes = new int[]{i};
                        return;
                    } else {
                        this.mSelectedIndexes[0] = i;
                        return;
                    }
                case 3:
                    this.mSelectedIndexes = ((SimpleDialog) this.mDialog).getSelectedIndexes();
                    return;
                default:
                    return;
            }
        }

        @Override // com.rey.material.app.Dialog.Builder
        protected void onWriteToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mMode);
            int i2 = 0;
            int i3 = 0;
            switch (this.mMode) {
                case 1:
                    parcel.writeValue(this.mMessage);
                    return;
                case 2:
                    parcel.writeArray(this.mItems);
                    if (this.mSelectedIndexes != null) {
                        i2 = this.mSelectedIndexes[0];
                    }
                    parcel.writeInt(i2);
                    return;
                case 3:
                    parcel.writeArray(this.mItems);
                    if (this.mSelectedIndexes != null) {
                        i3 = this.mSelectedIndexes.length;
                    }
                    parcel.writeInt(i3);
                    if (i3 > 0) {
                        parcel.writeIntArray(this.mSelectedIndexes);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$InternalAdapter.class */
    public class InternalAdapter extends BaseAdapter implements CompoundButton.OnCheckedChangeListener {
        private CharSequence[] mItems;
        private int mLastSelectedIndex;
        private boolean[] mSelected;

        private InternalAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mItems == null ? 0 : this.mItems.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mItems == null ? 0 : this.mItems[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public int getLastSelectedIndex() {
            return this.mLastSelectedIndex;
        }

        public CharSequence getLastSelectedValue() {
            return this.mItems[this.mLastSelectedIndex];
        }

        public int[] getSelectedIndexes() {
            int i = 0;
            for (int i2 = 0; i2 < this.mSelected.length; i2++) {
                i = i;
                if (this.mSelected[i2]) {
                    i++;
                }
            }
            if (i == 0) {
                return null;
            }
            int[] iArr = new int[i];
            int i3 = 0;
            for (int i4 = 0; i4 < this.mSelected.length; i4++) {
                i3 = i3;
                if (this.mSelected[i4]) {
                    iArr[i3] = i4;
                    i3++;
                }
            }
            return iArr;
        }

        public CharSequence[] getSelectedValues() {
            int i = 0;
            for (int i2 = 0; i2 < this.mSelected.length; i2++) {
                i = i;
                if (this.mSelected[i2]) {
                    i++;
                }
            }
            if (i == 0) {
                return null;
            }
            CharSequence[] charSequenceArr = new CharSequence[i];
            int i3 = 0;
            for (int i4 = 0; i4 < this.mSelected.length; i4++) {
                i3 = i3;
                if (this.mSelected[i4]) {
                    charSequenceArr[i3] = this.mItems[i4];
                    i3++;
                }
            }
            return charSequenceArr;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            com.rey.material.widget.CompoundButton compoundButton = (com.rey.material.widget.CompoundButton) view;
            com.rey.material.widget.CompoundButton compoundButton2 = compoundButton;
            if (compoundButton == null) {
                int i2 = 3;
                if (SimpleDialog.this.mMode == 3) {
                    compoundButton2 = new CheckBox(viewGroup.getContext());
                    compoundButton2.applyStyle(SimpleDialog.this.mCheckBoxStyle);
                } else {
                    compoundButton2 = new RadioButton(viewGroup.getContext());
                    compoundButton2.applyStyle(SimpleDialog.this.mRadioButtonStyle);
                }
                if (SimpleDialog.this.mItemHeight != -2) {
                    compoundButton2.setMinHeight(SimpleDialog.this.mItemHeight);
                }
                compoundButton2.setGravity(8388627);
                if (Build.VERSION.SDK_INT >= 17) {
                    if (((InternalListView) viewGroup).isLayoutRtl()) {
                        i2 = 4;
                    }
                    compoundButton2.setTextDirection(i2);
                }
                compoundButton2.setTextAppearance(compoundButton2.getContext(), SimpleDialog.this.mItemTextAppearance);
                compoundButton2.setCompoundDrawablePadding(SimpleDialog.this.mContentPadding);
            }
            compoundButton2.setTag(Integer.valueOf(i));
            compoundButton2.setText(this.mItems[i]);
            if (compoundButton2 instanceof CheckBox) {
                ((CheckBox) compoundButton2).setCheckedImmediately(this.mSelected[i]);
            } else {
                ((RadioButton) compoundButton2).setCheckedImmediately(this.mSelected[i]);
            }
            compoundButton2.setOnCheckedChangeListener(this);
            return compoundButton2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int intValue = ((Integer) compoundButton.getTag()).intValue();
            if (this.mSelected[intValue] != z) {
                this.mSelected[intValue] = z;
                if (SimpleDialog.this.mOnSelectionChangedListener != null) {
                    SimpleDialog.this.mOnSelectionChangedListener.onSelectionChanged(intValue, this.mSelected[intValue]);
                }
            }
            if (SimpleDialog.this.mMode == 2 && z && this.mLastSelectedIndex != intValue) {
                this.mSelected[this.mLastSelectedIndex] = false;
                if (SimpleDialog.this.mOnSelectionChangedListener != null) {
                    SimpleDialog.this.mOnSelectionChangedListener.onSelectionChanged(this.mLastSelectedIndex, false);
                }
                com.rey.material.widget.CompoundButton compoundButton2 = (com.rey.material.widget.CompoundButton) SimpleDialog.this.mListView.getChildAt(this.mLastSelectedIndex - SimpleDialog.this.mListView.getFirstVisiblePosition());
                if (compoundButton2 != null) {
                    compoundButton2.setChecked(false);
                }
                this.mLastSelectedIndex = intValue;
            }
        }

        public void setItems(CharSequence[] charSequenceArr, int... iArr) {
            this.mItems = charSequenceArr;
            if (this.mSelected == null || this.mSelected.length != charSequenceArr.length) {
                this.mSelected = new boolean[charSequenceArr.length];
            }
            for (int i = 0; i < this.mSelected.length; i++) {
                this.mSelected[i] = false;
            }
            if (iArr != null) {
                for (int i2 : iArr) {
                    if (i2 >= 0 && i2 < this.mSelected.length) {
                        this.mSelected[i2] = true;
                        this.mLastSelectedIndex = i2;
                    }
                }
            }
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$InternalListView.class */
    public class InternalListView extends ListView {
        private boolean mIsRtl = false;

        public InternalListView(Context context) {
            super(context);
        }

        public boolean isLayoutRtl() {
            return this.mIsRtl;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
            if (getAdapter().getCount() > r0) goto L_0x0059;
         */
        @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r10
                r4 = r11
                r5 = r12
                super.onLayout(r1, r2, r3, r4, r5)
                r0 = r7
                int r0 = r0.getChildCount()
                r11 = r0
                r0 = 0
                r13 = r0
                r0 = 0
                r9 = r0
                r0 = 0
                r10 = r0
            L_0x0018:
                r0 = r9
                r1 = r11
                if (r0 >= r1) goto L_0x002f
                r0 = r10
                r1 = r7
                r2 = r9
                android.view.View r1 = r1.getChildAt(r2)
                int r1 = r1.getMeasuredHeight()
                int r0 = r0 + r1
                r10 = r0
                int r9 = r9 + 1
                goto L_0x0018
            L_0x002f:
                r0 = r7
                com.rey.material.app.SimpleDialog r0 = com.rey.material.app.SimpleDialog.this
                r14 = r0
                r0 = r10
                r1 = r7
                int r1 = r1.getMeasuredHeight()
                if (r0 > r1) goto L_0x0059
                r0 = r13
                r8 = r0
                r0 = r10
                r1 = r7
                int r1 = r1.getMeasuredHeight()
                if (r0 != r1) goto L_0x005b
                r0 = r13
                r8 = r0
                r0 = r7
                android.widget.ListAdapter r0 = r0.getAdapter()
                int r0 = r0.getCount()
                r1 = r11
                if (r0 <= r1) goto L_0x005b
            L_0x0059:
                r0 = 1
                r8 = r0
            L_0x005b:
                r0 = r14
                r1 = r8
                com.rey.material.app.Dialog r0 = r0.showDivider(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rey.material.app.SimpleDialog.InternalListView.onLayout(boolean, int, int, int, int):void");
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = i2;
            if (View.MeasureSpec.getMode(i2) == 0) {
                i3 = i2;
                if (SimpleDialog.this.mItemHeight != -2) {
                    i3 = View.MeasureSpec.makeMeasureSpec((SimpleDialog.this.mItemHeight * getAdapter().getCount()) + getPaddingTop() + getPaddingBottom(), 1073741824);
                }
            }
            super.onMeasure(i, i3);
        }

        @Override // android.widget.AbsListView, android.view.View
        public void onRtlPropertiesChanged(int i) {
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            if (this.mIsRtl != z) {
                this.mIsRtl = z;
                requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$InternalScrollView.class */
    public class InternalScrollView extends ScrollView {
        private boolean mIsRtl = false;

        public InternalScrollView(Context context) {
            super(context);
        }

        public boolean isLayoutRtl() {
            return this.mIsRtl;
        }

        @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            View childAt = getChildAt(0);
            SimpleDialog simpleDialog = SimpleDialog.this;
            boolean z2 = false;
            if (childAt != null) {
                z2 = false;
                if (childAt.getMeasuredHeight() > (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) {
                    z2 = true;
                }
            }
            simpleDialog.showDivider(z2);
        }

        @Override // android.view.View
        public void onRtlPropertiesChanged(int i) {
            View childAt;
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            if (this.mIsRtl != z) {
                this.mIsRtl = z;
                if (Build.VERSION.SDK_INT >= 17 && (childAt = getChildAt(0)) != null && childAt == SimpleDialog.this.mMessage) {
                    SimpleDialog.this.mMessage.setTextDirection(this.mIsRtl ? 4 : 3);
                }
                requestLayout();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$OnSelectionChangedListener.class */
    public interface OnSelectionChangedListener {
        void onSelectionChanged(int i, boolean z);
    }

    public SimpleDialog(Context context) {
        super(context, C1686R.C1691style.Material_App_Dialog_Simple_Light);
    }

    public SimpleDialog(Context context, int i) {
        super(context, i);
    }

    private void initListView() {
        this.mListView = new InternalListView(getContext());
        this.mListView.setDividerHeight(0);
        this.mListView.setCacheColorHint(0);
        this.mListView.setScrollBarStyle(33554432);
        this.mListView.setClipToPadding(false);
        this.mListView.setSelector(BlankDrawable.getInstance());
        this.mListView.setPadding(0, 0, 0, this.mContentPadding - this.mActionPadding);
        this.mListView.setVerticalFadingEdgeEnabled(false);
        this.mListView.setOverScrollMode(2);
        ViewCompat.setLayoutDirection(this.mListView, 2);
        this.mAdapter = new InternalAdapter();
        this.mListView.setAdapter((ListAdapter) this.mAdapter);
    }

    private void initMessageView() {
        this.mMessage = new TextView(getContext());
        this.mMessage.setTextAppearance(getContext(), this.mMessageTextAppearanceId);
        this.mMessage.setTextColor(this.mMessageTextColor);
        this.mMessage.setGravity(8388627);
    }

    private void initScrollView() {
        this.mScrollView = new InternalScrollView(getContext());
        this.mScrollView.setPadding(0, 0, 0, this.mContentPadding - this.mActionPadding);
        this.mScrollView.setClipToPadding(false);
        this.mScrollView.setFillViewport(true);
        this.mScrollView.setScrollBarStyle(33554432);
        ViewCompat.setLayoutDirection(this.mScrollView, 2);
    }

    @Override // com.rey.material.app.Dialog
    public Dialog applyStyle(int i) {
        super.applyStyle(i);
        if (i == 0) {
            return this;
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, C1686R.styleable.SimpleDialog);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == C1686R.styleable.SimpleDialog_di_messageTextAppearance) {
                i2 = obtainStyledAttributes.getResourceId(index, 0);
                z = z;
                i3 = i3;
            } else if (index == C1686R.styleable.SimpleDialog_di_messageTextColor) {
                i3 = obtainStyledAttributes.getColor(index, 0);
                z = true;
                i2 = i2;
            } else if (index == C1686R.styleable.SimpleDialog_di_radioButtonStyle) {
                radioButtonStyle(obtainStyledAttributes.getResourceId(index, 0));
                i2 = i2;
                z = z;
                i3 = i3;
            } else if (index == C1686R.styleable.SimpleDialog_di_checkBoxStyle) {
                checkBoxStyle(obtainStyledAttributes.getResourceId(index, 0));
                i2 = i2;
                z = z;
                i3 = i3;
            } else if (index == C1686R.styleable.SimpleDialog_di_itemHeight) {
                itemHeight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i2 = i2;
                z = z;
                i3 = i3;
            } else {
                i2 = i2;
                z = z;
                i3 = i3;
                if (index == C1686R.styleable.SimpleDialog_di_itemTextAppearance) {
                    itemTextAppearance(obtainStyledAttributes.getResourceId(index, 0));
                    i3 = i3;
                    z = z;
                    i2 = i2;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (i2 != 0) {
            messageTextAppearance(i2);
        }
        if (z) {
            messageTextColor(i3);
        }
        return this;
    }

    public SimpleDialog checkBoxStyle(int i) {
        if (this.mCheckBoxStyle != i) {
            this.mCheckBoxStyle = i;
            if (this.mAdapter != null && this.mMode == 3) {
                this.mAdapter.notifyDataSetChanged();
            }
        }
        return this;
    }

    @Override // com.rey.material.app.Dialog
    public Dialog clearContent() {
        super.clearContent();
        this.mMode = 0;
        return this;
    }

    @Override // com.rey.material.app.Dialog
    public Dialog contentView(View view) {
        if (this.mScrollView == null) {
            initScrollView();
        }
        if (!(this.mScrollView.getChildAt(0) == view || view == null)) {
            this.mScrollView.removeAllViews();
            this.mScrollView.addView(view);
            this.mMode = 4;
            super.contentView(this.mScrollView);
        }
        return this;
    }

    public int getSelectedIndex() {
        return this.mAdapter == null ? -1 : this.mAdapter.getLastSelectedIndex();
    }

    public int[] getSelectedIndexes() {
        return this.mAdapter == null ? null : this.mAdapter.getSelectedIndexes();
    }

    public CharSequence getSelectedValue() {
        return this.mAdapter.getLastSelectedValue();
    }

    public CharSequence[] getSelectedValues() {
        return this.mAdapter.getSelectedValues();
    }

    public SimpleDialog itemHeight(int i) {
        if (this.mItemHeight != i) {
            this.mItemHeight = i;
            if (this.mAdapter != null) {
                this.mAdapter.notifyDataSetChanged();
            }
        }
        return this;
    }

    public SimpleDialog itemTextAppearance(int i) {
        if (this.mItemTextAppearance != i) {
            this.mItemTextAppearance = i;
            if (this.mAdapter != null) {
                this.mAdapter.notifyDataSetChanged();
            }
        }
        return this;
    }

    public SimpleDialog items(CharSequence[] charSequenceArr, int i) {
        if (this.mListView == null) {
            initListView();
        }
        this.mMode = 2;
        this.mAdapter.setItems(charSequenceArr, i);
        super.contentView(this.mListView);
        return this;
    }

    public SimpleDialog message(int i) {
        return message(i == 0 ? null : getContext().getResources().getString(i));
    }

    public SimpleDialog message(CharSequence charSequence) {
        if (this.mScrollView == null) {
            initScrollView();
        }
        if (this.mMessage == null) {
            initMessageView();
        }
        if (this.mScrollView.getChildAt(0) != this.mMessage) {
            this.mScrollView.removeAllViews();
            this.mScrollView.addView(this.mMessage);
        }
        this.mMessage.setText(charSequence);
        if (!TextUtils.isEmpty(charSequence)) {
            this.mMode = 1;
            super.contentView(this.mScrollView);
        }
        return this;
    }

    public SimpleDialog messageTextAppearance(int i) {
        if (this.mMessageTextAppearanceId != i) {
            this.mMessageTextAppearanceId = i;
            if (this.mMessage != null) {
                this.mMessage.setTextAppearance(getContext(), this.mMessageTextAppearanceId);
            }
        }
        return this;
    }

    public SimpleDialog messageTextColor(int i) {
        if (this.mMessageTextColor != i) {
            this.mMessageTextColor = i;
            if (this.mMessage != null) {
                this.mMessage.setTextColor(i);
            }
        }
        return this;
    }

    public SimpleDialog multiChoiceItems(CharSequence[] charSequenceArr, int... iArr) {
        if (this.mListView == null) {
            initListView();
        }
        this.mMode = 3;
        this.mAdapter.setItems(charSequenceArr, iArr);
        super.contentView(this.mListView);
        return this;
    }

    @Override // com.rey.material.app.Dialog
    protected void onCreate() {
        messageTextAppearance(C1686R.C1691style.TextAppearance_AppCompat_Body1);
        itemHeight(-2);
        itemTextAppearance(C1686R.C1691style.TextAppearance_AppCompat_Body1);
    }

    public SimpleDialog onSelectionChangedListener(OnSelectionChangedListener onSelectionChangedListener) {
        this.mOnSelectionChangedListener = onSelectionChangedListener;
        return this;
    }

    public SimpleDialog radioButtonStyle(int i) {
        if (this.mRadioButtonStyle != i) {
            this.mRadioButtonStyle = i;
            if (this.mAdapter != null && this.mMode == 2) {
                this.mAdapter.notifyDataSetChanged();
            }
        }
        return this;
    }

    @Override // com.rey.material.app.Dialog
    public Dialog title(CharSequence charSequence) {
        contentMargin(this.mContentPadding, TextUtils.isEmpty(charSequence) ^ true ? 0 : this.mContentPadding, this.mContentPadding, 0);
        return super.title(charSequence);
    }
}
