package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ad;
import androidx.appcompat.widget.r;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements View.OnClickListener, n.a, ActionMenuView.a {

    /* renamed from: a  reason: collision with root package name */
    i f763a;

    /* renamed from: b  reason: collision with root package name */
    g.b f764b;

    /* renamed from: c  reason: collision with root package name */
    b f765c;
    private CharSequence e;
    private Drawable f;
    private r g;
    private boolean h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    final class a extends r {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.r
        public final p a() {
            if (ActionMenuItemView.this.f765c != null) {
                return ActionMenuItemView.this.f765c.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.r
        public final boolean b() {
            p a2;
            return ActionMenuItemView.this.f764b != null && ActionMenuItemView.this.f764b.a(ActionMenuItemView.this.f763a) && (a2 = a()) != null && a2.e();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$b.class */
    public static abstract class b {
        public abstract p a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.h = f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActionMenuItemView, i, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(a.j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.l = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.k = -1;
        setSaveEnabled(false);
    }

    private boolean f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    private void g() {
        boolean isEmpty = TextUtils.isEmpty(this.e);
        boolean z = true;
        if (this.f != null) {
            if (this.f763a.i()) {
                z = true;
                if (!this.h) {
                    if (this.i) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        CharSequence charSequence = null;
        setText(z2 ? this.e : null);
        CharSequence contentDescription = this.f763a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.f763a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f763a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z2) {
                charSequence = this.f763a.getTitle();
            }
            ad.a(this, charSequence);
            return;
        }
        ad.a(this, tooltipText);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final i a() {
        return this.f763a;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final void a(i iVar) {
        this.f763a = iVar;
        setIcon(iVar.getIcon());
        setTitle(iVar.a((n.a) this));
        setId(iVar.getItemId());
        setVisibility(iVar.isVisible() ? 0 : 8);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.g == null) {
            this.g = new a();
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final boolean b() {
        return true;
    }

    public final boolean c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public final boolean d() {
        return c() && this.f763a.getIcon() == null;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public final boolean e() {
        return c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        g.b bVar = this.f764b;
        if (bVar != null) {
            bVar.a(this.f763a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.h = f();
        g();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean c2 = c();
        if (c2 && (i3 = this.k) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.j) : this.j;
        if (mode != 1073741824 && this.j > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!c2 && this.f != null) {
            super.setPadding((getMeasuredWidth() - this.f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        r rVar;
        if (!this.f763a.hasSubMenu() || (rVar = this.g) == null || !rVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.i != z) {
            this.i = z;
            i iVar = this.f763a;
            if (iVar != null) {
                iVar.f819d.h();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.l;
            int i2 = intrinsicWidth;
            int i3 = intrinsicHeight;
            if (intrinsicWidth > i) {
                i3 = (int) (intrinsicHeight * (i / intrinsicWidth));
                i2 = i;
            }
            if (i3 > i) {
                i2 = (int) (i2 * (i / i3));
            } else {
                i = i3;
            }
            drawable.setBounds(0, 0, i2, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        g();
    }

    public void setItemInvoker(g.b bVar) {
        this.f764b = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.k = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(b bVar) {
        this.f765c = bVar;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTitle(CharSequence charSequence) {
        this.e = charSequence;
        g();
    }
}
