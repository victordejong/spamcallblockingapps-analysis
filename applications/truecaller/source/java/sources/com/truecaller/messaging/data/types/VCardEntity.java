package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/VCardEntity.class */
public final class VCardEntity extends BinaryEntity {
    public static final C4215a CREATOR = new C4215a(null);

    /* renamed from: v */
    public final String f13474v;

    /* renamed from: w */
    public final int f13475w;

    /* renamed from: x */
    public final Uri f13476x;

    /* renamed from: y */
    public final int f13477y = 6;

    /* renamed from: z */
    public final boolean f13478z = true;

    /* renamed from: com.truecaller.messaging.data.types.VCardEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/VCardEntity$a.class */
    public static final class C4215a implements Parcelable.Creator<VCardEntity> {
        public C4215a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public VCardEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new VCardEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public VCardEntity[] newArray(int i) {
            return new VCardEntity[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VCardEntity(long r13, java.lang.String r15, int r16, java.lang.String r17, boolean r18, long r19, java.lang.String r21, int r22, android.net.Uri r23) {
        /*
            r12 = this;
            r0 = r15
            java.lang.String r1 = "type"
            s1.z.c.l.e(r0, r1)
            r0 = r17
            java.lang.String r1 = "content"
            s1.z.c.l.e(r0, r1)
            r0 = r21
            java.lang.String r1 = "contactName"
            s1.z.c.l.e(r0, r1)
            r0 = r17
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r17 = r0
            r0 = r17
            java.lang.String r1 = "Uri.parse(content)"
            s1.z.c.l.d(r0, r1)
            r0 = r12
            r1 = r13
            r2 = r15
            r3 = r16
            r4 = r17
            r5 = r19
            r6 = r18
            r7 = 0
            r8 = 64
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = r12
            r1 = 6
            r0.f13477y = r1
            r0 = r12
            r1 = 1
            r0.f13478z = r1
            r0 = r12
            r1 = r21
            r0.f13474v = r1
            r0 = r12
            r1 = r22
            r0.f13475w = r1
            r0 = r12
            r1 = r23
            r0.f13476x = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.VCardEntity.<init>(long, java.lang.String, int, java.lang.String, boolean, long, java.lang.String, int, android.net.Uri):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VCardEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13474v = String.valueOf(parcel.readString());
        this.f13475w = parcel.readInt();
        this.f13476x = Uri.parse(parcel.readString());
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        super.mo34994c(contentValues);
        contentValues.put("entity_type", Integer.valueOf(this.f13477y));
        contentValues.put("entity_info4", String.valueOf(this.f13476x));
        contentValues.put("entity_info5", this.f13474v);
        contentValues.put("entity_info6", Integer.valueOf(this.f13475w));
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13477y;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        boolean z;
        if (super.equals(obj) && (obj instanceof VCardEntity)) {
            VCardEntity vCardEntity = (VCardEntity) obj;
            if (l.a(vCardEntity.f13474v, this.f13474v) && vCardEntity.f13475w == this.f13475w && l.a(vCardEntity.f13476x, this.f13476x)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f13474v, super.hashCode() * 31, 31);
        int i = this.f13475w;
        Uri uri = this.f13476x;
        return ((m8579q2 + i) * 31) + (uri != null ? uri.hashCode() : 0);
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: t */
    public boolean mo34893t() {
        return this.f13478z;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f13474v);
        parcel.writeInt(this.f13475w);
        parcel.writeString(String.valueOf(this.f13476x));
    }

    /* renamed from: y */
    public final boolean m34995y() {
        Uri uri;
        boolean z = true;
        if (this.f13476x == null || !(!l.a(uri, Uri.EMPTY))) {
            z = false;
        }
        return z;
    }
}
