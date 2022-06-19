package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/VideoEntity.class */
public final class VideoEntity extends BinaryEntity {
    public static final Parcelable.Creator<VideoEntity> CREATOR = new C4216a();

    /* renamed from: v */
    public final int f13480v;

    /* renamed from: w */
    public final int f13481w;

    /* renamed from: x */
    public final int f13482x;

    /* renamed from: y */
    public final Uri f13483y;

    /* renamed from: z */
    public final int f13484z = 2;

    /* renamed from: A */
    public final boolean f13479A = true;

    /* renamed from: com.truecaller.messaging.data.types.VideoEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/VideoEntity$a.class */
    public static final class C4216a implements Parcelable.Creator<VideoEntity> {
        @Override // android.os.Parcelable.Creator
        public VideoEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new VideoEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VideoEntity[] newArray(int i) {
            return new VideoEntity[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoEntity(long j, String str, int i, Uri uri, boolean z, long j2, int i2, int i3, int i4, Uri uri2) {
        super(j, str, i, uri, j2, z, 0, 64);
        l.e(str, "type");
        l.e(uri, "content");
        l.e(uri2, "thumbnailUri");
        this.f13480v = i2;
        this.f13481w = i3;
        this.f13482x = i4;
        this.f13483y = uri2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13480v = parcel.readInt();
        this.f13481w = parcel.readInt();
        this.f13482x = parcel.readInt();
        Uri parse = Uri.parse(parcel.readString());
        l.d(parse, "Uri.parse(source.readString())");
        this.f13483y = parse;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(this.f13484z));
        contentValues.put("entity_info2", Integer.valueOf(this.f13308c));
        contentValues.put("entity_info1", this.f13173i.toString());
        contentValues.put("entity_info5", Integer.valueOf(this.f13480v));
        contentValues.put("entity_info6", Integer.valueOf(this.f13481w));
        contentValues.put("entity_info3", Long.valueOf(this.f13175k));
        contentValues.put("entity_info7", Integer.valueOf(this.f13482x));
        contentValues.put("entity_info4", this.f13483y.toString());
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13484z;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        boolean z;
        if (super.equals(obj) && (obj instanceof VideoEntity)) {
            VideoEntity videoEntity = (VideoEntity) obj;
            if (videoEntity.f13480v == this.f13480v && videoEntity.f13481w == this.f13481w && videoEntity.f13482x == this.f13482x && l.a(videoEntity.f13483y, this.f13483y)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        int hashCode = super.hashCode();
        int i = this.f13480v;
        int i2 = this.f13481w;
        return this.f13483y.hashCode() + (((((((hashCode * 31) + i) * 31) + i2) * 31) + this.f13482x) * 31);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: w */
    public boolean mo34892w() {
        return this.f13479A;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f13480v);
        parcel.writeInt(this.f13481w);
        parcel.writeInt(this.f13482x);
        parcel.writeString(this.f13483y.toString());
    }

    /* renamed from: y */
    public final BinaryEntity m34992y(Uri uri) {
        l.e(uri, "newUri");
        return new VideoEntity(this.f13306a, this.f13307b, this.f13308c, uri, this.f13174j, this.f13175k, this.f13480v, this.f13481w, this.f13482x, this.f13483y);
    }
}
