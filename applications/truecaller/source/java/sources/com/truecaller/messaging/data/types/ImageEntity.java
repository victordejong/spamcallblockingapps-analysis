package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImageEntity.class */
public class ImageEntity extends BinaryEntity {
    public static final Parcelable.Creator<ImageEntity> CREATOR = new C4203a();

    /* renamed from: v */
    public final int f13347v;

    /* renamed from: w */
    public final int f13348w;

    /* renamed from: x */
    public final Uri f13349x;

    /* renamed from: y */
    public final int f13350y = 1;

    /* renamed from: z */
    public final boolean f13351z = true;

    /* renamed from: com.truecaller.messaging.data.types.ImageEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/ImageEntity$a.class */
    public static final class C4203a implements Parcelable.Creator<ImageEntity> {
        @Override // android.os.Parcelable.Creator
        public ImageEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new ImageEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ImageEntity[] newArray(int i) {
            return new ImageEntity[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageEntity(long j, String str, int i, Uri uri, int i2, int i3, long j2, boolean z, Uri uri2) {
        super(j, str, i, uri, j2, z, 0, 64);
        l.e(str, "type");
        l.e(uri, "content");
        l.e(uri2, "thumbnailUri");
        this.f13347v = i2;
        this.f13348w = i3;
        this.f13349x = uri2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13347v = parcel.readInt();
        this.f13348w = parcel.readInt();
        Uri parse = Uri.parse(parcel.readString());
        l.d(parse, "Uri.parse(source.readString())");
        this.f13349x = parse;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(mo34993d()));
        contentValues.put("entity_info2", Integer.valueOf(this.f13308c));
        contentValues.put("entity_info1", this.f13173i.toString());
        contentValues.put("entity_info5", Integer.valueOf(this.f13347v));
        contentValues.put("entity_info6", Integer.valueOf(this.f13348w));
        contentValues.put("entity_info3", Long.valueOf(this.f13175k));
        contentValues.put("entity_info4", this.f13349x.toString());
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13350y;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        boolean z;
        if (super.equals(obj) && (obj instanceof ImageEntity)) {
            ImageEntity imageEntity = (ImageEntity) obj;
            if (imageEntity.f13347v == this.f13347v && imageEntity.f13348w == this.f13348w && l.a(imageEntity.f13349x, this.f13349x)) {
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
        int i = this.f13347v;
        return this.f13349x.hashCode() + (((((hashCode * 31) + i) * 31) + this.f13348w) * 31);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: l */
    public boolean mo34895l() {
        return this.f13351z;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f13347v);
        parcel.writeInt(this.f13348w);
        parcel.writeString(this.f13349x.toString());
    }
}
