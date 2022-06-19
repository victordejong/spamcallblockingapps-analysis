package androidx.appcompat.widget;

import android.annotation.SuppressLint;
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
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.appcompat.view.menu.AbstractC0198p;
import p020b.p021a.C1423a;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.AbstractC1678v;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner implements AbstractC1678v {

    /* renamed from: d */
    private static final int[] f911d = {16843505};

    /* renamed from: e */
    private final C0283d f912e;

    /* renamed from: f */
    private final Context f913f;

    /* renamed from: g */
    private AbstractView$OnTouchListenerC0323t f914g;

    /* renamed from: h */
    private SpinnerAdapter f915h;

    /* renamed from: i */
    private final boolean f916i;

    /* renamed from: j */
    private AbstractC0237f f917j;

    /* renamed from: k */
    int f918k;

    /* renamed from: l */
    final Rect f919l;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0228a();

        /* renamed from: d */
        boolean f920d;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState$a.class */
        class C0228a implements Parcelable.Creator<SavedState> {
            C0228a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f920d = parcel.readByte() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f920d ? (byte) 1 : (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    public class C0229a extends AbstractView$OnTouchListenerC0323t {

        /* renamed from: m */
        final /* synthetic */ C0233e f921m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0229a(View view, C0233e c0233e) {
            super(view);
            AppCompatSpinner.this = r4;
            this.f921m = c0233e;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        /* renamed from: b */
        public AbstractC0198p mo34756b() {
            return this.f921m;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: c */
        public boolean mo34755c() {
            if (!AppCompatSpinner.this.getInternalPopup().mo35192a()) {
                AppCompatSpinner.this.m35199b();
                return true;
            }
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    class ViewTreeObserver$OnGlobalLayoutListenerC0230b implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0230b() {
            AppCompatSpinner.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().mo35192a()) {
                AppCompatSpinner.this.m35199b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    public class DialogInterface$OnClickListenerC0231c implements AbstractC0237f, DialogInterface.OnClickListener {

        /* renamed from: d */
        DialogInterfaceC0146a f924d;

        /* renamed from: e */
        private ListAdapter f925e;

        /* renamed from: f */
        private CharSequence f926f;

        DialogInterface$OnClickListenerC0231c() {
            AppCompatSpinner.this = r4;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: a */
        public boolean mo35192a() {
            DialogInterfaceC0146a dialogInterfaceC0146a = this.f924d;
            return dialogInterfaceC0146a != null ? dialogInterfaceC0146a.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: b */
        public void mo35191b(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: c */
        public int mo35190c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        public void dismiss() {
            DialogInterfaceC0146a dialogInterfaceC0146a = this.f924d;
            if (dialogInterfaceC0146a != null) {
                dialogInterfaceC0146a.dismiss();
                this.f924d = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: e */
        public void mo35189e(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: f */
        public CharSequence mo35188f() {
            return this.f926f;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: i */
        public Drawable mo35187i() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: j */
        public void mo35186j(CharSequence charSequence) {
            this.f926f = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: l */
        public void mo35185l(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: m */
        public void mo35184m(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: n */
        public void mo35183n(int i, int i2) {
            if (this.f925e == null) {
                return;
            }
            DialogInterfaceC0146a.C0147a c0147a = new DialogInterfaceC0146a.C0147a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f926f;
            if (charSequence != null) {
                c0147a.m35558q(charSequence);
            }
            DialogInterfaceC0146a m35574a = c0147a.m35560o(this.f925e, AppCompatSpinner.this.getSelectedItemPosition(), this).m35574a();
            this.f924d = m35574a;
            ListView m35576h = m35574a.m35576h();
            if (Build.VERSION.SDK_INT >= 17) {
                m35576h.setTextDirection(i);
                m35576h.setTextAlignment(i2);
            }
            this.f924d.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: o */
        public int mo35182o() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f925e.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: p */
        public void mo35129p(ListAdapter listAdapter) {
            this.f925e = listAdapter;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d.class */
    public static class C0232d implements ListAdapter, SpinnerAdapter {

        /* renamed from: d */
        private SpinnerAdapter f928d;

        /* renamed from: e */
        private ListAdapter f929e;

        public C0232d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f928d = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f929e = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                        return;
                    }
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                } else if (!(spinnerAdapter instanceof AbstractC0278a0)) {
                } else {
                    AbstractC0278a0 abstractC0278a0 = (AbstractC0278a0) spinnerAdapter;
                    if (abstractC0278a0.getDropDownViewTheme() != null) {
                        return;
                    }
                    abstractC0278a0.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f929e;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f928d;
            return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f928d;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f928d;
            return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f928d;
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
            SpinnerAdapter spinnerAdapter = this.f928d;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f929e;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f928d;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f928d;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e.class */
    public class C0233e extends ListPopupWindow implements AbstractC0237f {

        /* renamed from: M */
        private CharSequence f930M;

        /* renamed from: N */
        ListAdapter f931N;

        /* renamed from: O */
        private final Rect f932O = new Rect();

        /* renamed from: P */
        private int f933P;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$a.class */
        public class C0234a implements AdapterView.OnItemClickListener {

            /* renamed from: d */
            final /* synthetic */ AppCompatSpinner f935d;

            C0234a(AppCompatSpinner appCompatSpinner) {
                C0233e.this = r4;
                this.f935d = appCompatSpinner;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    C0233e c0233e = C0233e.this;
                    AppCompatSpinner.this.performItemClick(view, i, c0233e.f931N.getItemId(i));
                }
                C0233e.this.dismiss();
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$b.class */
        class ViewTreeObserver$OnGlobalLayoutListenerC0235b implements ViewTreeObserver.OnGlobalLayoutListener {
            ViewTreeObserver$OnGlobalLayoutListenerC0235b() {
                C0233e.this = r4;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C0233e c0233e = C0233e.this;
                if (!c0233e.m35193U(AppCompatSpinner.this)) {
                    C0233e.this.dismiss();
                    return;
                }
                C0233e.this.m35195S();
                C0233e.super.mo35134h();
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$c.class */
        class C0236c implements PopupWindow.OnDismissListener {

            /* renamed from: d */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f938d;

            C0236c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                C0233e.this = r4;
                this.f938d = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f938d);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0233e(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            AppCompatSpinner.this = r7;
            m35152D(r7);
            m35146J(true);
            m35141O(0);
            m35144L(new C0234a(r7));
        }

        /* renamed from: S */
        void m35195S() {
            Drawable m35133i = m35133i();
            int i = 0;
            if (m35133i != null) {
                m35133i.getPadding(AppCompatSpinner.this.f919l);
                i = C0305k0.m34869b(AppCompatSpinner.this) ? AppCompatSpinner.this.f919l.right : -AppCompatSpinner.this.f919l.left;
            } else {
                Rect rect = AppCompatSpinner.this.f919l;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i2 = appCompatSpinner.f918k;
            if (i2 == -2) {
                int m35200a = appCompatSpinner.m35200a((SpinnerAdapter) this.f931N, m35133i());
                int i3 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f919l;
                int i4 = (i3 - rect2.left) - rect2.right;
                int i5 = m35200a;
                if (m35200a > i4) {
                    i5 = i4;
                }
                m35150F(Math.max(i5, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                m35150F((width - paddingLeft) - paddingRight);
            } else {
                m35150F(i2);
            }
            m35135e(C0305k0.m34869b(AppCompatSpinner.this) ? i + (((width - paddingRight) - m35120z()) - m35194T()) : i + paddingLeft + m35194T());
        }

        /* renamed from: T */
        public int m35194T() {
            return this.f933P;
        }

        /* renamed from: U */
        boolean m35193U(View view) {
            return C1679w.m29314U(view) && view.getGlobalVisibleRect(this.f932O);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: f */
        public CharSequence mo35188f() {
            return this.f930M;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: j */
        public void mo35186j(CharSequence charSequence) {
            this.f930M = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: m */
        public void mo35184m(int i) {
            this.f933P = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: n */
        public void mo35183n(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean mo35138a = mo35138a();
            m35195S();
            m35147I(2);
            super.mo35134h();
            ListView mo35132k = mo35132k();
            mo35132k.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                mo35132k.setTextDirection(i);
                mo35132k.setTextAlignment(i2);
            }
            m35140P(AppCompatSpinner.this.getSelectedItemPosition());
            if (!mo35138a && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                ViewTreeObserver$OnGlobalLayoutListenerC0235b viewTreeObserver$OnGlobalLayoutListenerC0235b = new ViewTreeObserver$OnGlobalLayoutListenerC0235b();
                viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC0235b);
                m35145K(new C0236c(viewTreeObserver$OnGlobalLayoutListenerC0235b));
            }
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.AbstractC0237f
        /* renamed from: p */
        public void mo35129p(ListAdapter listAdapter) {
            super.mo35129p(listAdapter);
            this.f931N = listAdapter;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$f.class */
    public interface AbstractC0237f {
        /* renamed from: a */
        boolean mo35192a();

        /* renamed from: b */
        void mo35191b(Drawable drawable);

        /* renamed from: c */
        int mo35190c();

        void dismiss();

        /* renamed from: e */
        void mo35189e(int i);

        /* renamed from: f */
        CharSequence mo35188f();

        /* renamed from: i */
        Drawable mo35187i();

        /* renamed from: j */
        void mo35186j(CharSequence charSequence);

        /* renamed from: l */
        void mo35185l(int i);

        /* renamed from: m */
        void mo35184m(int i);

        /* renamed from: n */
        void mo35183n(int i, int i2);

        /* renamed from: o */
        int mo35182o();

        /* renamed from: p */
        void mo35129p(ListAdapter listAdapter);
    }

    public AppCompatSpinner(Context context) {
        this(context, null);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    /* renamed from: a */
    int m35200a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
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
            drawable.getPadding(this.f919l);
            Rect rect = this.f919l;
            i4 = i2 + rect.left + rect.right;
        }
        return i4;
    }

    /* renamed from: b */
    void m35199b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f917j.mo35183n(getTextDirection(), getTextAlignment());
        } else {
            this.f917j.mo35183n(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f912e;
        if (c0283d != null) {
            c0283d.m34985b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            return abstractC0237f.mo35190c();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            return abstractC0237f.mo35182o();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f917j != null) {
            return this.f918k;
        }
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        return super.getDropDownWidth();
    }

    final AbstractC0237f getInternalPopup() {
        return this.f917j;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            return abstractC0237f.mo35187i();
        }
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        return super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f913f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0237f abstractC0237f = this.f917j;
        return abstractC0237f != null ? abstractC0237f.mo35188f() : super.getPrompt();
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f912e;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f912e;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f == null || !abstractC0237f.mo35192a()) {
            return;
        }
        this.f917j.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f917j == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m35200a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f920d || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0230b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        AbstractC0237f abstractC0237f = this.f917j;
        savedState.f920d = abstractC0237f != null && abstractC0237f.mo35192a();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC0323t abstractView$OnTouchListenerC0323t = this.f914g;
        if (abstractView$OnTouchListenerC0323t == null || !abstractView$OnTouchListenerC0323t.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            if (abstractC0237f.mo35192a()) {
                return true;
            }
            m35199b();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f916i) {
            this.f915h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f917j == null) {
            return;
        }
        Context context = this.f913f;
        Context context2 = context;
        if (context == null) {
            context2 = getContext();
        }
        this.f917j.mo35129p(new C0232d(spinnerAdapter, context2.getTheme()));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f912e;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f912e;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            abstractC0237f.mo35184m(i);
            this.f917j.mo35189e(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            abstractC0237f.mo35185l(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f917j != null) {
            this.f918k = i;
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            abstractC0237f.mo35191b(drawable);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C1433a.m30126d(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0237f abstractC0237f = this.f917j;
        if (abstractC0237f != null) {
            abstractC0237f.mo35186j(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f912e;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f912e;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }
}
