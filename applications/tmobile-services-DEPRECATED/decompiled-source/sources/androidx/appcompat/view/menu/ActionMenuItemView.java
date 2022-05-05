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
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ForwardingListener;
import androidx.appcompat.widget.TooltipCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements MenuView.ItemView, View.OnClickListener, ActionMenuView.ActionMenuChildView {

    /* renamed from: j */
    MenuItemImpl f531j;

    /* renamed from: k */
    private CharSequence f532k;

    /* renamed from: l */
    private Drawable f533l;

    /* renamed from: m */
    MenuBuilder.ItemInvoker f534m;

    /* renamed from: n */
    private ForwardingListener f535n;

    /* renamed from: o */
    PopupCallback f536o;

    /* renamed from: p */
    private boolean f537p;

    /* renamed from: q */
    private boolean f538q;

    /* renamed from: r */
    private int f539r;

    /* renamed from: s */
    private int f540s;

    /* renamed from: t */
    private int f541t;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener.class */
    private class ActionMenuItemForwardingListener extends ForwardingListener {
        public ActionMenuItemForwardingListener() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        /* renamed from: b */
        public ShowableListMenu mo21411b() {
            PopupCallback popupCallback = ActionMenuItemView.this.f536o;
            if (popupCallback != null) {
                return popupCallback.mo21719a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        /* renamed from: c */
        protected boolean mo21410c() {
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            MenuBuilder.ItemInvoker itemInvoker = actionMenuItemView.f534m;
            boolean z = false;
            if (itemInvoker != null) {
                z = false;
                if (itemInvoker.mo21701a(actionMenuItemView.f531j)) {
                    ShowableListMenu b = mo21411b();
                    z = false;
                    if (b != null) {
                        z = false;
                        if (b.mo21440a()) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$PopupCallback.class */
    public static abstract class PopupCallback {
        /* renamed from: a */
        public abstract ShowableListMenu mo21719a();
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
        this.f537p = m21929g();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ActionMenuItemView, i, 0);
        this.f539r = obtainStyledAttributes.getDimensionPixelSize(C0042R.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f541t = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f540s = -1;
        setSaveEnabled(false);
    }

    /* renamed from: g */
    private boolean m21929g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* renamed from: h */
    private void m21928h() {
        boolean isEmpty = TextUtils.isEmpty(this.f532k);
        boolean z = true;
        if (this.f533l != null) {
            if (this.f531j.m21843B()) {
                z = true;
                if (!this.f537p) {
                    if (this.f538q) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        CharSequence charSequence = null;
        setText(z2 ? this.f532k : null);
        CharSequence contentDescription = this.f531j.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.f531j.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f531j.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z2) {
                charSequence = this.f531j.getTitle();
            }
            TooltipCompat.m21170a(this, charSequence);
            return;
        }
        TooltipCompat.m21170a(this, tooltipText);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    /* renamed from: a */
    public boolean mo21700a() {
        return m21930f();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    /* renamed from: b */
    public boolean mo21699b() {
        return m21930f() && this.f531j.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: d */
    public boolean mo9539d() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: e */
    public void mo9538e(MenuItemImpl menuItemImpl, int i) {
        this.f531j = menuItemImpl;
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.m21836i(this));
        setId(menuItemImpl.getItemId());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setEnabled(menuItemImpl.isEnabled());
        if (menuItemImpl.hasSubMenu() && this.f535n == null) {
            this.f535n = new ActionMenuItemForwardingListener();
        }
    }

    /* renamed from: f */
    public boolean m21930f() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f531j;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuBuilder.ItemInvoker itemInvoker = this.f534m;
        if (itemInvoker != null) {
            itemInvoker.mo21701a(this.f531j);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f537p = m21929g();
        m21928h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean f = m21930f();
        if (f && (i3 = this.f540s) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f539r) : this.f539r;
        if (mode != 1073741824 && this.f539r > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!f && this.f533l != null) {
            super.setPadding((getMeasuredWidth() - this.f533l.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener;
        if (!this.f531j.hasSubMenu() || (forwardingListener = this.f535n) == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f538q != z) {
            this.f538q = z;
            MenuItemImpl menuItemImpl = this.f531j;
            if (menuItemImpl != null) {
                menuItemImpl.m21842c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f533l = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f541t;
            int i2 = intrinsicWidth;
            int i3 = intrinsicHeight;
            if (intrinsicWidth > i) {
                i3 = (int) (intrinsicHeight * (i / intrinsicWidth));
                i2 = i;
            }
            int i4 = this.f541t;
            int i5 = i2;
            int i6 = i3;
            if (i3 > i4) {
                i5 = (int) (i2 * (i4 / i3));
                i6 = i4;
            }
            drawable.setBounds(0, 0, i5, i6);
        }
        setCompoundDrawables(drawable, null, null, null);
        m21928h();
    }

    public void setItemInvoker(MenuBuilder.ItemInvoker itemInvoker) {
        this.f534m = itemInvoker;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f540s = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(PopupCallback popupCallback) {
        this.f536o = popupCallback;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTitle(CharSequence charSequence) {
        this.f532k = charSequence;
        m21928h();
    }
}
