package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/AudioEntity.class */
public final class AudioEntity extends BinaryEntity {
    public static final C4187a CREATOR = new C4187a(null);

    /* renamed from: v */
    public final int f13170v;

    /* renamed from: w */
    public final int f13171w = 4;

    /* renamed from: com.truecaller.messaging.data.types.AudioEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/AudioEntity$a.class */
    public static final class C4187a implements Parcelable.Creator<AudioEntity> {
        public C4187a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public AudioEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new AudioEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AudioEntity[] newArray(int i) {
            return new AudioEntity[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEntity(long j, String str, int i, Uri uri, boolean z, long j2, int i2) {
        super(j, str, i, uri, j2, z, 0, 64);
        l.e(str, "type");
        l.e(uri, "content");
        this.f13170v = i2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13170v = parcel.readInt();
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(this.f13171w));
        contentValues.put("entity_info2", Integer.valueOf(this.f13308c));
        contentValues.put("entity_info1", this.f13173i.toString());
        contentValues.put("entity_info3", Long.valueOf(this.f13175k));
        contentValues.put("entity_info4", Integer.valueOf(this.f13170v));
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13171w;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        return super.equals(obj) && (obj instanceof AudioEntity) && ((AudioEntity) obj).f13170v == this.f13170v;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        return (super.hashCode() * 31) + this.f13170v;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f13170v);
    }
}
