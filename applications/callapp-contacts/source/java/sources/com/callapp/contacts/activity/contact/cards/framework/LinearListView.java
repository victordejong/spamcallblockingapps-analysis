package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand;
import com.callapp.contacts.util.Activities;
import it.gmariotti.cardslib.library.C18061a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/LinearListView.class */
public class LinearListView extends LinearLayout {

    /* renamed from: c */
    private static final int f21369c = (int) Activities.m27699a(56.0f);

    /* renamed from: d */
    private static final int f21370d = (int) Activities.m27699a(16.0f);

    /* renamed from: g */
    private static final int[] f21371g = {16843049, 16843476, 16843561, 16843562, 2130968746};

    /* renamed from: a */
    protected int f21372a;

    /* renamed from: b */
    protected int f21373b;

    /* renamed from: e */
    private int f21374e;

    /* renamed from: f */
    private CardWithListExpand.MyLinearListAdapter f21375f;

    /* renamed from: h */
    private Drawable f21376h;

    public LinearListView(Context context) {
        this(context, null);
    }

    public LinearListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, f21371g, i, i);
        try {
            this.f21374e = obtainStyledAttributes.getColor(4, -16777216);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                setDividerDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            try {
                int dimensionPixelSize = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_listItem, i, i).getDimensionPixelSize(0, 0);
                if (dimensionPixelSize != 0) {
                    setDividerHeight(dimensionPixelSize);
                }
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: a */
    private void m31137a(Canvas canvas, int i) {
        this.f21376h.setBounds(getPaddingLeft() + getDividerLeftPadding(), i, (getWidth() - getPaddingRight()) - getDividerRightPadding(), this.f21373b + i);
        this.f21376h.draw(canvas);
    }

    /* renamed from: a */
    private boolean m31138a(int i) {
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

    /* renamed from: b */
    private void m31136b(Canvas canvas, int i) {
        this.f21376h.setBounds(i, getPaddingTop() + getDividerPadding(), this.f21372a + i, (getHeight() - getPaddingBottom()) - getDividerPadding());
        this.f21376h.draw(canvas);
    }

    private int getDividerLeftPadding() {
        return f21369c;
    }

    private int getDividerRightPadding() {
        return f21370d;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (m31138a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f21373b;
            } else {
                layoutParams.leftMargin = this.f21372a;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && m31138a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f21373b;
            } else {
                layoutParams.rightMargin = this.f21372a;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f21376h != null) {
            if (getOrientation() == 1) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt != null && childAt.getVisibility() != 8 && m31138a(i)) {
                        m31137a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
                    }
                }
                if (m31138a(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    m31137a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f21373b : childAt2.getBottom());
                }
            } else {
                int childCount2 = getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt3 = getChildAt(i2);
                    if (childAt3 != null && childAt3.getVisibility() != 8 && m31138a(i2)) {
                        m31136b(canvas, childAt3.getLeft() - ((LinearLayout.LayoutParams) childAt3.getLayoutParams()).leftMargin);
                    }
                }
                if (m31138a(childCount2)) {
                    View childAt4 = getChildAt(childCount2 - 1);
                    m31136b(canvas, childAt4 == null ? (getWidth() - getPaddingRight()) - this.f21372a : childAt4.getRight());
                }
            }
        }
        super.onDraw(canvas);
    }

    public void setAdapter(CardWithListExpand.MyLinearListAdapter myLinearListAdapter) {
        this.f21375f = myLinearListAdapter;
        setOrientation(1);
        CardWithListExpand.MyLinearListAdapter myLinearListAdapter2 = this.f21375f;
        if (myLinearListAdapter2 != null) {
            int count = myLinearListAdapter2.getCount();
            int i = 0;
            while (i < count) {
                View childAt = i < getChildCount() ? getChildAt(i) : null;
                View view = this.f21375f.getView(i, childAt, this);
                if (childAt == null) {
                    addView(view);
                } else {
                    childAt.setVisibility(0);
                }
                i++;
            }
            int childCount = getChildCount();
            for (int i2 = count; i2 < childCount; i2++) {
                getChildAt(i2).setVisibility(8);
            }
        }
    }

    public void setDividerColor(int i) {
        Drawable drawable = this.f21376h;
        if (drawable != null) {
            this.f21374e = i;
            if (drawable instanceof ColorDrawable) {
                ((ColorDrawable) drawable).setColor(i);
            } else {
                drawable.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f21376h) {
            return;
        }
        this.f21376h = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f21372a = drawable.getIntrinsicWidth();
            this.f21373b = drawable.getIntrinsicHeight();
        } else {
            this.f21372a = 0;
            this.f21373b = 0;
        }
        setDividerColor(this.f21374e);
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerHeight(int i) {
        if (getOrientation() == 1) {
            this.f21373b = i;
        } else {
            this.f21372a = i;
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != getOrientation()) {
            int i2 = this.f21373b;
            this.f21373b = this.f21372a;
            this.f21372a = i2;
        }
        super.setOrientation(i);
    }
}
