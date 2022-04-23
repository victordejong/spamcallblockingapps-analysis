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
import it.gmariotti.cardslib.library.a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/LinearListView.class */
public class LinearListView extends LinearLayout {

    /* renamed from: c  reason: collision with root package name */
    private static final int f11860c = (int) Activities.a(56.0f);

    /* renamed from: d  reason: collision with root package name */
    private static final int f11861d = (int) Activities.a(16.0f);
    private static final int[] g = {16843049, 16843476, 16843561, 16843562, 2130968746};

    /* renamed from: a  reason: collision with root package name */
    protected int f11862a;

    /* renamed from: b  reason: collision with root package name */
    protected int f11863b;
    private int e;
    private CardWithListExpand.MyLinearListAdapter f;
    private Drawable h;

    public LinearListView(Context context) {
        this(context, null);
    }

    public LinearListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, g, i, i);
        try {
            this.e = obtainStyledAttributes.getColor(4, -16777216);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                setDividerDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            try {
                int dimensionPixelSize = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_listItem, i, i).getDimensionPixelSize(0, 0);
                if (dimensionPixelSize != 0) {
                    setDividerHeight(dimensionPixelSize);
                }
            } finally {
            }
        } finally {
        }
    }

    private void a(Canvas canvas, int i) {
        this.h.setBounds(getPaddingLeft() + getDividerLeftPadding(), i, (getWidth() - getPaddingRight()) - getDividerRightPadding(), this.f11863b + i);
        this.h.draw(canvas);
    }

    private boolean a(int i) {
        if (i == 0) {
            return (getShowDividers() & 1) != 0;
        }
        if (i == getChildCount()) {
            return (getShowDividers() & 4) != 0;
        }
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

    private void b(Canvas canvas, int i) {
        this.h.setBounds(i, getPaddingTop() + getDividerPadding(), this.f11862a + i, (getHeight() - getPaddingBottom()) - getDividerPadding());
        this.h.draw(canvas);
    }

    private int getDividerLeftPadding() {
        return f11860c;
    }

    private int getDividerRightPadding() {
        return f11861d;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.f11863b;
            } else {
                layoutParams.leftMargin = this.f11862a;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.f11863b;
            } else {
                layoutParams.rightMargin = this.f11862a;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.h != null) {
            if (getOrientation() == 1) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !a(i))) {
                        a(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
                    }
                }
                if (a(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f11863b : childAt2.getBottom());
                }
            } else {
                int childCount2 = getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt3 = getChildAt(i2);
                    if (!(childAt3 == null || childAt3.getVisibility() == 8 || !a(i2))) {
                        b(canvas, childAt3.getLeft() - ((LinearLayout.LayoutParams) childAt3.getLayoutParams()).leftMargin);
                    }
                }
                if (a(childCount2)) {
                    View childAt4 = getChildAt(childCount2 - 1);
                    b(canvas, childAt4 == null ? (getWidth() - getPaddingRight()) - this.f11862a : childAt4.getRight());
                }
            }
        }
        super.onDraw(canvas);
    }

    public void setAdapter(CardWithListExpand.MyLinearListAdapter myLinearListAdapter) {
        this.f = myLinearListAdapter;
        setOrientation(1);
        CardWithListExpand.MyLinearListAdapter myLinearListAdapter2 = this.f;
        if (myLinearListAdapter2 != null) {
            int count = myLinearListAdapter2.getCount();
            int i = 0;
            while (i < count) {
                View childAt = i < getChildCount() ? getChildAt(i) : null;
                View view = this.f.getView(i, childAt, this);
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
        Drawable drawable = this.h;
        if (drawable != null) {
            this.e = i;
            if (drawable instanceof ColorDrawable) {
                ((ColorDrawable) drawable).setColor(i);
            } else {
                drawable.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.h) {
            this.h = drawable;
            boolean z = false;
            if (drawable != null) {
                this.f11862a = drawable.getIntrinsicWidth();
                this.f11863b = drawable.getIntrinsicHeight();
            } else {
                this.f11862a = 0;
                this.f11863b = 0;
            }
            setDividerColor(this.e);
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerHeight(int i) {
        if (getOrientation() == 1) {
            this.f11863b = i;
        } else {
            this.f11862a = i;
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != getOrientation()) {
            int i2 = this.f11863b;
            this.f11863b = this.f11862a;
            this.f11862a = i2;
        }
        super.setOrientation(i);
    }
}
