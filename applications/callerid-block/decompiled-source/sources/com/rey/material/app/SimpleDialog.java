package com.rey.material.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import com.callerid.block.R$style;
import com.callerid.block.R$styleable;
import com.rey.material.app.Dialog;
import com.rey.material.widget.CheckBox;
import com.rey.material.widget.RadioButton;
import com.rey.material.widget.TextView;
import d.h.m.t;
import p092e.p107g.p108a.p109a.C3103a;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog.class */
public class SimpleDialog extends Dialog {

    /* renamed from: F */
    private TextView f11723F;

    /* renamed from: G */
    private C2822d f11724G;

    /* renamed from: H */
    private C2821c f11725H;

    /* renamed from: I */
    private C2820b f11726I;

    /* renamed from: J */
    private int f11727J;

    /* renamed from: K */
    private int f11728K;

    /* renamed from: L */
    private int f11729L;

    /* renamed from: M */
    private int f11730M;

    /* renamed from: N */
    private int f11731N;

    /* renamed from: O */
    private int f11732O;

    /* renamed from: P */
    private int f11733P;

    /* renamed from: Q */
    private AbstractC2823e f11734Q;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$Builder.class */
    public static class Builder extends Dialog.Builder implements AbstractC2823e {
        public static final Parcelable.Creator<Builder> CREATOR = new C2818a();

        /* renamed from: i */
        protected int f11735i;

        /* renamed from: j */
        protected CharSequence f11736j;

        /* renamed from: k */
        protected Typeface f11737k;

        /* renamed from: l */
        protected CharSequence[] f11738l;

        /* renamed from: m */
        protected int[] f11739m;

        /* renamed from: com.rey.material.app.SimpleDialog$Builder$a */
        /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$Builder$a.class */
        static final class C2818a implements Parcelable.Creator<Builder> {
            C2818a() {
            }

            /* renamed from: a */
            public Builder createFromParcel(Parcel parcel) {
                return new Builder(parcel);
            }

            /* renamed from: b */
            public Builder[] newArray(int i) {
                return new Builder[i];
            }
        }

        public Builder() {
            super((int) R$style.Material_App_Dialog_Simple_Light);
        }

        public Builder(int i) {
            super(i);
        }

        protected Builder(Parcel parcel) {
            super(parcel);
        }

        @Override // com.rey.material.app.SimpleDialog.AbstractC2823e
        /* renamed from: e */
        public void mo1470e(int i, boolean z) {
            int i2 = this.f11735i;
            if (i2 != 2) {
                if (i2 == 3) {
                    this.f11739m = ((SimpleDialog) this.f11708h).m1500G0();
                }
            } else if (z) {
                int[] iArr = this.f11739m;
                if (iArr == null) {
                    this.f11739m = new int[]{i};
                } else {
                    iArr[0] = i;
                }
            }
        }

        @Override // com.rey.material.app.Dialog.Builder
        /* renamed from: h */
        protected Dialog mo1480h(Context context, int i) {
            SimpleDialog simpleDialog = new SimpleDialog(context, i);
            int i2 = this.f11735i;
            if (i2 != 1) {
                if (i2 == 2) {
                    CharSequence[] charSequenceArr = this.f11738l;
                    int[] iArr = this.f11739m;
                    int i3 = 0;
                    if (iArr != null) {
                        i3 = iArr[0];
                    }
                    simpleDialog.m1494M0(charSequenceArr, i3);
                } else if (i2 == 3) {
                    simpleDialog.m1490Q0(this.f11738l, this.f11739m);
                }
                simpleDialog.m1489R0(this);
            } else {
                simpleDialog.m1493N0(this.f11736j, this.f11737k);
            }
            return simpleDialog;
        }

