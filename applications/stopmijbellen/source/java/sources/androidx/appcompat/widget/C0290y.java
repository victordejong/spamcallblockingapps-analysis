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
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.DialogC0122b;
import java.util.Objects;
import java.util.WeakHashMap;
import p097g.C2788a;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public class C0290y extends Spinner {

    /* renamed from: i */
    public static final int[] f1135i = {16843505};

    /* renamed from: b */
    public final Context f1137b;

    /* renamed from: c */
    public AbstractView$OnTouchListenerC0246k0 f1138c;

    /* renamed from: d */
    public SpinnerAdapter f1139d;

    /* renamed from: e */
    public final boolean f1140e;

    /* renamed from: f */
    public AbstractC0300f f1141f;

    /* renamed from: g */
    public int f1142g;

    /* renamed from: h */
    public final Rect f1143h = new Rect();

    /* renamed from: a */
    public final C0221e f1136a = new C0221e(this);

    /* renamed from: androidx.appcompat.widget.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0291a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0291a() {
            C0290y.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!C0290y.this.getInternalPopup().mo8414b()) {
                C0290y.this.m8416b();
            }
            ViewTreeObserver viewTreeObserver = C0290y.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.y$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$b.class */
    public class DialogInterface$OnClickListenerC0292b implements AbstractC0300f, DialogInterface.OnClickListener {

        /* renamed from: a */
        public DialogC0122b f1145a;

        /* renamed from: b */
        public ListAdapter f1146b;

        /* renamed from: c */
        public CharSequence f1147c;

        public DialogInterface$OnClickListenerC0292b() {
            C0290y.this = r4;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: b */
        public boolean mo8414b() {
            DialogC0122b dialogC0122b = this.f1145a;
            return dialogC0122b != null ? dialogC0122b.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: c */
        public int mo8413c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        public void dismiss() {
            DialogC0122b dialogC0122b = this.f1145a;
            if (dialogC0122b != null) {
                dialogC0122b.dismiss();
                this.f1145a = null;
            }
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: e */
        public Drawable mo8412e() {
            return null;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: g */
        public void mo8411g(CharSequence charSequence) {
            this.f1147c = charSequence;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: h */
        public void mo8410h(Drawable drawable) {
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: i */
        public void mo8409i(int i) {
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: j */
        public void mo8408j(int i) {
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: k */
        public void mo8407k(int i) {
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: l */
        public void mo8406l(int i, int i2) {
            if (this.f1146b == null) {
                return;
            }
            DialogC0122b.C0123a c0123a = new DialogC0122b.C0123a(C0290y.this.getPopupContext());
            CharSequence charSequence = this.f1147c;
            if (charSequence != null) {
                c0123a.f334a.f320d = charSequence;
            }
            ListAdapter listAdapter = this.f1146b;
            int selectedItemPosition = C0290y.this.getSelectedItemPosition();
            AlertController.C0118b c0118b = c0123a.f334a;
            c0118b.f325i = listAdapter;
            c0118b.f326j = this;
            c0118b.f329m = selectedItemPosition;
            c0118b.f328l = true;
            DialogC0122b m8726a = c0123a.m8726a();
            this.f1145a = m8726a;
            ListView listView = m8726a.f333c.f294g;
            listView.setTextDirection(i);
            listView.setTextAlignment(i2);
            this.f1145a.show();
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: m */
        public int mo8405m() {
            return 0;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: n */
        public CharSequence mo8404n() {
            return this.f1147c;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: o */
        public void mo8403o(ListAdapter listAdapter) {
            this.f1146b = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C0290y.this.setSelection(i);
            if (C0290y.this.getOnItemClickListener() != null) {
                C0290y.this.performItemClick(null, i, this.f1146b.getItemId(i));
            }
            DialogC0122b dialogC0122b = this.f1145a;
            if (dialogC0122b != null) {
                dialogC0122b.dismiss();
                this.f1145a = null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.y$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$c.class */
    public static class C0293c implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        public SpinnerAdapter f1149a;

        /* renamed from: b */
        public ListAdapter f1150b;

        public C0293c(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1149a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1150b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                        return;
                    }
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                } else if (!(spinnerAdapter instanceof AbstractC0285v0)) {
                } else {
                    AbstractC0285v0 abstractC0285v0 = (AbstractC0285v0) spinnerAdapter;
                    if (abstractC0285v0.getDropDownViewTheme() != null) {
                        return;
                    }
                    abstractC0285v0.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1150b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            return spinnerAdapter == null ? (char) 65535 : spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1150b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1149a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.y$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$d.class */
    public class C0294d extends C0252m0 implements AbstractC0300f {

        /* renamed from: C */
        public CharSequence f1151C;

        /* renamed from: D */
        public ListAdapter f1152D;

        /* renamed from: E */
        public final Rect f1153E = new Rect();

        /* renamed from: F */
        public int f1154F;

        /* renamed from: androidx.appcompat.widget.y$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$d$a.class */
        public class C0295a implements AdapterView.OnItemClickListener {
            public C0295a(C0290y c0290y) {
                C0294d.this = r4;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0290y.this.setSelection(i);
                if (C0290y.this.getOnItemClickListener() != null) {
                    C0294d c0294d = C0294d.this;
                    C0290y.this.performItemClick(view, i, c0294d.f1152D.getItemId(i));
                }
                C0294d.this.dismiss();
            }
        }

        /* renamed from: androidx.appcompat.widget.y$d$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$d$b.class */
        public class ViewTreeObserver$OnGlobalLayoutListenerC0296b implements ViewTreeObserver.OnGlobalLayoutListener {
            public ViewTreeObserver$OnGlobalLayoutListenerC0296b() {
                C0294d.this = r4;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C0294d c0294d = C0294d.this;
                C0290y c0290y = C0290y.this;
                Objects.requireNonNull(c0294d);
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                if (!(C3589v.C3596g.m2059b(c0290y) && c0290y.getGlobalVisibleRect(c0294d.f1153E))) {
                    C0294d.this.dismiss();
                    return;
                }
                C0294d.this.m8415s();
                C0294d.this.show();
            }
        }

        /* renamed from: androidx.appcompat.widget.y$d$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$d$c.class */
        public class C0297c implements PopupWindow.OnDismissListener {

            /* renamed from: a */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1158a;

            public C0297c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                C0294d.this = r4;
                this.f1158a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = C0290y.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1158a);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0294d(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i, 0);
            C0290y.this = r7;
            this.f1033o = r7;
            m8458r(true);
            this.f1034p = new C0295a(r7);
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: g */
        public void mo8411g(CharSequence charSequence) {
            this.f1151C = charSequence;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: j */
        public void mo8408j(int i) {
            this.f1154F = i;
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: l */
        public void mo8406l(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean mo2305b = mo2305b();
            m8415s();
            this.f1043y.setInputMethodMode(2);
            show();
            C0238i0 c0238i0 = this.f1021c;
            c0238i0.setChoiceMode(1);
            c0238i0.setTextDirection(i);
            c0238i0.setTextAlignment(i2);
            int selectedItemPosition = C0290y.this.getSelectedItemPosition();
            C0238i0 c0238i02 = this.f1021c;
            if (mo2305b() && c0238i02 != null) {
                c0238i02.setListSelectionHidden(false);
                c0238i02.setSelection(selectedItemPosition);
                if (c0238i02.getChoiceMode() != 0) {
                    c0238i02.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!mo2305b && (viewTreeObserver = C0290y.this.getViewTreeObserver()) != null) {
                ViewTreeObserver$OnGlobalLayoutListenerC0296b viewTreeObserver$OnGlobalLayoutListenerC0296b = new ViewTreeObserver$OnGlobalLayoutListenerC0296b();
                viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC0296b);
                this.f1043y.setOnDismissListener(new C0297c(viewTreeObserver$OnGlobalLayoutListenerC0296b));
            }
        }

        @Override // androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: n */
        public CharSequence mo8404n() {
            return this.f1151C;
        }

        @Override // androidx.appcompat.widget.C0252m0, androidx.appcompat.widget.C0290y.AbstractC0300f
        /* renamed from: o */
        public void mo8403o(ListAdapter listAdapter) {
            super.mo8403o(listAdapter);
            this.f1152D = listAdapter;
        }

        /* renamed from: s */
        public void m8415s() {
            Drawable m8464e = m8464e();
            int i = 0;
            if (m8464e != null) {
                m8464e.getPadding(C0290y.this.f1143h);
                i = C0236h1.m8493a(C0290y.this) ? C0290y.this.f1143h.right : -C0290y.this.f1143h.left;
            } else {
                Rect rect = C0290y.this.f1143h;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = C0290y.this.getPaddingLeft();
            int paddingRight = C0290y.this.getPaddingRight();
            int width = C0290y.this.getWidth();
            C0290y c0290y = C0290y.this;
            int i2 = c0290y.f1142g;
            if (i2 == -2) {
                int m8417a = c0290y.m8417a((SpinnerAdapter) this.f1152D, m8464e());
                int i3 = C0290y.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = C0290y.this.f1143h;
                int i4 = (i3 - rect2.left) - rect2.right;
                int i5 = m8417a;
                if (m8417a > i4) {
                    i5 = i4;
                }
                m8459q(Math.max(i5, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                m8459q((width - paddingLeft) - paddingRight);
            } else {
                m8459q(i2);
            }
            this.f1024f = C0236h1.m8493a(C0290y.this) ? (((width - paddingRight) - this.f1023e) - this.f1154F) + i : paddingLeft + this.f1154F + i;
        }
    }

    /* renamed from: androidx.appcompat.widget.y$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$e.class */
    public static class C0298e extends View.BaseSavedState {
        public static final Parcelable.Creator<C0298e> CREATOR = new C0299a();

        /* renamed from: a */
        public boolean f1160a;

        /* renamed from: androidx.appcompat.widget.y$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$e$a.class */
        public class C0299a implements Parcelable.Creator<C0298e> {
            @Override // android.os.Parcelable.Creator
            public C0298e createFromParcel(Parcel parcel) {
                return new C0298e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public C0298e[] newArray(int i) {
                return new C0298e[i];
            }
        }

        public C0298e(Parcel parcel) {
            super(parcel);
            this.f1160a = parcel.readByte() != 0;
        }

        public C0298e(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f1160a ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.y$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$f.class */
    public interface AbstractC0300f {
        /* renamed from: b */
        boolean mo8414b();

        /* renamed from: c */
        int mo8413c();

        void dismiss();

        /* renamed from: e */
        Drawable mo8412e();

        /* renamed from: g */
        void mo8411g(CharSequence charSequence);

        /* renamed from: h */
        void mo8410h(Drawable drawable);

        /* renamed from: i */
        void mo8409i(int i);

        /* renamed from: j */
        void mo8408j(int i);

        /* renamed from: k */
        void mo8407k(int i);

        /* renamed from: l */
        void mo8406l(int i, int i2);

        /* renamed from: m */
        int mo8405m();

        /* renamed from: n */
        CharSequence mo8404n();

        /* renamed from: o */
        void mo8403o(ListAdapter listAdapter);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0290y(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0290y.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    public int m8417a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
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
            drawable.getPadding(this.f1143h);
            Rect rect = this.f1143h;
            i4 = i2 + rect.left + rect.right;
        }
        return i4;
    }

    /* renamed from: b */
    public void m8416b() {
        this.f1141f.mo8406l(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f1136a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0300f abstractC0300f = this.f1141f;
        return abstractC0300f != null ? abstractC0300f.mo8413c() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0300f abstractC0300f = this.f1141f;
        return abstractC0300f != null ? abstractC0300f.mo8405m() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f1141f != null ? this.f1142g : super.getDropDownWidth();
    }

    public final AbstractC0300f getInternalPopup() {
        return this.f1141f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0300f abstractC0300f = this.f1141f;
        return abstractC0300f != null ? abstractC0300f.mo8412e() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1137b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0300f abstractC0300f = this.f1141f;
        return abstractC0300f != null ? abstractC0300f.mo8404n() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f1136a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f1136a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0300f abstractC0300f = this.f1141f;
        if (abstractC0300f == null || !abstractC0300f.mo8414b()) {
            return;
        }
        this.f1141f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1141f == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m8417a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C0298e c0298e = (C0298e) parcelable;
        super.onRestoreInstanceState(c0298e.getSuperState());
        if (!c0298e.f1160a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0291a());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        C0298e c0298e = new C0298e(super.onSaveInstanceState());
        AbstractC0300f abstractC0300f = this.f1141f;
        c0298e.f1160a = abstractC0300f != null && abstractC0300f.mo8414b();
        return c0298e;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC0246k0 abstractView$OnTouchListenerC0246k0 = this.f1138c;
        if (abstractView$OnTouchListenerC0246k0 == null || !abstractView$OnTouchListenerC0246k0.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0300f abstractC0300f = this.f1141f;
        if (abstractC0300f != null) {
            if (abstractC0300f.mo8414b()) {
                return true;
            }
            m8416b();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1140e) {
            this.f1139d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1141f == null) {
            return;
        }
        Context context = this.f1137b;
        Context context2 = context;
        if (context == null) {
            context2 = getContext();
        }
        this.f1141f.mo8403o(new C0293c(spinnerAdapter, context2.getTheme()));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f1136a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f1136a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0300f abstractC0300f = this.f1141f;
        if (abstractC0300f == null) {
            super.setDropDownHorizontalOffset(i);
            return;
        }
        abstractC0300f.mo8408j(i);
        this.f1141f.mo8407k(i);
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0300f abstractC0300f = this.f1141f;
        if (abstractC0300f != null) {
            abstractC0300f.mo8409i(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f1141f != null) {
            this.f1142g = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0300f abstractC0300f = this.f1141f;
        if (abstractC0300f != null) {
            abstractC0300f.mo8410h(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C2788a.m3015b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0300f abstractC0300f = this.f1141f;
        if (abstractC0300f != null) {
            abstractC0300f.mo8411g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f1136a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f1136a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }
}
