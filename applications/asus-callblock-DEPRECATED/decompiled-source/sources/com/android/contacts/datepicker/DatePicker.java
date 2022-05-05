package com.android.contacts.datepicker;

import android.animation.LayoutTransition;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import java.text.DateFormatSymbols;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/android/contacts/datepicker/DatePicker.class */
public class DatePicker extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public static int f801a = 0;
    private static final b e = new b();

    /* renamed from: b  reason: collision with root package name */
    int f802b;
    int c;
    boolean d;
    private final LinearLayout f;
    private final CheckBox g;
    private final NumberPicker h;
    private final NumberPicker i;
    private final NumberPicker j;
    private a k;
    private int l;
    private boolean m;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/datepicker/DatePicker$SavedState.class */
    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.contacts.datepicker.DatePicker.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        final int f807a;

        /* renamed from: b  reason: collision with root package name */
        final int f808b;
        final int c;
        final boolean d;
        final boolean e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private SavedState(Parcel parcel) {
            super(parcel);
            boolean z = true;
            this.f807a = parcel.readInt();
            this.f808b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            this.e = z;
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        private SavedState(Parcelable parcelable, int i, int i2, int i3, boolean z, boolean z2) {
            super(parcelable);
            this.f807a = i;
            this.f808b = i2;
            this.c = i3;
            this.d = z;
            this.e = z2;
        }

        /* synthetic */ SavedState(Parcelable parcelable, int i, int i2, int i3, boolean z, boolean z2, byte b2) {
            this(parcelable, i, i2, i3, z, z2);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f807a);
            parcel.writeInt(this.f808b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d ? 1 : 0);
            if (!this.e) {
                i2 = 0;
            }
            parcel.writeInt(i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/datepicker/DatePicker$a.class */
    public interface a {
        void a(int i, int i2, int i3);
    }

    public DatePicker(Context context) {
        this(context, null);
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427494, (ViewGroup) this, true);
        this.f = (LinearLayout) findViewById(2131297146);
        this.h = (NumberPicker) findViewById(2131296640);
        this.h.setFormatter(e);
        this.h.setOnLongPressUpdateInterval(100L);
        this.h.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.android.contacts.datepicker.DatePicker.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker, int i2, int i3) {
                DatePicker.this.f802b = i3;
                DatePicker.this.f();
            }
        });
        this.i = (NumberPicker) findViewById(2131297090);
        this.i.setFormatter(e);
        String[] shortMonths = new DateFormatSymbols().getShortMonths();
        if (shortMonths[0].startsWith("1")) {
            for (int i2 = 0; i2 < shortMonths.length; i2++) {
                shortMonths[i2] = String.valueOf(i2 + 1);
            }
            this.i.setMinValue(1);
            this.i.setMaxValue(12);
        } else {
            this.i.setMinValue(1);
            this.i.setMaxValue(12);
            this.i.setDisplayedValues(shortMonths);
        }
        this.i.setOnLongPressUpdateInterval(200L);
        this.i.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.android.contacts.datepicker.DatePicker.2
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker, int i3, int i4) {
                DatePicker.this.c = i4 - 1;
                DatePicker.this.e();
                DatePicker.this.f();
                DatePicker.this.d();
            }
        });
        this.j = (NumberPicker) findViewById(2131297550);
        this.j.setOnLongPressUpdateInterval(100L);
        this.j.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.android.contacts.datepicker.DatePicker.3
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker, int i3, int i4) {
                DatePicker.this.l = i4;
                DatePicker.this.e();
                DatePicker.this.f();
                DatePicker.this.d();
            }
        });
        this.j.setMinValue(1900);
        this.j.setMaxValue(2100);
        this.g = (CheckBox) findViewById(2131297551);
        this.g.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.contacts.datepicker.DatePicker.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DatePicker.this.m = z;
                DatePicker.this.e();
                DatePicker.this.f();
                DatePicker.this.c();
            }
        });
        Calendar instance = Calendar.getInstance();
        a(instance.get(1), instance.get(2), instance.get(5), false, null);
        b();
        this.f.setLayoutTransition(new LayoutTransition());
        if (!isEnabled()) {
            setEnabled(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x01ad, code lost:
        if (r0.charAt(r10 + 1) != '\'') goto L_0x01b0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.datepicker.DatePicker.b():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int i = 0;
        d();
        this.g.setChecked(this.m);
        this.g.setVisibility(this.d ? 0 : 8);
        this.j.setValue(this.l);
        NumberPicker numberPicker = this.j;
        if (!this.m) {
            i = 8;
        }
        numberPicker.setVisibility(i);
        this.i.setValue(this.c + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Calendar instance = Calendar.getInstance();
        instance.set(this.m ? this.l : 2000, this.c, 1);
        int actualMaximum = instance.getActualMaximum(5);
        this.h.setMinValue(1);
        this.h.setMaxValue(actualMaximum);
        this.h.setValue(this.f802b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Calendar instance = Calendar.getInstance();
        instance.set(1, this.m ? this.l : 2000);
        instance.set(2, this.c);
        int actualMaximum = instance.getActualMaximum(5);
        if (this.f802b > actualMaximum) {
            this.f802b = actualMaximum;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.k != null) {
            this.k.a((!this.d || this.m) ? this.l : f801a, this.c, this.f802b);
        }
    }

    public final int a() {
        return (!this.d || this.m) ? this.l : f801a;
    }

    public final void a(int i, int i2, int i3, boolean z, a aVar) {
        this.l = (!z || i != f801a) ? i : Calendar.getInstance().get(1);
        this.c = i2;
        this.f802b = i3;
        this.d = z;
        this.m = !z || i != f801a;
        this.k = aVar;
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.l = savedState.f807a;
        this.c = savedState.f808b;
        this.f802b = savedState.c;
        this.m = savedState.d;
        this.d = savedState.e;
        c();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.l, this.c, this.f802b, this.m, this.d, (byte) 0);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.h.setEnabled(z);
        this.i.setEnabled(z);
        this.j.setEnabled(z);
    }

    public void setYearVisible(boolean z) {
        this.m = z;
        e();
        f();
        c();
    }
}
