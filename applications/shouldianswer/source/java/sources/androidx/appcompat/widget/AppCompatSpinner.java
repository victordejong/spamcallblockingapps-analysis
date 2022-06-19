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
import androidx.appcompat.C0051a;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.p023g.C0552u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements AbstractC0551t {

    /* renamed from: c */
    private static final int[] f933c = {16843505};

    /* renamed from: a */
    int f934a;

    /* renamed from: b */
    final Rect f935b;

    /* renamed from: d */
    private final C0331e f936d;

    /* renamed from: e */
    private final Context f937e;

    /* renamed from: f */
    private AbstractView$OnAttachStateChangeListenerC0274ad f938f;

    /* renamed from: g */
    private SpinnerAdapter f939g;

    /* renamed from: h */
    private final boolean f940h;

    /* renamed from: i */
    private AbstractC0238d f941i;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.AppCompatSpinner.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        boolean f945a;

        SavedState(Parcel parcel) {
            super(parcel);
            this.f945a = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f945a ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    public class DialogInterface$OnClickListenerC0232a implements DialogInterface.OnClickListener, AbstractC0238d {

        /* renamed from: a */
        DialogInterfaceC0090d f946a;

        /* renamed from: c */
        private ListAdapter f948c;

        /* renamed from: d */
        private CharSequence f949d;

        DialogInterface$OnClickListenerC0232a() {
            AppCompatSpinner.this = r4;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public CharSequence mo7408a() {
            return this.f949d;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7407a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7406a(int i, int i2) {
            if (this.f948c == null) {
                return;
            }
            DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f949d;
            if (charSequence != null) {
                c0091a.m7920a(charSequence);
            }
            this.f946a = c0091a.m7922a(this.f948c, AppCompatSpinner.this.getSelectedItemPosition(), this).m7916b();
            ListView m7931a = this.f946a.m7931a();
            if (Build.VERSION.SDK_INT >= 17) {
                m7931a.setTextDirection(i);
                m7931a.setTextAlignment(i2);
            }
            this.f946a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7405a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7273a(ListAdapter listAdapter) {
            this.f948c = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7404a(CharSequence charSequence) {
            this.f949d = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: b */
        public void mo7403b() {
            DialogInterfaceC0090d dialogInterfaceC0090d = this.f946a;
            if (dialogInterfaceC0090d != null) {
                dialogInterfaceC0090d.dismiss();
                this.f946a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: b */
        public void mo7402b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: c */
        public void mo7400c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: c */
        public boolean mo7401c() {
            DialogInterfaceC0090d dialogInterfaceC0090d = this.f946a;
            return dialogInterfaceC0090d != null ? dialogInterfaceC0090d.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: d */
        public Drawable mo7399d() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: e */
        public int mo7398e() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: f */
        public int mo7397f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f948c.getItemId(i));
            }
            mo7403b();
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public static class C0233b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        private SpinnerAdapter f950a;

        /* renamed from: b */
        private ListAdapter f951b;

        public C0233b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f950a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f951b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                        return;
                    }
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                } else if (!(spinnerAdapter instanceof AbstractC0307ao)) {
                } else {
                    AbstractC0307ao abstractC0307ao = (AbstractC0307ao) spinnerAdapter;
                    if (abstractC0307ao.m7169a() != null) {
                        return;
                    }
                    abstractC0307ao.m7168a(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f951b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f950a;
            return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f950a;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f950a;
            return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f950a;
            return spinnerAdapter == null ? (char) 65535 : spinnerAdapter.getItemId(i);
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
            SpinnerAdapter spinnerAdapter = this.f950a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f951b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f950a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f950a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    public class C0234c extends C0279af implements AbstractC0238d {

        /* renamed from: a */
        ListAdapter f952a;

        /* renamed from: h */
        private CharSequence f954h;

        /* renamed from: i */
        private final Rect f955i = new Rect();

        /* renamed from: j */
        private int f956j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0234c(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            AppCompatSpinner.this = r7;
            m7268b(r7);
            m7271a(true);
            m7263d(0);
            m7274a(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, C0234c.this.f952a.getItemId(i2));
                    }
                    C0234c.this.mo7270b();
                }
            });
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public CharSequence mo7408a() {
            return this.f954h;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7406a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean c = mo7266c();
            m7410g();
            m7253i(2);
            super.mo7250j_();
            ListView k_ = mo7248k_();
            k_.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                k_.setTextDirection(i);
                k_.setTextAlignment(i2);
            }
            m7251j(AppCompatSpinner.this.getSelectedItemPosition());
            if (!c && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        C0234c c0234c = C0234c.this;
                        if (!c0234c.m7412a(AppCompatSpinner.this)) {
                            C0234c.this.mo7270b();
                            return;
                        }
                        C0234c.this.m7410g();
                        C0234c.super.mo7250j_();
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                m7272a(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.3
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

        @Override // androidx.appcompat.widget.C0279af, androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7273a(ListAdapter listAdapter) {
            super.mo7273a(listAdapter);
            this.f952a = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: a */
        public void mo7404a(CharSequence charSequence) {
            this.f954h = charSequence;
        }

        /* renamed from: a */
        boolean m7412a(View view) {
            return C0552u.m6292D(view) && view.getGlobalVisibleRect(this.f955i);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0238d
        /* renamed from: c */
        public void mo7400c(int i) {
            this.f956j = i;
        }

        /* renamed from: g */
        void m7410g() {
            Drawable d = m7264d();
            int i = 0;
            if (d != null) {
                d.getPadding(AppCompatSpinner.this.f935b);
                i = C0321ay.m7115a(AppCompatSpinner.this) ? AppCompatSpinner.this.f935b.right : -AppCompatSpinner.this.f935b.left;
            } else {
                Rect rect = AppCompatSpinner.this.f935b;
                AppCompatSpinner.this.f935b.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.f934a == -2) {
                int m7415a = AppCompatSpinner.this.m7415a((SpinnerAdapter) this.f952a, m7264d());
                int i2 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.f935b.left) - AppCompatSpinner.this.f935b.right;
                int i3 = m7415a;
                if (m7415a > i2) {
                    i3 = i2;
                }
                m7255h(Math.max(i3, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.f934a == -1) {
                m7255h((width - paddingLeft) - paddingRight);
            } else {
                m7255h(AppCompatSpinner.this.f934a);
            }
            m7269b(C0321ay.m7115a(AppCompatSpinner.this) ? i + (((width - paddingRight) - m7249k()) - m7409h()) : i + paddingLeft + m7409h());
        }

        /* renamed from: h */
        public int m7409h() {
            return this.f956j;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public interface AbstractC0238d {
        /* renamed from: a */
        CharSequence mo7408a();

        /* renamed from: a */
        void mo7407a(int i);

        /* renamed from: a */
        void mo7406a(int i, int i2);

        /* renamed from: a */
        void mo7405a(Drawable drawable);

        /* renamed from: a */
        void mo7273a(ListAdapter listAdapter);

        /* renamed from: a */
        void mo7404a(CharSequence charSequence);

        /* renamed from: b */
        void mo7403b();

        /* renamed from: b */
        void mo7402b(int i);

        /* renamed from: c */
        void mo7400c(int i);

        /* renamed from: c */
        boolean mo7401c();

        /* renamed from: d */
        Drawable mo7399d();

        /* renamed from: e */
        int mo7398e();

        /* renamed from: f */
        int mo7397f();
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d8, code lost:
        if (r12 == null) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    /* renamed from: a */
    int m7415a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        int i2 = 0;
        View view = null;
        while (max2 < min) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            int i3 = i;
            if (itemViewType != i) {
                view = null;
                i3 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
            max2++;
            i = i3;
        }
        int i4 = i2;
        if (drawable != null) {
            drawable.getPadding(this.f935b);
            i4 = i2 + this.f935b.left + this.f935b.right;
        }
        return i4;
    }

    /* renamed from: a */
    void m7416a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f941i.mo7406a(getTextDirection(), getTextAlignment());
        } else {
            this.f941i.mo7406a(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.f936d;
        if (c0331e != null) {
            c0331e.m7084c();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            return abstractC0238d.mo7397f();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            return abstractC0238d.mo7398e();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f941i != null) {
            return this.f934a;
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownWidth();
    }

    final AbstractC0238d getInternalPopup() {
        return this.f941i;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            return abstractC0238d.mo7399d();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        return super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f937e;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0238d abstractC0238d = this.f941i;
        return abstractC0238d != null ? abstractC0238d.mo7408a() : super.getPrompt();
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.f936d;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.f936d;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d == null || !abstractC0238d.mo7401c()) {
            return;
        }
        this.f941i.mo7403b();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f941i == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m7415a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f945a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!AppCompatSpinner.this.getInternalPopup().mo7401c()) {
                    AppCompatSpinner.this.m7416a();
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
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        AbstractC0238d abstractC0238d = this.f941i;
        savedState.f945a = abstractC0238d != null && abstractC0238d.mo7401c();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnAttachStateChangeListenerC0274ad abstractView$OnAttachStateChangeListenerC0274ad = this.f938f;
        if (abstractView$OnAttachStateChangeListenerC0274ad == null || !abstractView$OnAttachStateChangeListenerC0274ad.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            if (abstractC0238d.mo7401c()) {
                return true;
            }
            m7416a();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f940h) {
            this.f939g = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f941i == null) {
            return;
        }
        Context context = this.f937e;
        Context context2 = context;
        if (context == null) {
            context2 = getContext();
        }
        this.f941i.mo7273a(new C0233b(spinnerAdapter, context2.getTheme()));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.f936d;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.f936d;
        if (c0331e != null) {
            c0331e.m7092a(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            abstractC0238d.mo7400c(i);
            this.f941i.mo7402b(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            abstractC0238d.mo7407a(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f941i != null) {
            this.f934a = i;
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            abstractC0238d.mo7405a(drawable);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0062a.m7983b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0238d abstractC0238d = this.f941i;
        if (abstractC0238d != null) {
            abstractC0238d.mo7404a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.f936d;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.f936d;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }
}
