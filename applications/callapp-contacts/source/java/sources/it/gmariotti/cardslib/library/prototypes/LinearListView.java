package it.gmariotti.cardslib.library.prototypes;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/LinearListView.class */
public class LinearListView extends LinearLayout {
    public static final int INVALID_POSITION = -1;
    private static final int LinearLayout_divider = 0;
    private static final int[] R_styleable_LinearLayout = {16843049, 16843476, 16843561, 16843562};
    private Drawable mDivider;
    protected int mDividerHeight;
    protected int mDividerWidth;
    private CardWithList.LinearListAdapter mListAdapter;

    public LinearListView(Context context) {
        super(context);
        initAttrs(null, 0);
    }

    public LinearListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initAttrs(attributeSet, 0);
    }

    public LinearListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initAttrs(attributeSet, i);
    }

    void drawDividersHorizontal(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawVerticalDivider(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (hasDividerBeforeChildAt(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            drawVerticalDivider(canvas, childAt2 == null ? (getWidth() - getPaddingRight()) - this.mDividerWidth : childAt2.getRight());
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (hasDividerBeforeChildAt(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            drawHorizontalDivider(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : childAt2.getBottom());
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + getDividerPadding(), i, (getWidth() - getPaddingRight()) - getDividerPadding(), this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + getDividerPadding(), this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - getDividerPadding());
        this.mDivider.draw(canvas);
    }

    public CardWithList.LinearListAdapter getAdapter() {
        return this.mListAdapter;
    }

    public int getDividerHeight() {
        return this.mDividerHeight;
    }

    public int getPositionForView(View view) {
        while (true) {
            try {
                View view2 = (View) view.getParent();
                if (view2.equals(this)) {
                    break;
                }
                view = view2;
            } catch (ClassCastException e) {
                return -1;
            }
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i).equals(view)) {
                return i;
            }
        }
        return -1;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (getShowDividers() & 1) != 0;
        } else if (i == getChildCount()) {
            return (getShowDividers() & 4) != 0;
        } else {
            boolean z = false;
            if ((getShowDividers() & 2) != 0) {
                while (true) {
                    i--;
                    z = false;
                    if (i < 0) {
                        break;
                    } else if (getChildAt(i).getVisibility() != 8) {
                        z = true;
                        break;
                    }
                }
            }
            return z;
        }
    }

    protected void initAttrs(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R_styleable_LinearLayout, i, i);
        try {
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                setDividerDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            try {
                int dimensionPixelSize = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_listItem, i, i).getDimensionPixelSize(C18061a.C18068g.card_listItem_card_list_item_dividerHeight, 0);
                if (dimensionPixelSize != 0) {
                    setDividerHeight(dimensionPixelSize);
                }
            } finally {
            }
        } finally {
        }
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (hasDividerBeforeChildAt(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.mDividerHeight;
            } else {
                layoutParams.leftMargin = this.mDividerWidth;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && hasDividerBeforeChildAt(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.mDividerHeight;
            } else {
                layoutParams.rightMargin = this.mDividerWidth;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (getOrientation() == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
        super.onDraw(canvas);
    }

    public void setAdapter(CardWithList.LinearListAdapter linearListAdapter) {
        this.mListAdapter = linearListAdapter;
        setOrientation(1);
        if (this.mListAdapter != null) {
            for (int i = 0; i < this.mListAdapter.getCount(); i++) {
                View view = this.mListAdapter.getView(i, null, null);
                if (view != null) {
                    addView(view);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        boolean z = false;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerHeight(int i) {
        if (getOrientation() == 1) {
            this.mDividerHeight = i;
        } else {
            this.mDividerWidth = i;
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != getOrientation()) {
            int i2 = this.mDividerHeight;
            this.mDividerHeight = this.mDividerWidth;
            this.mDividerWidth = i2;
        }
        super.setOrientation(i);
    }
}
