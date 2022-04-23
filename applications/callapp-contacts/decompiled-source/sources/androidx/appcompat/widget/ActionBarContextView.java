package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.core.view.v;
import androidx.core.view.y;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends a {
    public CharSequence g;
    public CharSequence h;
    public boolean i;
    private View j;
    private View k;
    private LinearLayout l;
    private TextView m;
    private TextView n;
    private int o;
    private int p;
    private int q;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ab a2 = ab.a(context, attributeSet, a.j.ActionMode, i, 0);
        v.a(this, a2.a(a.j.ActionMode_background));
        this.o = a2.g(a.j.ActionMode_titleTextStyle, 0);
        this.p = a2.g(a.j.ActionMode_subtitleTextStyle, 0);
        this.e = a2.f(a.j.ActionMode_height, 0);
        this.q = a2.g(a.j.ActionMode_closeItemLayout, a.g.abc_action_mode_close_item_material);
        a2.f1044a.recycle();
    }

    private void d() {
        if (this.l == null) {
            LayoutInflater.from(getContext()).inflate(a.g.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.l = linearLayout;
            this.m = (TextView) linearLayout.findViewById(a.f.action_bar_title);
            this.n = (TextView) this.l.findViewById(a.f.action_bar_subtitle);
            if (this.o != 0) {
                this.m.setTextAppearance(getContext(), this.o);
            }
            if (this.p != 0) {
                this.n.setTextAppearance(getContext(), this.p);
            }
        }
        this.m.setText(this.g);
        this.n.setText(this.h);
        boolean isEmpty = TextUtils.isEmpty(this.g);
        boolean z = !TextUtils.isEmpty(this.h);
        this.n.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.l;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.l.getParent() == null) {
            addView(this.l);
        }
    }

    @Override // androidx.appcompat.widget.a
    public final /* bridge */ /* synthetic */ y a(int i, long j) {
        return super.a(i, j);
    }

    public final void a(final b bVar) {
        View view = this.j;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.q, (ViewGroup) this, false);
            this.j = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.j);
        }
        this.j.findViewById(a.f.action_mode_close_button).setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                bVar.c();
            }
        });
        g gVar = (g) bVar.b();
        if (this.f1039d != null) {
            this.f1039d.h();
        }
        this.f1039d = new ActionMenuPresenter(getContext());
        this.f1039d.d();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        gVar.a(this.f1039d, this.f1037b);
        this.f1038c = (ActionMenuView) this.f1039d.a(this);
        v.a(this.f1038c, (Drawable) null);
        addView(this.f1038c, layoutParams);
    }

    @Override // androidx.appcompat.widget.a
    public final boolean a() {
        if (this.f1039d != null) {
            return this.f1039d.e();
        }
        return false;
    }

    public final void b() {
        if (this.j == null) {
            c();
        }
    }

    public final void c() {
        removeAllViews();
        this.k = null;
        this.f1038c = null;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1039d != null) {
            this.f1039d.g();
            this.f1039d.i();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.g);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean a2 = ah.a(this);
        int paddingRight = a2 ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.j;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
                int i6 = a2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = a2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int a3 = a(paddingRight, i6, a2);
                i5 = a(a3 + a(this.j, a3, paddingTop, paddingTop2, a2), i7, a2);
            }
        }
        LinearLayout linearLayout = this.l;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.k == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + a(this.l, i5, paddingTop, paddingTop2, a2);
                }
            }
        }
        View view2 = this.k;
        if (view2 != null) {
            a(view2, i8, paddingTop, paddingTop2, a2);
        }
        int paddingLeft = a2 ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.f1038c != null) {
            a(this.f1038c, paddingLeft, paddingTop, paddingTop2, !a2);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) != 0) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = this.e > 0 ? this.e : View.MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i4 = size2 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            View view = this.j;
            int i5 = paddingLeft;
            if (view != null) {
                int a2 = a(view, paddingLeft, makeMeasureSpec);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
                i5 = a2 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            int i6 = i5;
            if (this.f1038c != null) {
                i6 = i5;
                if (this.f1038c.getParent() == this) {
                    i6 = a(this.f1038c, i5, makeMeasureSpec);
                }
            }
            LinearLayout linearLayout = this.l;
            int i7 = i6;
            if (linearLayout != null) {
                i7 = i6;
                if (this.k == null) {
                    if (this.i) {
                        this.l.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.l.getMeasuredWidth();
                        boolean z = measuredWidth <= i6;
                        i7 = i6;
                        if (z) {
                            i7 = i6 - measuredWidth;
                        }
                        this.l.setVisibility(z ? 0 : 8);
                    } else {
                        i7 = a(linearLayout, i6, makeMeasureSpec);
                    }
                }
            }
            View view2 = this.k;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i8 = layoutParams.width != -2 ? 1073741824 : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                int i9 = i7;
                if (layoutParams.width >= 0) {
                    i9 = Math.min(layoutParams.width, i7);
                }
                if (layoutParams.height == -2) {
                    i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                }
                int i10 = i4;
                if (layoutParams.height >= 0) {
                    i10 = Math.min(layoutParams.height, i4);
                }
                this.k.measure(View.MeasureSpec.makeMeasureSpec(i9, i8), View.MeasureSpec.makeMeasureSpec(i10, i3));
            }
            if (this.e <= 0) {
                int childCount = getChildCount();
                int i11 = 0;
                for (int i12 = 0; i12 < childCount; i12++) {
                    int measuredHeight = getChildAt(i12).getMeasuredHeight() + paddingTop;
                    i11 = i11;
                    if (measuredHeight > i11) {
                        i11 = measuredHeight;
                    }
                }
                setMeasuredDimension(size, i11);
                return;
            }
            setMeasuredDimension(size, size2);
        } else {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i) {
        this.e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.k;
        if (view2 != null) {
            removeView(view2);
        }
        this.k = view;
        if (!(view == null || (linearLayout = this.l) == null)) {
            removeView(linearLayout);
            this.l = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.h = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.g = charSequence;
        d();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.i) {
            requestLayout();
        }
        this.i = z;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
