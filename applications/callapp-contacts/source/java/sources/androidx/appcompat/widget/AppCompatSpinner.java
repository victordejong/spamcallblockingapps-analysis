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
import androidx.appcompat.C0142a;
import androidx.appcompat.app.DialogInterfaceC0196c;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.AbstractC0925u;
import androidx.core.view.C0926v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements AbstractC0925u {

    /* renamed from: d */
    private static final int[] f1160d = {16843505};

    /* renamed from: a */
    AbstractC0327d f1161a;

    /* renamed from: b */
    int f1162b;

    /* renamed from: c */
    final Rect f1163c;

    /* renamed from: e */
    private final C0390d f1164e;

    /* renamed from: f */
    private final Context f1165f;

    /* renamed from: g */
    private AbstractView$OnAttachStateChangeListenerC0410r f1166g;

    /* renamed from: h */
    private SpinnerAdapter f1167h;

    /* renamed from: i */
    private final boolean f1168i;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    public final class DialogInterface$OnClickListenerC0321a implements DialogInterface.OnClickListener, AbstractC0327d {

        /* renamed from: a */
        DialogInterfaceC0196c f1172a;

        /* renamed from: c */
        private ListAdapter f1174c;

        /* renamed from: d */
        private CharSequence f1175d;

        DialogInterface$OnClickListenerC0321a() {
            AppCompatSpinner.this = r4;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final CharSequence mo45974a() {
            return this.f1175d;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45973a(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45972a(int i, int i2) {
            if (this.f1174c == null) {
                return;
            }
            DialogInterfaceC0196c.C0197a c0197a = new DialogInterfaceC0196c.C0197a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f1175d;
            if (charSequence != null) {
                c0197a.setTitle(charSequence);
            }
            ListAdapter listAdapter = this.f1174c;
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            c0197a.f515a.f380w = listAdapter;
            c0197a.f515a.f381x = this;
            c0197a.f515a.f351I = selectedItemPosition;
            c0197a.f515a.f350H = true;
            DialogInterfaceC0196c create = c0197a.create();
            this.f1172a = create;
            ListView listView = create.f514a.f308g;
            if (Build.VERSION.SDK_INT >= 17) {
                listView.setTextDirection(i);
                listView.setTextAlignment(i2);
            }
            this.f1172a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45971a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45930a(ListAdapter listAdapter) {
            this.f1174c = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45970a(CharSequence charSequence) {
            this.f1175d = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: b */
        public final Drawable mo45969b() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: b */
        public final void mo45968b(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: c */
        public final int mo45967c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: c */
        public final void mo45966c(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: d */
        public final void mo45965d() {
            DialogInterfaceC0196c dialogInterfaceC0196c = this.f1172a;
            if (dialogInterfaceC0196c != null) {
                dialogInterfaceC0196c.dismiss();
                this.f1172a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: e */
        public final boolean mo45964e() {
            DialogInterfaceC0196c dialogInterfaceC0196c = this.f1172a;
            if (dialogInterfaceC0196c != null) {
                return dialogInterfaceC0196c.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: f */
        public final int mo45963f() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f1174c.getItemId(i));
            }
            mo45965d();
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public static final class C0322b implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        private SpinnerAdapter f1176a;

        /* renamed from: b */
        private ListAdapter f1177b;

        public C0322b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1176a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1177b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null || Build.VERSION.SDK_INT < 23 || !(spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                return;
            }
            ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
            if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1177b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1176a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1176a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f1176a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f1176a;
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
            SpinnerAdapter spinnerAdapter = this.f1176a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1177b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1176a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1176a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    public final class C0323c extends ListPopupWindow implements AbstractC0327d {

        /* renamed from: a */
        CharSequence f1178a;

        /* renamed from: b */
        ListAdapter f1179b;

        /* renamed from: c */
        final Rect f1180c = new Rect();

        /* renamed from: o */
        private int f1182o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0323c(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            AppCompatSpinner.this = r7;
            this.f1256i = r7;
            m45918j();
            m45919i();
            this.f1257j = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, C0323c.this.f1179b.getItemId(i2));
                    }
                    C0323c.this.mo45925d();
                }
            };
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final CharSequence mo45974a() {
            return this.f1178a;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45972a(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean e = mo45923e();
            m45975h();
            m45916l();
            super.mo45922e_();
            DropDownListView dropDownListView = this.f1252e;
            dropDownListView.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                dropDownListView.setTextDirection(i);
                dropDownListView.setTextAlignment(i2);
            }
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            DropDownListView dropDownListView2 = this.f1252e;
            if (mo45923e() && dropDownListView2 != null) {
                dropDownListView2.f1204a = false;
                dropDownListView2.setSelection(selectedItemPosition);
                if (dropDownListView2.getChoiceMode() != 0) {
                    dropDownListView2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!e && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        C0323c c0323c = C0323c.this;
                        AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
                        if (!(C0926v.m44154E(appCompatSpinner) && appCompatSpinner.getGlobalVisibleRect(c0323c.f1180c))) {
                            C0323c.this.mo45925d();
                            return;
                        }
                        C0323c.this.m45975h();
                        C0323c.super.mo45922e_();
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                m45929a(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.c.3
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

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45930a(ListAdapter listAdapter) {
            super.mo45930a(listAdapter);
            this.f1179b = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: a */
        public final void mo45970a(CharSequence charSequence) {
            this.f1178a = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0327d
        /* renamed from: c */
        public final void mo45966c(int i) {
            this.f1182o = i;
        }

        /* renamed from: h */
        final void m45975h() {
            Drawable background = this.f1261n.getBackground();
            int i = 0;
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.f1163c);
                i = C0380ah.m45770a(AppCompatSpinner.this) ? AppCompatSpinner.this.f1163c.right : -AppCompatSpinner.this.f1163c.left;
            } else {
                Rect rect = AppCompatSpinner.this.f1163c;
                AppCompatSpinner.this.f1163c.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.f1162b == -2) {
                int m45977a = AppCompatSpinner.this.m45977a((SpinnerAdapter) this.f1179b, this.f1261n.getBackground());
                int i2 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.f1163c.left) - AppCompatSpinner.this.f1163c.right;
                int i3 = m45977a;
                if (m45977a > i2) {
                    i3 = i2;
                }
                m45924d(Math.max(i3, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.f1162b == -1) {
                m45924d((width - paddingLeft) - paddingRight);
            } else {
                m45924d(AppCompatSpinner.this.f1162b);
            }
            this.f1253f = C0380ah.m45770a(AppCompatSpinner.this) ? i + (((width - paddingRight) - m45917k()) - this.f1182o) : i + paddingLeft + this.f1182o;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public interface AbstractC0327d {
        /* renamed from: a */
        CharSequence mo45974a();

        /* renamed from: a */
        void mo45973a(int i);

        /* renamed from: a */
        void mo45972a(int i, int i2);

        /* renamed from: a */
        void mo45971a(Drawable drawable);

        /* renamed from: a */
        void mo45930a(ListAdapter listAdapter);

        /* renamed from: a */
        void mo45970a(CharSequence charSequence);

        /* renamed from: b */
        Drawable mo45969b();

        /* renamed from: b */
        void mo45968b(int i);

        /* renamed from: c */
        int mo45967c();

        /* renamed from: c */
        void mo45966c(int i);

        /* renamed from: d */
        void mo45965d();

        /* renamed from: e */
        boolean mo45964e();

        /* renamed from: f */
        int mo45963f();
    }

    public AppCompatSpinner(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatSpinner(Context context, int i) {
        this(context, null, C0142a.C0143a.spinnerStyle, i);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00db, code lost:
        if (r12 == null) goto L35;
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

    /* renamed from: a */
    final int m45977a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        View view = null;
        int i2 = 0;
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
            drawable.getPadding(this.f1163c);
            i4 = i2 + this.f1163c.left + this.f1163c.right;
        }
        return i4;
    }

    /* renamed from: a */
    final void m45978a() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1161a.mo45972a(getTextDirection(), getTextAlignment());
        } else {
            this.f1161a.mo45972a(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            c0390d.m45740d();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            return abstractC0327d.mo45963f();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            return abstractC0327d.mo45967c();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1161a != null) {
            return this.f1162b;
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            return abstractC0327d.mo45969b();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        return super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1165f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0327d abstractC0327d = this.f1161a;
        return abstractC0327d != null ? abstractC0327d.mo45974a() : super.getPrompt();
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d == null || !abstractC0327d.mo45964e()) {
            return;
        }
        this.f1161a.mo45965d();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1161a == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m45977a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.mShowDropdown || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                if (!AppCompatSpinner.this.f1161a.mo45964e()) {
                    AppCompatSpinner.this.m45978a();
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
        AbstractC0327d abstractC0327d = this.f1161a;
        savedState.mShowDropdown = abstractC0327d != null && abstractC0327d.mo45964e();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnAttachStateChangeListenerC0410r abstractView$OnAttachStateChangeListenerC0410r = this.f1166g;
        if (abstractView$OnAttachStateChangeListenerC0410r == null || !abstractView$OnAttachStateChangeListenerC0410r.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            if (abstractC0327d.mo45964e()) {
                return true;
            }
            m45978a();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1168i) {
            this.f1167h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1161a == null) {
            return;
        }
        Context context = this.f1165f;
        Context context2 = context;
        if (context == null) {
            context2 = getContext();
        }
        this.f1161a.mo45930a(new C0322b(spinnerAdapter, context2.getTheme()));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            abstractC0327d.mo45966c(i);
            this.f1161a.mo45968b(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            abstractC0327d.mo45973a(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f1161a != null) {
            this.f1162b = i;
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            abstractC0327d.mo45971a(drawable);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0153a.m46374b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0327d abstractC0327d = this.f1161a;
        if (abstractC0327d != null) {
            abstractC0327d.mo45970a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1164e;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }
}
