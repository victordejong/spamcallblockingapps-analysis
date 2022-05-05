package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/CompositeDateValidator.class */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Parcelable.Creator<CompositeDateValidator>() { // from class: com.google.android.material.datepicker.CompositeDateValidator.1
        @NonNull
        /* renamed from: a */
        public CompositeDateValidator createFromParcel(@NonNull Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            Preconditions.m19337d(readArrayList);
            return new CompositeDateValidator(readArrayList);
        }

        @NonNull
        /* renamed from: b */
        public CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    };
    @NonNull

    /* renamed from: f */
    private final List<CalendarConstraints.DateValidator> f10515f;

    private CompositeDateValidator(@NonNull List<CalendarConstraints.DateValidator> list) {
        this.f10515f = list;
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    /* renamed from: X */
    public boolean mo9973X(long j) {
        for (CalendarConstraints.DateValidator dateValidator : this.f10515f) {
            if (dateValidator != null && !dateValidator.mo9973X(j)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        return this.f10515f.equals(((CompositeDateValidator) obj).f10515f);
    }

    public int hashCode() {
        return this.f10515f.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeList(this.f10515f);
    }
}
