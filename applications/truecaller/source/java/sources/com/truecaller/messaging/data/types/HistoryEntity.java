package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/HistoryEntity.class */
public final class HistoryEntity extends Entity {
    public static final Parcelable.Creator<HistoryEntity> CREATOR = new C4197a();

    /* renamed from: i */
    public final int f13313i = 8;

    /* renamed from: j */
    public final boolean f13314j = true;

    /* renamed from: com.truecaller.messaging.data.types.HistoryEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/HistoryEntity$a.class */
    public static final class C4197a implements Parcelable.Creator<HistoryEntity> {
        @Override // android.os.Parcelable.Creator
        public HistoryEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return parcel.readInt() != 0 ? new HistoryEntity() : null;
        }

        @Override // android.os.Parcelable.Creator
        public HistoryEntity[] newArray(int i) {
            return new HistoryEntity[i];
        }
    }

    public HistoryEntity() {
        super(-1L, "history", 0);
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(this.f13313i));
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13313i;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: e */
    public boolean mo34896e() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: f */
    public boolean mo35001f() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: g */
    public boolean mo35000g() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: h */
    public boolean mo34999h() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: k */
    public boolean mo34998k() {
        return this.f13314j;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: l */
    public boolean mo34895l() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: n */
    public boolean mo34997n() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: o */
    public boolean mo34996o() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: r */
    public boolean mo34894r() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: t */
    public boolean mo34893t() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: w */
    public boolean mo34892w() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeInt(1);
    }
}
