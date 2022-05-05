package com.scand.realmbrowser.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.scand.realmbrowser.C1506R;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/view/RowView.class */
public class RowView extends HorizontalScrollView {

    /* renamed from: f */
    private LinearLayout f12551f;

    /* renamed from: g */
    private int f12552g;

    /* renamed from: k */
    private int f12556k;

    /* renamed from: l */
    private OnScrollChangedListener f12557l;

    /* renamed from: m */
    private OnCellClickListener f12558m;

    /* renamed from: n */
    private OnColumnWidthChangeListener f12559n;

    /* renamed from: p */
    private int f12561p;

    /* renamed from: h */
    private int f12553h = -1;

    /* renamed from: i */
    private int f12554i = -1;

    /* renamed from: j */
    private int f12555j = -1;

    /* renamed from: o */
    private SparseArray<CharSequence> f12560o = new SparseArray<>();

    /* renamed from: q */
    private int f12562q = 48;

    /* renamed from: r */
    private final View.OnClickListener f12563r = new View.OnClickListener() { // from class: com.scand.realmbrowser.view.RowView.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (RowView.this.f12558m != null) {
                RowView.this.f12558m.mo7678a(RowView.this, ((Integer) view.getTag()).intValue());
            }
        }
    };

    /* renamed from: s */
    private final View.OnLongClickListener f12564s = new View.OnLongClickListener() { // from class: com.scand.realmbrowser.view.RowView.2

        /* renamed from: f */
        private int[] f12566f = new int[2];

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (RowView.this.f12559n == null) {
                return true;
            }
            view.getLocationOnScreen(this.f12566f);
            int intValue = ((Integer) view.getTag()).intValue();
            OnColumnWidthChangeListener onColumnWidthChangeListener = RowView.this.f12559n;
            int[] iArr = this.f12566f;
            onColumnWidthChangeListener.mo7677a(iArr[0] + 75, iArr[0], iArr[0] + view.getWidth(), intValue);
            return true;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/view/RowView$OnCellClickListener.class */
    public interface OnCellClickListener {
        /* renamed from: a */
        void mo7678a(RowView rowView, int i);
    }

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/view/RowView$OnColumnWidthChangeListener.class */
    public interface OnColumnWidthChangeListener {
        /* renamed from: a */
        void mo7677a(int i, int i2, int i3, int i4);
    }

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/view/RowView$OnScrollChangedListener.class */
    public interface OnScrollChangedListener {
        /* renamed from: a */
        void mo7676a(int i, int i2, int i3, int i4);
    }

    public RowView(Context context) {
        super(context);
        m7682e();
    }

    public RowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m7682e();
    }

    public RowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7682e();
    }

    /* renamed from: c */
    private void m7684c(int i) {
        int childCount = this.f12551f.getChildCount();
        if (i >= childCount || i < 0) {
            throw new IllegalArgumentException("Invalid position, position " + i + ", child count " + childCount);
        }
    }

    /* renamed from: e */
    private void m7682e() {
        setOverScrollMode(2);
        this.f12556k = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        this.f12552g = getResources().getDimensionPixelSize(C1506R.dimen.realm_browser_min_column_width);
        setHorizontalScrollBarEnabled(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f12551f = new LinearLayout(getContext());
        this.f12551f.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f12551f.setOrientation(0);
        this.f12551f.setClipChildren(false);
        this.f12551f.setClipToPadding(false);
        this.f12551f.setDividerDrawable(ResourcesCompat.m19613a(getResources(), C1506R.C1508drawable.realm_browser_placeholder_1dp, getContext().getTheme()));
        this.f12551f.setShowDividers(2);
        addView(this.f12551f);
    }

    /* renamed from: f */
    private void m7681f() {
        int i = this.f12552g;
        int i2 = this.f12554i;
        this.f12551f.removeAllViews();
        int i3 = this.f12554i;
        if (i3 != 0) {
            int i4 = this.f12555j;
            int i5 = (i4 == -1 || i * i2 >= i4) ? this.f12552g : i4 / i3;
            for (int i6 = 0; i6 < this.f12554i; i6++) {
                TextView textView = new TextView(getContext());
                textView.setLayoutParams(new LinearLayout.LayoutParams(i5, -1));
                textView.setGravity(this.f12562q);
                textView.setTextAppearance(getContext(), this.f12561p);
                textView.setMaxLines(2);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                int i7 = this.f12556k;
                textView.setPadding(i7, 0, i7, 0);
                int i8 = this.f12553h;
                if (i8 > 0) {
                    textView.setMinimumHeight(i8);
                }
                textView.setTag(Integer.valueOf(i6));
                textView.setOnClickListener(this.f12563r);
                textView.setOnLongClickListener(this.f12564s);
                this.f12551f.addView(textView);
            }
        }
    }

    /* renamed from: h */
    private void m7679h() {
        if (!(this.f12555j == -1 || this.f12554i == 0)) {
            if (this.f12551f.getChildCount() != this.f12554i) {
                m7681f();
            }
            int i = this.f12552g;
            int i2 = this.f12554i;
            int i3 = this.f12555j;
            if (i * i2 < i3) {
                i = i3 / i2;
            }
            for (int i4 = 0; i4 < this.f12554i; i4++) {
                TextView textView = (TextView) this.f12551f.getChildAt(i4);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
                if (layoutParams.width != i) {
                    layoutParams.width = i;
                    textView.setLayoutParams(layoutParams);
                }
                textView.setText(this.f12560o.get(i4));
            }
        }
    }

    /* renamed from: d */
    public int m7683d(int i) {
        return ((TextView) this.f12551f.getChildAt(i)).getWidth();
    }

    /* renamed from: g */
    public void m7680g(boolean z) {
        this.f12551f.setDividerDrawable(ResourcesCompat.m19613a(getResources(), z ? C1506R.C1508drawable.realm_browser_divider_vertical : C1506R.C1508drawable.realm_browser_placeholder_1dp, getContext().getTheme()));
    }

    public int getColumnsNumber() {
        return this.f12554i;
    }

    public int getMinColumnHeight() {
        return this.f12553h;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        OnScrollChangedListener onScrollChangedListener = this.f12557l;
        if (onScrollChangedListener != null) {
            onScrollChangedListener.mo7676a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 && i != 0) {
            this.f12555j = i;
            m7679h();
        }
    }

    public void setCellsGravity(int i) {
        this.f12562q = i;
        if (this.f12551f.getChildCount() > 0) {
            for (int i2 = 0; i2 < this.f12551f.getChildCount(); i2++) {
                ((TextView) this.f12551f.getChildAt(i2)).setGravity(this.f12562q);
            }
        }
    }

    public void setColumnText(CharSequence charSequence, int i) {
        if (this.f12555j == -1) {
            this.f12560o.append(i, charSequence);
            return;
        }
        m7684c(i);
        ((TextView) this.f12551f.getChildAt(i)).setText(charSequence);
    }

    public void setColumnWidth(int i, int i2) {
        if (this.f12555j != -1) {
            ((TextView) this.f12551f.getChildAt(i2)).setLayoutParams(new LinearLayout.LayoutParams(i, -1));
        }
    }

    public void setColumnsNumber(int i) {
        if (i >= 0) {
            this.f12554i = i;
            m7681f();
            return;
        }
        throw new IllegalArgumentException("Invalid columns number");
    }

    public void setMinColumnHeight(int i) {
        this.f12553h = i;
    }

    public void setOnCellClickListener(OnCellClickListener onCellClickListener) {
        this.f12558m = onCellClickListener;
    }

    public void setOnColumnWidthChangeListener(OnColumnWidthChangeListener onColumnWidthChangeListener) {
        this.f12559n = onColumnWidthChangeListener;
    }

    public void setOnScrollChangedListener(OnScrollChangedListener onScrollChangedListener) {
        this.f12557l = onScrollChangedListener;
    }

    public void setTextAppearance(int i) {
        this.f12561p = i;
        if (this.f12551f.getChildCount() > 0) {
            for (int i2 = 0; i2 < this.f12551f.getChildCount(); i2++) {
                ((TextView) this.f12551f.getChildAt(i2)).setTextAppearance(getContext(), this.f12561p);
            }
        }
    }
}
