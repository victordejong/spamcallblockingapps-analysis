package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p049k.C1597h;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator.class */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* renamed from: f */
    private final AbstractC8078d f36559f;

    /* renamed from: g */
    private final List<CalendarConstraints.DateValidator> f36560g;

    /* renamed from: d */
    private static final AbstractC8078d f36557d = new C8075a();

    /* renamed from: e */
    private static final AbstractC8078d f36558e = new C8076b();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new C8077c();

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator$a.class */
    public static final class C8075a implements AbstractC8078d {
        C8075a() {
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC8078d
        /* renamed from: a */
        public boolean mo5014a(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.mo5011R(j)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC8078d
        public int getId() {
            return 1;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator$b.class */
    static final class C8076b implements AbstractC8078d {
        C8076b() {
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC8078d
        /* renamed from: a */
        public boolean mo5014a(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.mo5011R(j)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC8078d
        public int getId() {
            return 2;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator$c.class */
    static final class C8077c implements Parcelable.Creator<CompositeDateValidator> {
        C8077c() {
        }

        /* renamed from: a */
        public CompositeDateValidator createFromParcel(Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int readInt = parcel.readInt();
            return new CompositeDateValidator((List) C1597h.m29659e(readArrayList), readInt == 2 ? CompositeDateValidator.f36558e : readInt == 1 ? CompositeDateValidator.f36557d : CompositeDateValidator.f36558e, null);
        }

        /* renamed from: b */
        public CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator$d.class */
    public interface AbstractC8078d {
        /* renamed from: a */
        boolean mo5014a(List<CalendarConstraints.DateValidator> list, long j);

        int getId();
    }

    private CompositeDateValidator(List<CalendarConstraints.DateValidator> list, AbstractC8078d abstractC8078d) {
        this.f36560g = list;
        this.f36559f = abstractC8078d;
    }

    /* synthetic */ CompositeDateValidator(List list, AbstractC8078d abstractC8078d, C8075a c8075a) {
        this(list, abstractC8078d);
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    /* renamed from: R */
    public boolean mo5011R(long j) {
        return this.f36559f.mo5014a(this.f36560g, j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        if (!this.f36560g.equals(compositeDateValidator.f36560g) || this.f36559f.getId() != compositeDateValidator.f36559f.getId()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f36560g.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f36560g);
        parcel.writeInt(this.f36559f.getId());
    }
}
