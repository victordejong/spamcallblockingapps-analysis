package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/GifEntity.class */
public final class GifEntity extends ImageEntity {
    public static final C4196a CREATOR = new C4196a(null);

    /* renamed from: A */
    public final String f13309A;

    /* renamed from: B */
    public final int f13310B;

    /* renamed from: C */
    public final boolean f13311C;

    /* renamed from: D */
    public final boolean f13312D;

    /* renamed from: com.truecaller.messaging.data.types.GifEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/GifEntity$a.class */
    public static final class C4196a implements Parcelable.Creator<GifEntity> {
        public C4196a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public GifEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new GifEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public GifEntity[] newArray(int i) {
            return new GifEntity[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GifEntity(long r14, java.lang.String r16, int r17, java.lang.String r18, int r19, int r20, boolean r21, long r22, android.net.Uri r24, java.lang.String r25) {
        /*
            r13 = this;
            r0 = r16
            java.lang.String r1 = "type"
            s1.z.c.l.e(r0, r1)
            r0 = r18
            java.lang.String r1 = "content"
            s1.z.c.l.e(r0, r1)
            r0 = r24
            java.lang.String r1 = "thumbnailUri"
            s1.z.c.l.e(r0, r1)
            r0 = r25
            java.lang.String r1 = "source"
            s1.z.c.l.e(r0, r1)
            r0 = r18
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r18 = r0
            r0 = r18
            java.lang.String r1 = "Uri.parse(content)"
            s1.z.c.l.d(r0, r1)
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r20
            r7 = r22
            r8 = r21
            r9 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = r13
            r1 = 3
            r0.f13310B = r1
            r0 = r13
            r1 = 1
            r0.f13311C = r1
            r0 = r13
            java.lang.String r0 = r0.f13307b
            r16 = r0
            r0 = r16
            java.lang.String r1 = "contentType"
            s1.z.c.l.e(r0, r1)
            r0 = r13
            r1 = 1
            java.lang.String r2 = "tenor/gif"
            r3 = r16
            r4 = 1
            boolean r2 = s1.f0.r.n(r2, r3, r4)
            r1 = r1 ^ r2
            r0.f13312D = r1
            r0 = r13
            r1 = r25
            r0.f13309A = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.GifEntity.<init>(long, java.lang.String, int, java.lang.String, int, int, boolean, long, android.net.Uri, java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    public /* synthetic */ GifEntity(long j, String str, int i, String str2, int i2, int i3, boolean z, long j2, Uri uri, String str3, int i4) {
        this((i4 & 1) != 0 ? -1 : j, str, (i4 & 4) != 0 ? 0 : i, str2, i2, i3, (i4 & 64) != 0 ? false : z, j2, uri, str3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GifEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "parcel");
        this.f13310B = 3;
        this.f13311C = true;
        String str = this.f13307b;
        l.e(str, "contentType");
        this.f13312D = true ^ r.n("tenor/gif", str, true);
        this.f13309A = String.valueOf(parcel.readString());
    }

    @Override // com.truecaller.messaging.data.types.ImageEntity, com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        super.mo34994c(contentValues);
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(this.f13310B));
        contentValues.put("entity_info7", this.f13309A);
    }

    @Override // com.truecaller.messaging.data.types.ImageEntity, com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13310B;
    }

    @Override // com.truecaller.messaging.data.types.ImageEntity, com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.ImageEntity, com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        return super.equals(obj) && (obj instanceof GifEntity) && l.a(((GifEntity) obj).f13309A, this.f13309A);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: f */
    public boolean mo35001f() {
        return this.f13312D;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: h */
    public boolean mo34999h() {
        return this.f13311C;
    }

    @Override // com.truecaller.messaging.data.types.ImageEntity, com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        return this.f13309A.hashCode() + (super.hashCode() * 31);
    }

    @Override // com.truecaller.messaging.data.types.ImageEntity, com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f13309A);
    }

    /* renamed from: y */
    public final String m35030y() {
        return this.f13309A;
    }
}