        @Override // com.rey.material.app.Dialog.Builder
        /* renamed from: l */
        protected void mo1479l(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f11735i = readInt;
            if (readInt != 1) {
                int i = 0;
                if (readInt == 2) {
                    Parcelable[] readParcelableArray = parcel.readParcelableArray(null);
                    if (readParcelableArray != null && readParcelableArray.length > 0) {
                        this.f11738l = new CharSequence[readParcelableArray.length];
                        int i2 = 0;
                        while (true) {
                            CharSequence[] charSequenceArr = this.f11738l;
                            if (i2 >= charSequenceArr.length) {
                                break;
                            }
                            charSequenceArr[i2] = (CharSequence) readParcelableArray[i2];
                            i2++;
                        }
                    } else {
                        this.f11738l = null;
                    }
                    this.f11739m = new int[]{parcel.readInt()};
                } else if (readInt == 3) {
                    Parcelable[] readParcelableArray2 = parcel.readParcelableArray(getClass().getClassLoader());
                    if (readParcelableArray2 != null && readParcelableArray2.length > 0) {
                        this.f11738l = new CharSequence[readParcelableArray2.length];
                        while (true) {
                            CharSequence[] charSequenceArr2 = this.f11738l;
                            if (i >= charSequenceArr2.length) {
                                break;
                            }
                            charSequenceArr2[i] = (CharSequence) readParcelableArray2[i];
                            i++;
                        }
                    } else {
                        this.f11738l = null;
                    }
                    int readInt2 = parcel.readInt();
                    if (readInt2 > 0) {
                        int[] iArr = new int[readInt2];
                        this.f11739m = iArr;
                        parcel.readIntArray(iArr);
                    }
                }
            } else {
                this.f11736j = (CharSequence) parcel.readParcelable(getClass().getClassLoader());
            }
        }

        @Override // com.rey.material.app.Dialog.Builder
        /* renamed from: m */
        protected void mo1478m(Parcel parcel, int i) {
            parcel.writeInt(this.f11735i);
            int i2 = this.f11735i;
            if (i2 != 1) {
                int i3 = 0;
                int i4 = 0;
                if (i2 == 2) {
                    parcel.writeArray(this.f11738l);
                    int[] iArr = this.f11739m;
                    if (iArr != null) {
                        i3 = iArr[0];
                    }
                    parcel.writeInt(i3);
                } else if (i2 == 3) {
                    parcel.writeArray(this.f11738l);
                    int[] iArr2 = this.f11739m;
                    if (iArr2 != null) {
                        i4 = iArr2.length;
                    }
                    parcel.writeInt(i4);
                    if (i4 > 0) {
                        parcel.writeIntArray(this.f11739m);
                    }
                }
            } else {
                parcel.writeValue(this.f11736j);
            }
        }

        /* renamed from: p */
        public Builder m1477p(CharSequence charSequence) {
            this.f11735i = 1;
            this.f11736j = charSequence;
            return this;
        }

        /* renamed from: q */
        public Builder m1476q(Typeface typeface) {
            this.f11737k = typeface;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.rey.material.app.SimpleDialog$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$b.class */
    public class C2820b extends BaseAdapter implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        private CharSequence[] f11740b;

        /* renamed from: c */
        private boolean[] f11741c;

        /* renamed from: d */
        private int f11742d;

        private C2820b() {
        }

        /* renamed from: a */
        public int[] m1473a() {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                boolean[] zArr = this.f11741c;
                if (i2 >= zArr.length) {
                    break;
                }
                i3 = i3;
                if (zArr[i2]) {
                    i3++;
                }
                i2++;
            }
            if (i3 == 0) {
                return null;
            }
            int[] iArr = new int[i3];
            int i4 = 0;
            while (true) {
                boolean[] zArr2 = this.f11741c;
                if (i >= zArr2.length) {
                    return iArr;
                }
                i4 = i4;
                if (zArr2[i]) {
                    iArr[i4] = i;
                    i4++;
                }
                i++;
            }
        }

