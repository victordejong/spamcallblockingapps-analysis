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
import androidx.appcompat.a;
import androidx.appcompat.app.c;
import androidx.core.view.u;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements u {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f917d = {16843505};

    /* renamed from: a  reason: collision with root package name */
    d f918a;

    /* renamed from: b  reason: collision with root package name */
    int f919b;

    /* renamed from: c  reason: collision with root package name */
    final Rect f920c;
    private final androidx.appcompat.widget.d e;
    private final Context f;
    private r g;
    private SpinnerAdapter h;
    private final boolean i;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.AppCompatSpinner.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mShowDropdown;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mShowDropdown = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.mShowDropdown ? (byte) 1 : (byte) 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    final class a implements DialogInterface.OnClickListener, d {

        /* renamed from: a  reason: collision with root package name */
        androidx.appcompat.app.c f924a;

        /* renamed from: c  reason: collision with root package name */
        private ListAdapter f926c;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f927d;

        a() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final CharSequence a() {
            return this.f927d;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(int i, int i2) {
            if (this.f926c != null) {
                c.a aVar = new c.a(AppCompatSpinner.this.getPopupContext());
                CharSequence charSequence = this.f927d;
                if (charSequence != null) {
                    aVar.setTitle(charSequence);
                }
                ListAdapter listAdapter = this.f926c;
                int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
                aVar.f649a.w = listAdapter;
                aVar.f649a.x = this;
                aVar.f649a.I = selectedItemPosition;
                aVar.f649a.H = true;
                androidx.appcompat.app.c create = aVar.create();
                this.f924a = create;
                ListView listView = create.f648a.g;
                if (Build.VERSION.SDK_INT >= 17) {
                    listView.setTextDirection(i);
                    listView.setTextAlignment(i2);
                }
                this.f924a.show();
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(ListAdapter listAdapter) {
            this.f926c = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(CharSequence charSequence) {
            this.f927d = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final Drawable b() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final int c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void d() {
            androidx.appcompat.app.c cVar = this.f924a;
            if (cVar != null) {
                cVar.dismiss();
                this.f924a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final boolean e() {
            androidx.appcompat.app.c cVar = this.f924a;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final int f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f926c.getItemId(i));
            }
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public static final class b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpinnerAdapter f928a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f929b;

        public b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f928a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f929b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f929b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f928a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f928a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f928a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f928a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public final boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f928a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f929b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f928a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f928a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    final class c extends ListPopupWindow implements d {

        /* renamed from: a  reason: collision with root package name */
        CharSequence f930a;

        /* renamed from: b  reason: collision with root package name */
        ListAdapter f931b;

        /* renamed from: c  reason: collision with root package name */
        final Rect f932c = new Rect();
        private int o;

        public c(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.i = AppCompatSpinner.this;
            j();
            i();
            this.j = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, c.this.f931b.getItemId(i2));
                    }
                    c.this.d();
                }
            };
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final CharSequence a() {
            return this.f930a;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean e = e();
            h();
            l();
            super.e_();
            DropDownListView dropDownListView = this.e;
            dropDownListView.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                dropDownListView.setTextDirection(i);
                dropDownListView.setTextAlignment(i2);
            }
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            DropDownListView dropDownListView2 = this.e;
            if (e() && dropDownListView2 != null) {
                dropDownListView2.f950a = false;
                dropDownListView2.setSelection(selectedItemPosition);
                if (dropDownListView2.getChoiceMode() != 0) {
                    dropDownListView2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!e && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        c cVar = c.this;
                        AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
                        if (!(v.E(appCompatSpinner) && appCompatSpinner.getGlobalVisibleRect(cVar.f932c))) {
                            c.this.d();
                            return;
                        }
                        c.this.h();
                        c.super.e_();
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                a(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.3
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public final void onDismiss() {
                        ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                        if (viewTreeObserver2 != null) {
                            viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                        }
                    }
                });
            }
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.f931b = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void a(CharSequence charSequence) {
            this.f930a = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.d
        public final void c(int i) {
            this.o = i;
        }

        final void h() {
            Drawable background = this.n.getBackground();
            int i = 0;
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.f920c);
                i = ah.a(AppCompatSpinner.this) ? AppCompatSpinner.this.f920c.right : -AppCompatSpinner.this.f920c.left;
            } else {
                Rect rect = AppCompatSpinner.this.f920c;
                AppCompatSpinner.this.f920c.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.f919b == -2) {
                int a2 = AppCompatSpinner.this.a((SpinnerAdapter) this.f931b, this.n.getBackground());
                int i2 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.f920c.left) - AppCompatSpinner.this.f920c.right;
                int i3 = a2;
                if (a2 > i2) {
                    i3 = i2;
                }
                d(Math.max(i3, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.f919b == -1) {
                d((width - paddingLeft) - paddingRight);
            } else {
                d(AppCompatSpinner.this.f919b);
            }
            this.f = ah.a(AppCompatSpinner.this) ? i + (((width - paddingRight) - k()) - this.o) : i + paddingLeft + this.o;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public interface d {
        CharSequence a();

        void a(int i);

        void a(int i, int i2);

        void a(Drawable drawable);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        Drawable b();

        void b(int i);

        int c();

        void c(int i);

        void d();

        boolean e();

        int f();
    }

    public AppCompatSpinner(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatSpinner(Context context, int i) {
        this(context, null, a.C0018a.spinnerStyle, i);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00db, code lost:
        if (r12 == null) goto L_0x00e1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
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
            drawable.getPadding(this.f920c);
            i3 = i2 + this.f920c.left + this.f920c.right;
        }
        return i3;
    }

    final void a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f918a.a(getTextDirection(), getTextAlignment());
        } else {
            this.f918a.a(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        d dVar = this.f918a;
        if (dVar != null) {
            return dVar.f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        d dVar = this.f918a;
        if (dVar != null) {
            return dVar.c();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f918a != null) {
            return this.f919b;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        d dVar = this.f918a;
        if (dVar != null) {
            return dVar.b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        d dVar = this.f918a;
        return dVar != null ? dVar.a() : super.getPrompt();
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d dVar = this.f918a;
        if (dVar != null && dVar.e()) {
            this.f918a.d();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f918a != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.mShowDropdown && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    if (!AppCompatSpinner.this.f918a.e()) {
                        AppCompatSpinner.this.a();
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
        d dVar = this.f918a;
        savedState.mShowDropdown = dVar != null && dVar.e();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        r rVar = this.g;
        if (rVar == null || !rVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        d dVar = this.f918a;
        if (dVar == null) {
            return super.performClick();
        }
        if (dVar.e()) {
            return true;
        }
        a();
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.i) {
            this.h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f918a != null) {
            Context context = this.f;
            Context context2 = context;
            if (context == null) {
                context2 = getContext();
            }
            this.f918a.a(new b(spinnerAdapter, context2.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        d dVar = this.f918a;
        if (dVar != null) {
            dVar.c(i);
            this.f918a.b(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        d dVar = this.f918a;
        if (dVar != null) {
            dVar.a(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f918a != null) {
            this.f919b = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        d dVar = this.f918a;
        if (dVar != null) {
            dVar.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(androidx.appcompat.a.a.a.b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        d dVar = this.f918a;
        if (dVar != null) {
            dVar.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.e;
        if (dVar != null) {
            dVar.a(mode);
        }
    }
}
