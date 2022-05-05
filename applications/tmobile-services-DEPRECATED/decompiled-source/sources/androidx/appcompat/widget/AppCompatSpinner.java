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
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {

    /* renamed from: n */
    private static final int[] f974n = {16843505};

    /* renamed from: f */
    private final AppCompatBackgroundHelper f975f;

    /* renamed from: g */
    private final Context f976g;

    /* renamed from: h */
    private ForwardingListener f977h;

    /* renamed from: i */
    private SpinnerAdapter f978i;

    /* renamed from: j */
    private final boolean f979j;

    /* renamed from: k */
    private SpinnerPopup f980k;

    /* renamed from: l */
    int f981l;

    /* renamed from: m */
    final Rect f982m;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$DialogPopup.class */
    class DialogPopup implements SpinnerPopup, DialogInterface.OnClickListener {
        @VisibleForTesting

        /* renamed from: f */
        AlertDialog f986f;

        /* renamed from: g */
        private ListAdapter f987g;

        /* renamed from: h */
        private CharSequence f988h;

        DialogPopup() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: a */
        public boolean mo21591a() {
            AlertDialog alertDialog = this.f986f;
            return alertDialog != null ? alertDialog.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: c */
        public void mo21590c(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: d */
        public int mo21589d() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public void dismiss() {
            AlertDialog alertDialog = this.f986f;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f986f = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: f */
        public void mo21588f(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: g */
        public CharSequence mo21587g() {
            return this.f988h;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: i */
        public Drawable mo21586i() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: j */
        public void mo21585j(CharSequence charSequence) {
            this.f988h = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: l */
        public void mo21584l(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: m */
        public void mo21583m(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: n */
        public void mo21582n(int i, int i2) {
            if (this.f987g != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.f988h;
                if (charSequence != null) {
                    builder.mo9812m(charSequence);
                }
                builder.mo9814k(this.f987g, AppCompatSpinner.this.getSelectedItemPosition(), this);
                AlertDialog a = builder.mo9823a();
                this.f986f = a;
                ListView f = a.m22278f();
                if (Build.VERSION.SDK_INT >= 17) {
                    f.setTextDirection(i);
                    f.setTextAlignment(i2);
                }
                this.f986f.show();
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: o */
        public int mo21581o() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f987g.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: p */
        public void mo21431p(ListAdapter listAdapter) {
            this.f987g = listAdapter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$DropDownAdapter.class */
    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter {

        /* renamed from: f */
        private SpinnerAdapter f990f;

        /* renamed from: g */
        private ListAdapter f991g;

        public DropDownAdapter(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources.Theme theme) {
            this.f990f = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f991g = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                ThemedSpinnerAdapter themedSpinnerAdapter2 = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter2.getDropDownViewTheme() == null) {
                    themedSpinnerAdapter2.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f991g;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f990f;
            return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f990f;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f990f;
            return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f990f;
            return spinnerAdapter == null ? -1L : spinnerAdapter.getItemId(i);
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
            SpinnerAdapter spinnerAdapter = this.f990f;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f991g;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f990f;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f990f;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$DropdownPopup.class */
    class DropdownPopup extends ListPopupWindow implements SpinnerPopup {

        /* renamed from: N */
        private CharSequence f992N;

        /* renamed from: O */
        ListAdapter f993O;

        /* renamed from: P */
        private final Rect f994P = new Rect();

        /* renamed from: Q */
        private int f995Q;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            m21454D(AppCompatSpinner.this);
            m21448J(true);
            m21443O(0);
            m21446L(new AdapterView.OnItemClickListener(AppCompatSpinner.this) { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        DropdownPopup dropdownPopup = DropdownPopup.this;
                        AppCompatSpinner.this.performItemClick(view, i2, dropdownPopup.f993O.getItemId(i2));
                    }
                    DropdownPopup.this.dismiss();
                }
            });
        }

        /* renamed from: S */
        void m21596S() {
            Drawable i = m21435i();
            int i2 = 0;
            if (i != null) {
                i.getPadding(AppCompatSpinner.this.f982m);
                i2 = ViewUtils.m21149b(AppCompatSpinner.this) ? AppCompatSpinner.this.f982m.right : -AppCompatSpinner.this.f982m.left;
            } else {
                Rect rect = AppCompatSpinner.this.f982m;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i3 = appCompatSpinner.f981l;
            if (i3 == -2) {
                int a = appCompatSpinner.m21599a((SpinnerAdapter) this.f993O, m21435i());
                int i4 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f982m;
                int i5 = (i4 - rect2.left) - rect2.right;
                int i6 = a;
                if (a > i5) {
                    i6 = i5;
                }
                m21452F(Math.max(i6, (width - paddingLeft) - paddingRight));
            } else if (i3 == -1) {
                m21452F((width - paddingLeft) - paddingRight);
            } else {
                m21452F(i3);
            }
            m21436f(ViewUtils.m21149b(AppCompatSpinner.this) ? i2 + (((width - paddingRight) - m21422z()) - m21595T()) : i2 + paddingLeft + m21595T());
        }

        /* renamed from: T */
        public int m21595T() {
            return this.f995Q;
        }

        /* renamed from: U */
        boolean m21594U(View view) {
            return ViewCompat.m19219R(view) && view.getGlobalVisibleRect(this.f994P);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: g */
        public CharSequence mo21587g() {
            return this.f992N;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: j */
        public void mo21585j(CharSequence charSequence) {
            this.f992N = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: m */
        public void mo21583m(int i) {
            this.f995Q = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: n */
        public void mo21582n(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean a = mo21440a();
            m21596S();
            m21449I(2);
            super.mo21439b();
            ListView k = mo21434k();
            k.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                k.setTextDirection(i);
                k.setTextAlignment(i2);
            }
            m21442P(AppCompatSpinner.this.getSelectedItemPosition());
            if (!a && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        DropdownPopup dropdownPopup = DropdownPopup.this;
                        if (!dropdownPopup.m21594U(AppCompatSpinner.this)) {
                            DropdownPopup.this.dismiss();
                            return;
                        }
                        DropdownPopup.this.m21596S();
                        DropdownPopup.super.mo21439b();
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                m21447K(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.3
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

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        /* renamed from: p */
        public void mo21431p(ListAdapter listAdapter) {
            super.mo21431p(listAdapter);
            this.f993O = listAdapter;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.AppCompatSpinner.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        boolean f1001f;

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1001f = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f1001f ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SpinnerPopup.class */
    public interface SpinnerPopup {
        /* renamed from: a */
        boolean mo21591a();

        /* renamed from: c */
        void mo21590c(Drawable drawable);

        /* renamed from: d */
        int mo21589d();

        void dismiss();

        /* renamed from: f */
        void mo21588f(int i);

        /* renamed from: g */
        CharSequence mo21587g();

        /* renamed from: i */
        Drawable mo21586i();

        /* renamed from: j */
        void mo21585j(CharSequence charSequence);

        /* renamed from: l */
        void mo21584l(int i);

        /* renamed from: m */
        void mo21583m(int i);

        /* renamed from: n */
        void mo21582n(int i, int i2);

        /* renamed from: o */
        int mo21581o();

        /* renamed from: p */
        void mo21431p(ListAdapter listAdapter);
    }

    public AppCompatSpinner(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.spinnerStyle);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e0, code lost:
        if (r12 == null) goto L_0x00f3;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    /* renamed from: a */
    int m21599a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            i = i;
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        int i3 = i2;
        if (drawable != null) {
            drawable.getPadding(this.f982m);
            Rect rect = this.f982m;
            i3 = i2 + rect.left + rect.right;
        }
        return i3;
    }

    /* renamed from: b */
    void m21598b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f980k.mo21582n(getTextDirection(), getTextAlignment());
        } else {
            this.f980k.mo21582n(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21656b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            return spinnerPopup.mo21589d();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            return spinnerPopup.mo21581o();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f980k != null) {
            return this.f981l;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @VisibleForTesting
    final SpinnerPopup getInternalPopup() {
        return this.f980k;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            return spinnerPopup.mo21586i();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f976g;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        SpinnerPopup spinnerPopup = this.f980k;
        return spinnerPopup != null ? spinnerPopup.mo21587g() : super.getPrompt();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21655c() : null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21654d() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null && spinnerPopup.mo21591a()) {
            this.f980k.dismiss();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f980k != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m21599a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f1001f && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (!AppCompatSpinner.this.getInternalPopup().mo21591a()) {
                        AppCompatSpinner.this.m21598b();
                    }
                    ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                    if (viewTreeObserver2 == null) {
                        return;
                    }
                    if (Build.VERSION.SDK_INT >= 16) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver2.removeGlobalOnLayoutListener(this);
                    }
                }
            });
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SpinnerPopup spinnerPopup = this.f980k;
        savedState.f1001f = spinnerPopup != null && spinnerPopup.mo21591a();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.f977h;
        if (forwardingListener == null || !forwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup == null) {
            return super.performClick();
        }
        if (spinnerPopup.mo21591a()) {
            return true;
        }
        m21598b();
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f979j) {
            this.f978i = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f980k != null) {
            Context context = this.f976g;
            Context context2 = context;
            if (context == null) {
                context2 = getContext();
            }
            this.f980k.mo21431p(new DropDownAdapter(spinnerAdapter, context2.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21652f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21651g(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            spinnerPopup.mo21583m(i);
            this.f980k.mo21588f(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            spinnerPopup.mo21584l(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f980k != null) {
            this.f981l = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            spinnerPopup.mo21590c(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i) {
        setPopupBackgroundDrawable(AppCompatResources.m22069d(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        SpinnerPopup spinnerPopup = this.f980k;
        if (spinnerPopup != null) {
            spinnerPopup.mo21585j(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21649i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f975f;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21648j(mode);
        }
    }
}