        /* renamed from: b */
        public void m1472b(CharSequence[] charSequenceArr, int... iArr) {
            this.f11740b = charSequenceArr;
            boolean[] zArr = this.f11741c;
            if (zArr == null || zArr.length != charSequenceArr.length) {
                this.f11741c = new boolean[charSequenceArr.length];
            }
            int i = 0;
            while (true) {
                boolean[] zArr2 = this.f11741c;
                if (i >= zArr2.length) {
                    break;
                }
                zArr2[i] = false;
                i++;
            }
            if (iArr != null) {
                for (int i2 : iArr) {
                    if (i2 >= 0) {
                        boolean[] zArr3 = this.f11741c;
                        if (i2 < zArr3.length) {
                            zArr3[i2] = true;
                            this.f11742d = i2;
                        }
                    }
                }
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            CharSequence[] charSequenceArr = this.f11740b;
            return charSequenceArr == null ? 0 : charSequenceArr.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            Object[] objArr = this.f11740b;
            return objArr == null ? 0 : objArr[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            com.rey.material.widget.CompoundButton compoundButton = (com.rey.material.widget.CompoundButton) view;
            com.rey.material.widget.CompoundButton compoundButton2 = compoundButton;
            if (compoundButton == null) {
                int i2 = 3;
                compoundButton2 = SimpleDialog.this.f11733P == 3 ? new CheckBox(viewGroup.getContext(), null, 0, SimpleDialog.this.f11730M) : new RadioButton(viewGroup.getContext(), null, 0, SimpleDialog.this.f11729L);
                if (SimpleDialog.this.f11731N != -2) {
                    compoundButton2.setMinHeight(SimpleDialog.this.f11731N);
                }
                compoundButton2.setGravity(8388627);
                if (Build.VERSION.SDK_INT >= 17) {
                    if (((C2821c) viewGroup).m1471a()) {
                        i2 = 4;
                    }
                    compoundButton2.setTextDirection(i2);
                }
                compoundButton2.setTextAppearance(compoundButton2.getContext(), SimpleDialog.this.f11732O);
                t.C0(compoundButton2, SimpleDialog.this.f11688m, 0, 0, 0);
            }
            compoundButton2.setTag(Integer.valueOf(i));
            compoundButton2.setText(this.f11740b[i]);
            if (compoundButton2 instanceof CheckBox) {
                ((CheckBox) compoundButton2).setCheckedImmediately(this.f11741c[i]);
            } else {
                ((RadioButton) compoundButton2).setCheckedImmediately(this.f11741c[i]);
            }
            compoundButton2.setOnCheckedChangeListener(this);
            return compoundButton2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int i;
            int intValue = ((Integer) compoundButton.getTag()).intValue();
            boolean[] zArr = this.f11741c;
            if (zArr[intValue] != z) {
                zArr[intValue] = z;
                if (SimpleDialog.this.f11734Q != null) {
                    SimpleDialog.this.f11734Q.mo1470e(intValue, this.f11741c[intValue]);
                }
            }
            if (SimpleDialog.this.f11733P == 2 && z && (i = this.f11742d) != intValue) {
                this.f11741c[i] = false;
                if (SimpleDialog.this.f11734Q != null) {
                    SimpleDialog.this.f11734Q.mo1470e(this.f11742d, false);
                }
                com.rey.material.widget.CompoundButton compoundButton2 = (com.rey.material.widget.CompoundButton) SimpleDialog.this.f11725H.getChildAt(this.f11742d - SimpleDialog.this.f11725H.getFirstVisiblePosition());
                if (compoundButton2 != null) {
                    compoundButton2.setChecked(false);
                }
                this.f11742d = intValue;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.rey.material.app.SimpleDialog$c */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$c.class */
    public class C2821c extends ListView {

        /* renamed from: b */
        private boolean f11744b = false;

        public C2821c(Context context) {
            super(context);
        }

        /* renamed from: a */
        public boolean m1471a() {
            return this.f11744b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
            if (getAdapter().getCount() > r0) goto L_0x0059;
         */
        @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r10
                r4 = r11
                r5 = r12
                super.onLayout(r1, r2, r3, r4, r5)
                r0 = r7
                int r0 = r0.getChildCount()
                r11 = r0
                r0 = 0
                r13 = r0
                r0 = 0
                r10 = r0
                r0 = 0
                r9 = r0
            L_0x0018:
                r0 = r10
                r1 = r11
                if (r0 >= r1) goto L_0x002f
                r0 = r9
                r1 = r7
                r2 = r10
                android.view.View r1 = r1.getChildAt(r2)
                int r1 = r1.getMeasuredHeight()
                int r0 = r0 + r1
                r9 = r0
                int r10 = r10 + 1
                goto L_0x0018
            L_0x002f:
                r0 = r7
                com.rey.material.app.SimpleDialog r0 = com.rey.material.app.SimpleDialog.this
                r14 = r0
                r0 = r9
                r1 = r7
                int r1 = r1.getMeasuredHeight()
                if (r0 > r1) goto L_0x0059
                r0 = r13
                r8 = r0
                r0 = r9
                r1 = r7
                int r1 = r1.getMeasuredHeight()
                if (r0 != r1) goto L_0x005b
                r0 = r13
                r8 = r0
                r0 = r7
                android.widget.ListAdapter r0 = r0.getAdapter()
                int r0 = r0.getCount()
                r1 = r11
                if (r0 <= r1) goto L_0x005b
            L_0x0059:
                r0 = 1
                r8 = r0
            L_0x005b:
                r0 = r14
                r1 = r8
                com.rey.material.app.Dialog r0 = r0.m1530s0(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rey.material.app.SimpleDialog.C2821c.onLayout(boolean, int, int, int, int):void");
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = i2;
            if (View.MeasureSpec.getMode(i2) == 0) {
                i3 = i2;
                if (SimpleDialog.this.f11731N != -2) {
                    i3 = View.MeasureSpec.makeMeasureSpec((SimpleDialog.this.f11731N * getAdapter().getCount()) + getPaddingTop() + getPaddingBottom(), 1073741824);
                }
            }
            super.onMeasure(i, i3);
        }

        @Override // android.widget.AbsListView, android.view.View
        public void onRtlPropertiesChanged(int i) {
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            if (this.f11744b != z) {
                this.f11744b = z;
                requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.rey.material.app.SimpleDialog$d */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$d.class */
    public class C2822d extends ScrollView {

        /* renamed from: b */
        private boolean f11746b = false;

        public C2822d(Context context) {
            super(context);
        }

        @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            View childAt = getChildAt(0);
            SimpleDialog simpleDialog = SimpleDialog.this;
            boolean z2 = false;
            if (childAt != null) {
                z2 = false;
                if (childAt.getMeasuredHeight() > (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) {
                    z2 = true;
                }
            }
            simpleDialog.m1530s0(z2);
        }

        @Override // android.view.View
        public void onRtlPropertiesChanged(int i) {
            View childAt;
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            if (this.f11746b != z) {
                this.f11746b = z;
                if (Build.VERSION.SDK_INT >= 17 && (childAt = getChildAt(0)) != null && childAt == SimpleDialog.this.f11723F) {
                    SimpleDialog.this.f11723F.setTextDirection(this.f11746b ? 4 : 3);
                }
                requestLayout();
            }
        }
    }

    /* renamed from: com.rey.material.app.SimpleDialog$e */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/SimpleDialog$e.class */
    public interface AbstractC2823e {
        /* renamed from: e */
        void mo1470e(int i, boolean z);
    }

    public SimpleDialog(Context context, int i) {
        super(context, i);
    }

    /* renamed from: H0 */
    private void m1499H0() {
        C2821c cVar = new C2821c(getContext());
        this.f11725H = cVar;
        cVar.setDividerHeight(0);
        this.f11725H.setCacheColorHint(0);
        this.f11725H.setScrollBarStyle(33554432);
        this.f11725H.setClipToPadding(false);
        this.f11725H.setSelector(C3103a.m216a());
        this.f11725H.setPadding(0, 0, 0, this.f11688m - this.f11693r);
        this.f11725H.setVerticalFadingEdgeEnabled(false);
        this.f11725H.setOverScrollMode(2);
        t.A0(this.f11725H, 2);
        C2820b bVar = new C2820b();
        this.f11726I = bVar;
        this.f11725H.setAdapter((ListAdapter) bVar);
    }

    /* renamed from: I0 */
    private void m1498I0() {
        TextView textView = new TextView(getContext());
        this.f11723F = textView;
        textView.setTextAppearance(getContext(), this.f11727J);
        this.f11723F.setTextColor(this.f11728K);
        this.f11723F.setTextSize(16.0f);
        this.f11723F.setGravity(8388627);
    }

    /* renamed from: J0 */
    private void m1497J0() {
        C2822d dVar = new C2822d(getContext());
        this.f11724G = dVar;
        dVar.setPadding(0, 0, 0, this.f11688m - this.f11693r);
        this.f11724G.setClipToPadding(false);
        this.f11724G.setFillViewport(true);
        this.f11724G.setScrollBarStyle(33554432);
        t.A0(this.f11724G, 2);
    }

    @Override // com.rey.material.app.Dialog
    /* renamed from: A */
    public Dialog mo1507A(View view) {
        if (this.f11724G == null) {
            m1497J0();
        }
        if (!(this.f11724G.getChildAt(0) == view || view == null)) {
            this.f11724G.removeAllViews();
            this.f11724G.addView(view);
            this.f11733P = 4;
            super.mo1507A(this.f11724G);
        }
        return this;
    }

    /* renamed from: F0 */
    public SimpleDialog m1501F0(int i) {
        if (this.f11730M != i) {
            this.f11730M = i;
            C2820b bVar = this.f11726I;
            if (bVar != null && this.f11733P == 3) {
                bVar.notifyDataSetChanged();
            }
        }
        return this;
    }

    /* renamed from: G0 */
    public int[] m1500G0() {
        C2820b bVar = this.f11726I;
        return bVar == null ? null : bVar.m1473a();
    }

    /* renamed from: K0 */
    public SimpleDialog m1496K0(int i) {
        if (this.f11731N != i) {
            this.f11731N = i;
            C2820b bVar = this.f11726I;
            if (bVar != null) {
                bVar.notifyDataSetChanged();
            }
        }
        return this;
    }

    /* renamed from: L0 */
    public SimpleDialog m1495L0(int i) {
        if (this.f11732O != i) {
            this.f11732O = i;
            C2820b bVar = this.f11726I;
            if (bVar != null) {
                bVar.notifyDataSetChanged();
            }
        }
        return this;
    }

    /* renamed from: M0 */
    public SimpleDialog m1494M0(CharSequence[] charSequenceArr, int i) {
        if (this.f11725H == null) {
            m1499H0();
        }
        this.f11733P = 2;
        this.f11726I.m1472b(charSequenceArr, i);
        super.mo1507A(this.f11725H);
        return this;
    }

    /* renamed from: N0 */
    public SimpleDialog m1493N0(CharSequence charSequence, Typeface typeface) {
        if (this.f11724G == null) {
            m1497J0();
        }
        if (this.f11723F == null) {
            m1498I0();
        }
        if (this.f11724G.getChildAt(0) != this.f11723F) {
            this.f11724G.removeAllViews();
            this.f11724G.addView(this.f11723F);
        }
        if (typeface != null) {
            this.f11723F.setTypeface(typeface);
        }
        this.f11723F.setText(charSequence);
        if (!TextUtils.isEmpty(charSequence)) {
            this.f11733P = 1;
            super.mo1507A(this.f11724G);
        }
        return this;
    }

    /* renamed from: O0 */
    public SimpleDialog m1492O0(int i) {
        if (this.f11727J != i) {
            this.f11727J = i;
            TextView textView = this.f11723F;
            if (textView != null) {
                textView.setTextAppearance(getContext(), this.f11727J);
            }
        }
        return this;
    }

    /* renamed from: P0 */
    public SimpleDialog m1491P0(int i) {
        if (this.f11728K != i) {
            this.f11728K = i;
            TextView textView = this.f11723F;
            if (textView != null) {
                textView.setTextColor(i);
            }
        }
        return this;
    }

    /* renamed from: Q0 */
    public SimpleDialog m1490Q0(CharSequence[] charSequenceArr, int... iArr) {
        if (this.f11725H == null) {
            m1499H0();
        }
        this.f11733P = 3;
        this.f11726I.m1472b(charSequenceArr, iArr);
        super.mo1507A(this.f11725H);
        return this;
    }

    /* renamed from: R0 */
    public SimpleDialog m1489R0(AbstractC2823e eVar) {
        this.f11734Q = eVar;
        return this;
    }

    /* renamed from: S0 */
    public SimpleDialog m1488S0(int i) {
        if (this.f11729L != i) {
            this.f11729L = i;
            C2820b bVar = this.f11726I;
            if (bVar != null && this.f11733P == 2) {
                bVar.notifyDataSetChanged();
            }
        }
        return this;
    }

    @Override // com.rey.material.app.Dialog
    /* renamed from: g0 */
    protected void mo1487g0() {
        m1492O0(R$style.TextAppearance_AppCompat_Body1);
        m1496K0(-2);
        m1495L0(R$style.TextAppearance_AppCompat_Body1);
    }

    @Override // com.rey.material.app.Dialog
    /* renamed from: s */
    public Dialog mo1486s(int i) {
        super.mo1486s(i);
        if (i == 0) {
            return this;
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, R$styleable.SimpleDialog);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            if (index == 3) {
                i2 = obtainStyledAttributes.getResourceId(index, 0);
                z = z;
                i3 = i3;
            } else if (index == 4) {
                i3 = obtainStyledAttributes.getColor(index, 0);
                z = true;
                i2 = i2;
            } else if (index == 5) {
                m1488S0(obtainStyledAttributes.getResourceId(index, 0));
                i2 = i2;
                z = z;
                i3 = i3;
            } else if (index == 0) {
                m1501F0(obtainStyledAttributes.getResourceId(index, 0));
                i2 = i2;
                z = z;
                i3 = i3;
            } else if (index == 1) {
                m1496K0(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                i2 = i2;
                z = z;
                i3 = i3;
            } else {
                i2 = i2;
                z = z;
                i3 = i3;
                if (index == 2) {
                    m1495L0(obtainStyledAttributes.getResourceId(index, 0));
                    i3 = i3;
                    z = z;
                    i2 = i2;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (i2 != 0) {
            m1492O0(i2);
        }
        if (z) {
            m1491P0(i3);
        }
        return this;
    }

    @Override // com.rey.material.app.Dialog
    /* renamed from: u0 */
    public Dialog mo1485u0(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        int i = this.f11688m;
        m1522y(i, isEmpty ^ true ? 0 : i, i, 0);
        super.mo1485u0(charSequence);
        return this;
    }

    @Override // com.rey.material.app.Dialog
    /* renamed from: w */
    public Dialog mo1484w() {
        super.mo1484w();
        this.f11733P = 0;
        return this;
    }
}
