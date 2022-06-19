package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/DocumentEntity.class */
public final class DocumentEntity extends BinaryEntity {
    public static final C4192a CREATOR = new C4192a(null);

    /* renamed from: v */
    public final String f13263v;

    /* renamed from: w */
    public final int f13264w = 5;

    /* renamed from: com.truecaller.messaging.data.types.DocumentEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/DocumentEntity$a.class */
    public static final class C4192a implements Parcelable.Creator<DocumentEntity> {
        public C4192a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public DocumentEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new DocumentEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DocumentEntity[] newArray(int i) {
            return new DocumentEntity[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocumentEntity(long j, String str, int i, Uri uri, boolean z, long j2, String str2) {
        super(j, str, i, uri, j2, z, 0, 64);
        l.e(str, "type");
        l.e(uri, "content");
        l.e(str2, "fileName");
        this.f13263v = str2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocumentEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        String readString = parcel.readString();
        this.f13263v = readString == null ? "" : readString;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        super.mo34994c(contentValues);
        contentValues.put("entity_type", Integer.valueOf(this.f13264w));
        contentValues.put("entity_info4", this.f13263v);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13264w;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        return super.equals(obj) && (obj instanceof DocumentEntity) && l.a(((DocumentEntity) obj).f13263v, this.f13263v);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        return this.f13263v.hashCode() + (super.hashCode() * 31);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f13263v);
    }
}
