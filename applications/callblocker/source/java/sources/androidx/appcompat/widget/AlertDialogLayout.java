package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0083a;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AlertDialogLayout.class */
public class AlertDialogLayout extends LinearLayoutCompat {
    public AlertDialogLayout(Context context) {
        super(context);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m21723a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    /* renamed from: c */
    private static int m21721c(View view) {
        int m20312l = C0595u.m20312l(view);
        if (m20312l <= 0) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.getChildCount() == 1) {
                    m20312l = m21721c(viewGroup.getChildAt(0));
                }
            }
            m20312l = 0;
        }
        return m20312l;
    }

    /* renamed from: c */
    private boolean m21722c(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        View view = null;
        View view2 = null;
        View view3 = null;
        int childCount = getChildCount();
        int i8 = 0;
        while (true) {
            if (i8 < childCount) {
                View childAt = getChildAt(i8);
                if (childAt.getVisibility() != 8) {
                    int id = childAt.getId();
                    if (id != C0083a.C0089f.topPanel) {
                        if (id != C0083a.C0089f.buttonPanel) {
                            if (id != C0083a.C0089f.contentPanel && id != C0083a.C0089f.customPanel) {
                                z = false;
                                break;
                            } else if (view3 != null) {
                                z = false;
                                break;
                            } else {
                                view3 = childAt;
                            }
                        } else {
                            view2 = childAt;
                        }
                    } else {
                        view = childAt;
                    }
                }
                i8++;
            } else {
                int mode = View.MeasureSpec.getMode(i2);
                int size = View.MeasureSpec.getSize(i2);
                int mode2 = View.MeasureSpec.getMode(i);
                int i9 = 0;
                int paddingBottom = getPaddingBottom() + getPaddingTop();
                int i10 = paddingBottom;
                if (view != null) {
                    view.measure(i, 0);
                    i10 = paddingBottom + view.getMeasuredHeight();
                    i9 = View.combineMeasuredStates(0, view.getMeasuredState());
                }
                int i11 = 0;
                if (view2 != null) {
                    view2.measure(i, 0);
                    i11 = m21721c(view2);
                    int measuredHeight = view2.getMeasuredHeight();
                    i10 += i11;
                    i9 = View.combineMeasuredStates(i9, view2.getMeasuredState());
                    i3 = measuredHeight - i11;
                } else {
                    i3 = 0;
                }
                if (view3 != null) {
                    view3.measure(i, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - i10), mode));
                    i4 = view3.getMeasuredHeight();
                    i10 += i4;
                    i9 = View.combineMeasuredStates(i9, view3.getMeasuredState());
                } else {
                    i4 = 0;
                }
                int i12 = size - i10;
                if (view2 != null) {
                    int min = Math.min(i12, i3);
                    i6 = i12;
                    int i13 = i11;
                    if (min > 0) {
                        i6 = i12 - min;
                        i13 = i11 + min;
                    }
                    view2.measure(i, View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
                    int measuredHeight2 = view2.getMeasuredHeight();
                    i5 = View.combineMeasuredStates(i9, view2.getMeasuredState());
                    i7 = (i10 - i11) + measuredHeight2;
                } else {
                    i5 = i9;
                    i6 = i12;
                    i7 = i10;
                }
                if (view3 != null && i6 > 0) {
                    view3.measure(i, View.MeasureSpec.makeMeasureSpec(i6 + i4, mode));
                    int measuredHeight3 = view3.getMeasuredHeight();
                    i5 = View.combineMeasuredStates(i5, view3.getMeasuredState());
                    i7 = measuredHeight3 + (i7 - i4);
                }
                int i14 = 0;
                int i15 = 0;
                while (i15 < childCount) {
                    View childAt2 = getChildAt(i15);
                    int i16 = i14;
                    if (childAt2.getVisibility() != 8) {
                        i16 = Math.max(i14, childAt2.getMeasuredWidth());
                    }
                    i15++;
                    i14 = i16;
                }
                setMeasuredDimension(View.resolveSizeAndState(i14 + getPaddingLeft() + getPaddingRight(), i, i5), View.resolveSizeAndState(i7, i2, 0));
                if (mode2 != 1073741824) {
                    m21720d(childCount, i2);
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: d */
    private void m21720d(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LinearLayoutCompat.C0250a c0250a = (LinearLayoutCompat.C0250a) childAt.getLayoutParams();
                if (c0250a.width == -1) {
                    int i4 = c0250a.height;
                    c0250a.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    c0250a.height = i4;
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int paddingLeft = getPaddingLeft();
        int i6 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingRight2 = getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        switch (gravity & 112) {
            case 16:
                paddingTop = (((i4 - i2) - measuredHeight) / 2) + getPaddingTop();
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - measuredHeight;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        int i7 = 0;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            int i8 = paddingTop;
            if (childAt != null) {
                i8 = paddingTop;
                if (childAt.getVisibility() != 8) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    LinearLayoutCompat.C0250a c0250a = (LinearLayoutCompat.C0250a) childAt.getLayoutParams();
                    int i9 = c0250a.f1057h;
                    int i10 = i9;
                    if (i9 < 0) {
                        i10 = gravity & 8388615;
                    }
                    switch (C0576c.m20421a(i10, C0595u.m20320g(this)) & 7) {
                        case 1:
                            i5 = ((((((i6 - paddingLeft) - paddingRight2) - measuredWidth) / 2) + paddingLeft) + c0250a.leftMargin) - c0250a.rightMargin;
                            break;
                        case 5:
                            i5 = ((i6 - paddingRight) - measuredWidth) - c0250a.rightMargin;
                            break;
                        default:
                            i5 = paddingLeft + c0250a.leftMargin;
                            break;
                    }
                    if (m21676c(i7)) {
                        paddingTop += intrinsicHeight;
                    }
                    int i11 = c0250a.topMargin + paddingTop;
                    m21723a(childAt, i5, i11, measuredWidth, measuredHeight2);
                    i8 = i11 + c0250a.bottomMargin + measuredHeight2;
                }
            }
            i7++;
            paddingTop = i8;
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        if (!m21722c(i, i2)) {
            super.onMeasure(i, i2);
        }
    }
}
