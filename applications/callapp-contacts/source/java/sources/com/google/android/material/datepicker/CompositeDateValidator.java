package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.p036e.C0833d;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator.class */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {
    private static final int COMPARATOR_ALL_ID = 2;
    private static final int COMPARATOR_ANY_ID = 1;
    private final AbstractC14502a operator;
    private final List<CalendarConstraints.DateValidator> validators;
    private static final AbstractC14502a ANY_OPERATOR = new AbstractC14502a() { // from class: com.google.android.material.datepicker.CompositeDateValidator.1
        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC14502a
        /* renamed from: a */
        public final int mo10863a() {
            return 1;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC14502a
        /* renamed from: a */
        public final boolean mo10862a(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.isValid(j)) {
                    return true;
                }
            }
            return false;
        }
    };
    private static final AbstractC14502a ALL_OPERATOR = new AbstractC14502a() { // from class: com.google.android.material.datepicker.CompositeDateValidator.2
        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC14502a
        /* renamed from: a */
        public final int mo10863a() {
            return 2;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.AbstractC14502a
        /* renamed from: a */
        public final boolean mo10862a(List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.isValid(j)) {
                    return false;
                }
            }
            return true;
        }
    };
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Parcelable.Creator<CompositeDateValidator>() { // from class: com.google.android.material.datepicker.CompositeDateValidator.3
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CompositeDateValidator createFromParcel(Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int readInt = parcel.readInt();
            return new CompositeDateValidator((List) C0833d.m44410a(readArrayList), (readInt == 2 || readInt != 1) ? CompositeDateValidator.ALL_OPERATOR : CompositeDateValidator.ANY_OPERATOR);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    };

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator$a.class */
    public interface AbstractC14502a {
        /* renamed from: a */
        int mo10863a();

        /* renamed from: a */
        boolean mo10862a(List<CalendarConstraints.DateValidator> list, long j);
    }

    private CompositeDateValidator(List<CalendarConstraints.DateValidator> list, AbstractC14502a abstractC14502a) {
        this.validators = list;
        this.operator = abstractC14502a;
    }

    public static CalendarConstraints.DateValidator allOf(List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, ALL_OPERATOR);
    }

    public static CalendarConstraints.DateValidator anyOf(List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, ANY_OPERATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.validators.equals(compositeDateValidator.validators) && this.operator.mo10863a() == compositeDateValidator.operator.mo10863a();
    }

    public final int hashCode() {
        return this.validators.hashCode();
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public final boolean isValid(long j) {
        return this.operator.mo10862a(this.validators, j);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.validators);
        parcel.writeInt(this.operator.mo10863a());
    }
}
