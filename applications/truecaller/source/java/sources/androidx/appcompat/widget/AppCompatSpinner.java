package androidx.appcompat.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.C0032R;
import androidx.appcompat.app.AlertController;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.AbstractC25531n0;
import p1727n3.p1734b.p1743f.AbstractView$OnTouchListenerC25561z;
import p1727n3.p1734b.p1743f.C25499c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner.class */
public class AppCompatSpinner extends Spinner {

    /* renamed from: i */
    public static final int[] f271i = {16843505};

    /* renamed from: a */
    public final C25499c f272a;

    /* renamed from: b */
    public final Context f273b;

    /* renamed from: c */
    public AbstractView$OnTouchListenerC25561z f274c;

    /* renamed from: d */
    public SpinnerAdapter f275d;

    /* renamed from: e */
    public final boolean f276e;

    /* renamed from: f */
    public AbstractC0055e f277f;

    /* renamed from: g */
    public int f278g;

    /* renamed from: h */
    public final Rect f279h;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0051a();

        /* renamed from: a */
        public boolean f280a;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$SavedState$a.class */
        public class C0051a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f280a = parcel.readByte() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f280a ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0052a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC0052a() {
            AppCompatSpinner.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().isShowing()) {
                AppCompatSpinner.this.m43147b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$b.class */
    public class DialogInterface$OnClickListenerC0053b implements AbstractC0055e, DialogInterface.OnClickListener {

        /* renamed from: a */
        public g f282a;

        /* renamed from: b */
        public ListAdapter f283b;

        /* renamed from: c */
        public CharSequence f284c;

        public DialogInterface$OnClickListenerC0053b() {
            AppCompatSpinner.this = r4;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: b */
        public Drawable mo43146b() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: c */
        public void mo43145c(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: d */
        public void mo43144d(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        public void dismiss() {
            g gVar = this.f282a;
            if (gVar != null) {
                gVar.dismiss();
                this.f282a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: e */
        public void mo43143e(int i, int i2) {
            if (this.f283b == null) {
                return;
            }
            g$a g_a = new g$a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f284c;
            if (charSequence != null) {
                g_a.f70854a.f154d = charSequence;
            }
            ListAdapter listAdapter = this.f283b;
            int selectedItemPosition = AppCompatSpinner.this.getSelectedItemPosition();
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f168r = listAdapter;
            c0037b.f169s = this;
            c0037b.f175y = selectedItemPosition;
            c0037b.f174x = true;
            g m3668a = g_a.m3668a();
            this.f282a = m3668a;
            ListView listView = m3668a.c.f128g;
            listView.setTextDirection(i);
            listView.setTextAlignment(i2);
            this.f282a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: f */
        public int mo43142f() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: i */
        public int mo43141i() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        public boolean isShowing() {
            g gVar = this.f282a;
            return gVar != null ? gVar.isShowing() : false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: j */
        public void mo43140j(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: k */
        public CharSequence mo43139k() {
            return this.f284c;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: l */
        public void mo43138l(CharSequence charSequence) {
            this.f284c = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: m */
        public void mo43137m(ListAdapter listAdapter) {
            this.f283b = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.AbstractC0055e
        /* renamed from: n */
        public void mo43136n(Drawable drawable) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.f283b.getItemId(i));
            }
            g gVar = this.f282a;
            if (gVar != null) {
                gVar.dismiss();
                this.f282a = null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$c.class */
    public static class C0054c implements ListAdapter, SpinnerAdapter {

        /* renamed from: a */
        public SpinnerAdapter f286a;

        /* renamed from: b */
        public ListAdapter f287b;

        public C0054c(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f286a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f287b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == theme) {
                        return;
                    }
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                } else if (!(spinnerAdapter instanceof AbstractC25531n0)) {
                } else {
                    AbstractC25531n0 abstractC25531n0 = (AbstractC25531n0) spinnerAdapter;
                    if (abstractC25531n0.getDropDownViewTheme() != null) {
                        return;
                    }
                    abstractC25531n0.setDropDownViewTheme(theme);
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f287b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f286a;
            return spinnerAdapter == null ? 0 : spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f286a;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f286a;
            return spinnerAdapter == null ? null : spinnerAdapter.getItem(i);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f286a;
            return spinnerAdapter == null ? (char) 65535 : spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f286a;
            return spinnerAdapter == null ? null : spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f286a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f287b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f286a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f286a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e.class */
    public interface AbstractC0055e {
        /* renamed from: b */
        Drawable mo43146b();

        /* renamed from: c */
        void mo43145c(int i);

        /* renamed from: d */
        void mo43144d(int i);

        void dismiss();

        /* renamed from: e */
        void mo43143e(int i, int i2);

        /* renamed from: f */
        int mo43142f();

        /* renamed from: i */
        int mo43141i();

        boolean isShowing();

        /* renamed from: j */
        void mo43140j(int i);

        /* renamed from: k */
        CharSequence mo43139k();

        /* renamed from: l */
        void mo43138l(CharSequence charSequence);

        /* renamed from: m */
        void mo43137m(ListAdapter listAdapter);

        /* renamed from: n */
        void mo43136n(Drawable drawable);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.spinnerStyle);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    public int m43148a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
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
            drawable.getPadding(this.f279h);
            Rect rect = this.f279h;
            i4 = i2 + rect.left + rect.right;
        }
        return i4;
    }

    /* renamed from: b */
    public void m43147b() {
        this.f277f.mo43143e(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f272a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        AbstractC0055e abstractC0055e = this.f277f;
        return abstractC0055e != null ? abstractC0055e.mo43141i() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        AbstractC0055e abstractC0055e = this.f277f;
        return abstractC0055e != null ? abstractC0055e.mo43142f() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f277f != null ? this.f278g : super.getDropDownWidth();
    }

    public final AbstractC0055e getInternalPopup() {
        return this.f277f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        AbstractC0055e abstractC0055e = this.f277f;
        return abstractC0055e != null ? abstractC0055e.mo43146b() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f273b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        AbstractC0055e abstractC0055e = this.f277f;
        return abstractC0055e != null ? abstractC0055e.mo43139k() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f272a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f272a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0055e abstractC0055e = this.f277f;
        if (abstractC0055e == null || !abstractC0055e.isShowing()) {
            return;
        }
        this.f277f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f277f == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m43148a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f280a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0052a());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        AbstractC0055e abstractC0055e = this.f277f;
        savedState.f280a = abstractC0055e != null && abstractC0055e.isShowing();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC25561z abstractView$OnTouchListenerC25561z = this.f274c;
        if (abstractView$OnTouchListenerC25561z == null || !abstractView$OnTouchListenerC25561z.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        AbstractC0055e abstractC0055e = this.f277f;
        if (abstractC0055e != null) {
            if (abstractC0055e.isShowing()) {
                return true;
            }
            m43147b();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f276e) {
            this.f275d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f277f == null) {
            return;
        }
        Context context = this.f273b;
        Context context2 = context;
        if (context == null) {
            context2 = getContext();
        }
        this.f277f.mo43137m(new C0054c(spinnerAdapter, context2.getTheme()));
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f272a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f272a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        AbstractC0055e abstractC0055e = this.f277f;
        if (abstractC0055e == null) {
            super.setDropDownHorizontalOffset(i);
            return;
        }
        abstractC0055e.mo43144d(i);
        this.f277f.mo43140j(i);
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        AbstractC0055e abstractC0055e = this.f277f;
        if (abstractC0055e != null) {
            abstractC0055e.mo43145c(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f277f != null) {
            this.f278g = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        AbstractC0055e abstractC0055e = this.f277f;
        if (abstractC0055e != null) {
            abstractC0055e.mo43136n(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C25440a.m3540a(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        AbstractC0055e abstractC0055e = this.f277f;
        if (abstractC0055e != null) {
            abstractC0055e.mo43138l(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f272a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f272a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }
}
