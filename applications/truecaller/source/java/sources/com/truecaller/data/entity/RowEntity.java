package com.truecaller.data.entity;

import android.os.Parcel;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.dto.ContactDto.Row;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/RowEntity.class */
public abstract class RowEntity<RT extends ContactDto.Row> extends Entity {
    public final RT mRow;

    public RowEntity(Parcel parcel) {
        super(parcel);
        this.mRow = (RT) parcel.readParcelable(ContactDto.Row.class.getClassLoader());
    }

    public RowEntity(RT rt) {
        this.mRow = rt;
    }

    @Override // com.truecaller.data.entity.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Long getDataPhonebookId() {
        long j = this.mRow.phonebookId;
        return j == 0 ? null : Long.valueOf(j);
    }

    @Override // com.truecaller.data.entity.Entity
    public Long getId() {
        long j = this.mRow.rowId;
        return j == 0 ? null : Long.valueOf(j);
    }

    public int getSource() {
        return this.mRow.source;
    }

    @Override // com.truecaller.data.entity.Entity
    public String getTcId() {
        return this.mRow.tcId;
    }

    public boolean isPrimary() {
        return this.mRow.isPrimary;
    }

    public final RT row() {
        return this.mRow;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public void setDataPhonebookId(Long l) {
        this.mRow.phonebookId = l == null ? (char) 0 : l.longValue();
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // com.truecaller.data.entity.Entity
    public void setId(Long l) {
        this.mRow.rowId = l == null ? (char) 0 : l.longValue();
    }

    public void setIsPrimary(boolean z) {
        this.mRow.isPrimary = z;
    }

    public void setSource(int i) {
        this.mRow.source = i;
    }

    @Override // com.truecaller.data.entity.Entity
    public void setTcId(String str) {
        this.mRow.tcId = str;
    }

    public String toString() {
        return getClass().getSimpleName() + "{row=" + this.mRow + "}";
    }

    @Override // com.truecaller.data.entity.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.mRow, i);
    }
}
