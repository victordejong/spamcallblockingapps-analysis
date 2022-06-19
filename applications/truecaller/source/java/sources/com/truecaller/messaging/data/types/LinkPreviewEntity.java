package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/LinkPreviewEntity.class */
public class LinkPreviewEntity extends BinaryEntity {
    public static final Parcelable.Creator<LinkPreviewEntity> CREATOR = new C4205a();

    /* renamed from: A */
    public final String f13352A;

    /* renamed from: B */
    public final int f13353B;

    /* renamed from: C */
    public final boolean f13354C;

    /* renamed from: v */
    public final int f13355v;

    /* renamed from: w */
    public final int f13356w;

    /* renamed from: x */
    public final Uri f13357x;

    /* renamed from: y */
    public final String f13358y;

    /* renamed from: z */
    public final String f13359z;

    /* renamed from: com.truecaller.messaging.data.types.LinkPreviewEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/LinkPreviewEntity$a.class */
    public static final class C4205a implements Parcelable.Creator<LinkPreviewEntity> {
        @Override // android.os.Parcelable.Creator
        public LinkPreviewEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new LinkPreviewEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LinkPreviewEntity[] newArray(int i) {
            return new LinkPreviewEntity[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LinkPreviewEntity(long r13, java.lang.String r15, int r16, int r17, int r18, long r19, android.net.Uri r21, java.lang.String r22, java.lang.String r23, java.lang.String r24) {
        /*
            r12 = this;
            r0 = r15
            java.lang.String r1 = "type"
            s1.z.c.l.e(r0, r1)
            r0 = r22
            java.lang.String r1 = "title"
            s1.z.c.l.e(r0, r1)
            r0 = r23
            java.lang.String r1 = "description"
            s1.z.c.l.e(r0, r1)
            r0 = r24
            java.lang.String r1 = "url"
            s1.z.c.l.e(r0, r1)
            java.lang.String r0 = ""
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r25 = r0
            r0 = r25
            java.lang.String r1 = "Uri.parse(\"\")"
            s1.z.c.l.d(r0, r1)
            r0 = r12
            r1 = r13
            r2 = r15
            r3 = r16
            r4 = r25
            r5 = r19
            r6 = 0
            r7 = 0
            r8 = 64
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = r12
            r1 = 7
            r0.f13353B = r1
            r0 = r12
            r1 = 1
            r0.f13354C = r1
            r0 = r12
            r1 = r17
            r0.f13355v = r1
            r0 = r12
            r1 = r18
            r0.f13356w = r1
            r0 = r12
            r1 = r21
            r0.f13357x = r1
            r0 = r12
            r1 = r22
            r0.f13358y = r1
            r0 = r12
            r1 = r23
            r0.f13359z = r1
            r0 = r12
            r1 = r24
            r0.f13352A = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.LinkPreviewEntity.<init>(long, java.lang.String, int, int, int, long, android.net.Uri, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    public /* synthetic */ LinkPreviewEntity(long j, String str, int i, int i2, int i3, long j2, Uri uri, String str2, String str3, String str4, int i4) {
        this((i4 & 1) != 0 ? -1 : j, str, (i4 & 4) != 0 ? 0 : i, (i4 & 8) != 0 ? -1 : i2, (i4 & 16) != 0 ? -1 : i3, (i4 & 32) != 0 ? -1 : j2, (i4 & 64) != 0 ? null : uri, str2, str3, str4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkPreviewEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13353B = 7;
        this.f13354C = true;
        this.f13355v = parcel.readInt();
        this.f13356w = parcel.readInt();
        this.f13357x = Uri.parse(parcel.readString());
        String readString = parcel.readString();
        this.f13358y = readString == null ? "" : readString;
        String readString2 = parcel.readString();
        this.f13359z = readString2 == null ? "" : readString2;
        String readString3 = parcel.readString();
        this.f13352A = readString3 != null ? readString3 : "";
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", Integer.valueOf(this.f13353B));
        contentValues.put("entity_info1", this.f13173i.toString());
        contentValues.put("entity_info2", Integer.valueOf(this.f13355v));
        contentValues.put("entity_info3", Integer.valueOf(this.f13356w));
        Uri uri = this.f13357x;
        String uri2 = uri != null ? uri.toString() : null;
        if (uri2 == null) {
            uri2 = "";
        }
        contentValues.put("entity_info5", uri2);
        contentValues.put("entity_info7", this.f13352A);
        contentValues.put("entity_info4", this.f13358y);
        contentValues.put("entity_info6", this.f13359z);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13353B;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        boolean z;
        if (super.equals(obj) && (obj instanceof LinkPreviewEntity)) {
            LinkPreviewEntity linkPreviewEntity = (LinkPreviewEntity) obj;
            if (l.a(linkPreviewEntity.f13358y, this.f13358y) && l.a(linkPreviewEntity.f13359z, this.f13359z) && l.a(linkPreviewEntity.f13357x, this.f13357x) && l.a(linkPreviewEntity.f13352A, this.f13352A)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f13359z, C22128a.m8579q2(this.f13358y, super.hashCode() * 31, 31), 31);
        Uri uri = this.f13357x;
        return this.f13352A.hashCode() + ((m8579q2 + (uri != null ? uri.hashCode() : 0)) * 31);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: n */
    public boolean mo34997n() {
        return this.f13354C;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f13355v);
        parcel.writeInt(this.f13356w);
        Uri uri = this.f13357x;
        String uri2 = uri != null ? uri.toString() : null;
        if (uri2 == null) {
            uri2 = "";
        }
        parcel.writeString(uri2);
        parcel.writeString(this.f13358y);
        parcel.writeString(this.f13359z);
        parcel.writeString(this.f13352A);
    }
}
