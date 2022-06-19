package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/LocationEntity.class */
public final class LocationEntity extends BinaryEntity {
    public static final C4206a CREATOR = new C4206a(null);

    /* renamed from: v */
    public final String f13360v;

    /* renamed from: w */
    public final double f13361w;

    /* renamed from: x */
    public final double f13362x;

    /* renamed from: y */
    public final int f13363y = 9;

    /* renamed from: com.truecaller.messaging.data.types.LocationEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/LocationEntity$a.class */
    public static final class C4206a implements Parcelable.Creator<LocationEntity> {
        public C4206a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public LocationEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new LocationEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LocationEntity[] newArray(int i) {
            return new LocationEntity[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocationEntity(long j, String str, int i, Uri uri, long j2, String str2, double d, double d2) {
        super(j, str, i, uri, j2, false, 0, 64);
        l.e(str, "type");
        l.e(uri, "previewUri");
        this.f13360v = str2;
        this.f13361w = d;
        this.f13362x = d2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocationEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13360v = parcel.readString();
        this.f13361w = parcel.readDouble();
        this.f13362x = parcel.readDouble();
    }

    /* renamed from: A */
    public final double m35028A() {
        return this.f13362x;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(this.f13363y));
        contentValues.put("entity_info2", Integer.valueOf(this.f13308c));
        contentValues.put("entity_info3", Long.valueOf(this.f13175k));
        contentValues.put("entity_info1", this.f13173i.toString());
        contentValues.put("entity_info4", this.f13360v);
        contentValues.put("entity_info5", Double.valueOf(this.f13361w));
        contentValues.put("entity_info6", Double.valueOf(this.f13362x));
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13363y;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        boolean z;
        if (super.equals(obj) && (obj instanceof LocationEntity)) {
            LocationEntity locationEntity = (LocationEntity) obj;
            if (locationEntity.f13361w == this.f13361w && locationEntity.f13362x == this.f13362x && l.a(locationEntity.f13360v, this.f13360v)) {
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
        String str = this.f13360v;
        return (((((hashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + Double.doubleToLongBits(this.f13361w)) * 31) + Double.doubleToLongBits(this.f13362x);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f13360v);
        parcel.writeDouble(this.f13361w);
        parcel.writeDouble(this.f13362x);
    }

    /* renamed from: y */
    public final String m35027y() {
        return this.f13360v;
    }

    /* renamed from: z */
    public final double m35026z() {
        return this.f13361w;
    }
}
