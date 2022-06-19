package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.C0083a;
import androidx.appcompat.app.DialogInterfaceC0114b;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.p026h.C0595u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements AbstractC0594t {

    /* renamed from: c */
    private static final int[] f995c = {16843505};

    /* renamed from: a */
    int f996a;

    /* renamed from: b */
    final Rect f997b;

    /* renamed from: d */
    private final C0347f f998d;

    /* renamed from: e */
    private final Context f999e;

    /* renamed from: f */
    private AbstractView$OnAttachStateChangeListenerC0282ab f1000f;

    /* renamed from: g */
    private SpinnerAdapter f1001g;

    /* renamed from: h */
    private final boolean f1002h;

    /* renamed from: i */
    private AbstractC0248e f1003i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    public class DialogInterface$OnClickListenerC0240a implements DialogInterface.OnClickListener, AbstractC0248e {

        /* renamed from: a */
        DialogInterfaceC0114b f1007a;

        /* renamed from: c */
        private ListAdapter f1009c;

        /* renamed from: d */
        private CharSequence f1010d;

        DialogInterface$OnClickListenerC0240a() {
            AppCompatSpinner.this = r4;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public CharSequence mo21711a() {
            return this.f1010d;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21710a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21709a(int i, int i2) {
            if (this.f1009c == null) {
                return;
            }
            DialogInterfaceC0114b.C0115a c0115a = new DialogInterfaceC0114b.C0115a(AppCompatSpinner.this.getPopupContext());
            if (this.f1010d != null) {
                c0115a.m22226a(this.f1010d);
            }
            this.f1007a = c0115a.m22228a(this.f1009c, AppCompatSpinner.this.getSelectedItemPosition(), this).m22225b();
            ListView m22234a = this.f1007a.m22234a();
            if (Build.VERSION.SDK_INT >= 17) {
                m22234a.setTextDirection(i);
                m22234a.setTextAlignment(i2);
            }
            this.f1007a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21708a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21548a(ListAdapter listAdapter) {
            this.f1009c = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21707a(CharSequence charSequence) {
            this.f1010d = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: b */
        public Drawable mo21706b() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: b */
        public void mo21705b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: c */
        public int mo21704c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: c */
        public void mo21703c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: d */
        public void mo21702d() {
            if (this.f1007a != null) {
                this.f1007a.dismiss();
                this.f1007a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: e */
        public boolean mo21701e() {
            return this.f1007a != null ? this.f1007a.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: f */
        public int mo21700f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f1009c.getItemId(i));
            }
            mo21702d();
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public static class C0241b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        private SpinnerAdapter f1011a;

        /* renamed from: b */
        private ListAdapter f1012b;

        public C0241b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1011a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1012b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                        return;
                    }
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                } else if (!(spinnerAdapter instanceof AbstractC0313al)) {
                } else {
                    AbstractC0313al abstractC0313al = (AbstractC0313al) spinnerAdapter;
                    if (abstractC0313al.m21446a() != null) {
                        return;
                    }
                    abstractC0313al.m21445a(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1012b;
            return listAdapter != null ? listAdapter.areAllItemsEnabled() : true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f1011a == null ? 0 : this.f1011a.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            return this.f1011a == null ? null : this.f1011a.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f1011a == null ? null : this.f1011a.getItem(i);
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f1011a == null ? (char) 65535 : this.f1011a.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.f1011a != null && this.f1011a.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1012b;
            return listAdapter != null ? listAdapter.isEnabled(i) : true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f1011a != null) {
                this.f1011a.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f1011a != null) {
                this.f1011a.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    public class C0242c extends C0285ac implements AbstractC0248e {

        /* renamed from: a */
        ListAdapter f1013a;

        /* renamed from: h */
        private CharSequence f1015h;

        /* renamed from: i */
        private final Rect f1016i = new Rect();

        /* renamed from: j */
        private int f1017j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0242c(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            AppCompatSpinner.this = r7;
            m21542b(r7);
            m21546a(true);
            m21537d(0);
            m21549a(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, C0242c.this.f1013a.getItemId(i2));
                    }
                    C0242c.this.mo21538d();
                }
            });
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public CharSequence mo21711a() {
            return this.f1015h;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21709a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean e = mo21536e();
            m21715h();
            m21527i(2);
            super.mo21545a_();
            ListView g = mo21532g();
            g.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                g.setTextDirection(i);
                g.setTextAlignment(i2);
            }
            m21525j(AppCompatSpinner.this.getSelectedItemPosition());
            if (!e && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        if (!C0242c.this.m21717a(AppCompatSpinner.this)) {
                            C0242c.this.mo21538d();
                            return;
                        }
                        C0242c.this.m21715h();
                        C0242c.super.mo21545a_();
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                m21547a(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.3
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public void onDismiss() {
                        ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                        if (viewTreeObserver2 != null) {
                            viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                        }
                    }
                });
            }
        }

        @Override // androidx.appcompat.widget.C0285ac, androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21548a(ListAdapter listAdapter) {
            super.mo21548a(listAdapter);
            this.f1013a = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: a */
        public void mo21707a(CharSequence charSequence) {
            this.f1015h = charSequence;
        }

        /* renamed from: a */
        boolean m21717a(View view) {
            return C0595u.m20370B(view) && view.getGlobalVisibleRect(this.f1016i);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0248e
        /* renamed from: c */
        public void mo21703c(int i) {
            this.f1017j = i;
        }

        /* renamed from: h */
        void m21715h() {
            int i;
            Drawable b = m21544b();
            if (b != null) {
                b.getPadding(AppCompatSpinner.this.f997b);
                i = C0327av.m21389a(AppCompatSpinner.this) ? AppCompatSpinner.this.f997b.right : -AppCompatSpinner.this.f997b.left;
            } else {
                Rect rect = AppCompatSpinner.this.f997b;
                AppCompatSpinner.this.f997b.right = 0;
                rect.left = 0;
                i = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.f996a == -2) {
                int m21718a = AppCompatSpinner.this.m21718a((SpinnerAdapter) this.f1013a, m21544b());
                int i2 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.f997b.left) - AppCompatSpinner.this.f997b.right;
                if (m21718a > i2) {
                    m21718a = i2;
                }
                m21529h(Math.max(m21718a, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.f996a == -1) {
                m21529h((width - paddingLeft) - paddingRight);
            } else {
                m21529h(AppCompatSpinner.this.f996a);
            }
            m21543b(C0327av.m21389a(AppCompatSpinner.this) ? (((width - paddingRight) - m21523l()) - m21714i()) + i : m21714i() + paddingLeft + i);
        }

        /* renamed from: i */
        public int m21714i() {
            return this.f1017j;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public static class C0246d extends View.BaseSavedState {
        public static final Parcelable.Creator<C0246d> CREATOR = new Parcelable.Creator<C0246d>() { // from class: androidx.appcompat.widget.AppCompatSpinner.d.1
            /* renamed from: a */
            public C0246d createFromParcel(Parcel parcel) {
                return new C0246d(parcel);
            }

            /* renamed from: a */
            public C0246d[] newArray(int i) {
                return new C0246d[i];
            }
        };

        /* renamed from: a */
        boolean f1023a;

        C0246d(Parcel parcel) {
            super(parcel);
            this.f1023a = parcel.readByte() != 0;
        }

        C0246d(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte((byte) (this.f1023a ? 1 : 0));
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e.class */
    public interface AbstractC0248e {
        /* renamed from: a */
        CharSequence mo21711a();

        /* renamed from: a */
        void mo21710a(int i);

        /* renamed from: a */
        void mo21709a(int i, int i2);

        /* renamed from: a */
        void mo21708a(Drawable drawable);

        /* renamed from: a */
        void mo21548a(ListAdapter listAdapter);

        /* renamed from: a */
        void mo21707a(CharSequence charSequence);

        /* renamed from: b */
        Drawable mo21706b();

        /* renamed from: b */
        void mo21705b(int i);

        /* renamed from: c */
        int mo21704c();

        /* renamed from: c */
        void mo21703c(int i);

        /* renamed from: d */
        void mo21702d();

        /* renamed from: e */
        boolean mo21701e();

        /* renamed from: f */
        int mo21700f();
    }

    public AppCompatSpinner(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatSpinner(Context context, int i) {
        this(context, null, C0083a.C0084a.spinnerStyle, i);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    /* renamed from: a */
    int m21718a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter != null) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
            int max = Math.max(0, getSelectedItemPosition());
            int min = Math.min(spinnerAdapter.getCount(), max + 15);
            int i2 = 0;
            View view = null;
            i = 0;
            for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
                int itemViewType = spinnerAdapter.getItemViewType(max2);
                if (itemViewType != i2) {
                    view = null;
                    i2 = itemViewType;
                }
                view = spinnerAdapter.getView(max2, view, this);
                if (view.getLayoutParams() == null) {
                    view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                }
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i = Math.max(i, view.getMeasuredWidth());
            }
            if (drawable != null) {
                drawable.getPadding(this.f997b);
                i = this.f997b.left + this.f997b.right + i;
            }
        }
        return i;
    }

    /* renamed from: a */
    void m21719a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1003i.mo21709a(getTextDirection(), getTextAlignment());
        } else {
            this.f1003i.mo21709a(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f998d != null) {
            this.f998d.m21323c();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        return this.f1003i != null ? this.f1003i.mo21700f() : Build.VERSION.SDK_INT >= 16 ? super.getDropDownHorizontalOffset() : 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        return this.f1003i != null ? this.f1003i.mo21704c() : Build.VERSION.SDK_INT >= 16 ? super.getDropDownVerticalOffset() : 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f1003i != null ? this.f996a : Build.VERSION.SDK_INT >= 16 ? super.getDropDownWidth() : 0;
    }

    final AbstractC0248e getInternalPopup() {
        return this.f1003i;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        return this.f1003i != null ? this.f1003i.mo21706b() : Build.VERSION.SDK_INT >= 16 ? super.getPopupBackground() : null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f999e;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        return this.f1003i != null ? this.f1003i.mo21711a() : super.getPrompt();
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f998d != null ? this.f998d.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f998d != null ? this.f998d.m21326b() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1003i == null || !this.f1003i.mo21701e()) {
            return;
        }
        this.f1003i.mo21702d();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1003i == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m21718a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C0246d c0246d = (C0246d) parcelable;
        super.onRestoreInstanceState(c0246d.getSuperState());
        if (!c0246d.f1023a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!AppCompatSpinner.this.getInternalPopup().mo21701e()) {
                    AppCompatSpinner.this.m21719a();
                }
                ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver2 != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver2.removeGlobalOnLayoutListener(this);
                    }
                }
            }
        });
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        C0246d c0246d = new C0246d(super.onSaveInstanceState());
        c0246d.f1023a = this.f1003i != null && this.f1003i.mo21701e();
        return c0246d;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.f1000f == null || !this.f1000f.onTouch(this, motionEvent)) ? super.onTouchEvent(motionEvent) : true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        boolean performClick;
        if (this.f1003i != null) {
            if (!this.f1003i.mo21701e()) {
                m21719a();
            }
            performClick = true;
        } else {
            performClick = super.performClick();
        }
        return performClick;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1002h) {
            this.f1001g = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1003i == null) {
            return;
        }
        this.f1003i.mo21548a(new C0241b(spinnerAdapter, (this.f999e == null ? getContext() : this.f999e).getTheme()));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f998d != null) {
            this.f998d.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f998d != null) {
            this.f998d.m21331a(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        if (this.f1003i != null) {
            this.f1003i.mo21703c(i);
            this.f1003i.mo21705b(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        if (this.f1003i != null) {
            this.f1003i.mo21710a(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f1003i != null) {
            this.f996a = i;
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        if (this.f1003i != null) {
            this.f1003i.mo21708a(drawable);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0094a.m22275b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        if (this.f1003i != null) {
            this.f1003i.mo21707a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f998d != null) {
            this.f998d.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f998d != null) {
            this.f998d.m21329a(mode);
        }
    }
}
