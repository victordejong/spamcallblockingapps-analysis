package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.Entity;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/BinaryEntity.class */
public class BinaryEntity extends Entity {
    public static final Parcelable.Creator<BinaryEntity> CREATOR = new C4189a();

    /* renamed from: i */
    public final Uri f13173i;

    /* renamed from: j */
    public final boolean f13174j;

    /* renamed from: k */
    public final long f13175k;

    /* renamed from: l */
    public int f13176l;

    /* renamed from: m */
    public final int f13177m;

    /* renamed from: n */
    public final boolean f13178n;

    /* renamed from: o */
    public final boolean f13179o;

    /* renamed from: p */
    public final boolean f13180p;

    /* renamed from: q */
    public final boolean f13181q;

    /* renamed from: r */
    public final boolean f13182r;

    /* renamed from: s */
    public final boolean f13183s;

    /* renamed from: t */
    public final boolean f13184t;

    /* renamed from: u */
    public final boolean f13185u;

    /* renamed from: com.truecaller.messaging.data.types.BinaryEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/BinaryEntity$a.class */
    public static final class C4189a implements Parcelable.Creator<BinaryEntity> {
        @Override // android.os.Parcelable.Creator
        public BinaryEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new BinaryEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BinaryEntity[] newArray(int i) {
            return new BinaryEntity[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BinaryEntity(long r7, java.lang.String r9, int r10, android.net.Uri r11, long r12, boolean r14, int r15, int r16) {
        /*
            r6 = this;
            r0 = r16
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto Lb
            r0 = -1
            r7 = r0
        Lb:
            r0 = r16
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L15
            r0 = 0
            r10 = r0
        L15:
            r0 = r16
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L20
            r0 = -1
            r15 = r0
        L20:
            r0 = r9
            java.lang.String r1 = "type"
            s1.z.c.l.e(r0, r1)
            r0 = r11
            java.lang.String r1 = "content"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = r9
            r3 = r10
            r0.<init>(r1, r2, r3)
            r0 = r6
            r1 = 8
            r0.f13177m = r1
            r0 = r6
            r1 = 1
            r0.f13178n = r1
            com.truecaller.messaging.data.types.Entity$a r0 = com.truecaller.messaging.data.types.Entity.f13305h
            r9 = r0
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35037f(r2)
            r0.f13179o = r1
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35031l(r2)
            r0.f13180p = r1
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35032k(r2)
            r0.f13181q = r1
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35040c(r2)
            r0.f13182r = r1
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35038e(r2)
            r0.f13183s = r1
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35039d(r2)
            r0.f13184t = r1
            r0 = r6
            r1 = r9
            r2 = r6
            java.lang.String r2 = r2.f13307b
            boolean r1 = r1.m35035h(r2)
            r0.f13185u = r1
            r0 = r6
            r1 = r11
            r0.f13173i = r1
            r0 = r6
            r1 = r14
            r0.f13174j = r1
            r0 = r6
            r1 = r12
            r0.f13175k = r1
            r0 = r6
            r1 = r15
            r0.f13176l = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.data.types.BinaryEntity.<init>(long, java.lang.String, int, android.net.Uri, long, boolean, int, int):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinaryEntity(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
        this.f13177m = 8;
        boolean z = true;
        this.f13178n = true;
        Entity.C4195a c4195a = Entity.f13305h;
        this.f13179o = c4195a.m35037f(this.f13307b);
        this.f13180p = c4195a.m35031l(this.f13307b);
        this.f13181q = c4195a.m35032k(this.f13307b);
        this.f13182r = c4195a.m35040c(this.f13307b);
        this.f13183s = c4195a.m35038e(this.f13307b);
        this.f13184t = c4195a.m35039d(this.f13307b);
        this.f13185u = c4195a.m35035h(this.f13307b);
        Uri parse = Uri.parse(parcel.readString());
        l.d(parse, "Uri.parse(source.readString())");
        this.f13173i = parse;
        this.f13174j = parcel.readInt() != 1 ? false : z;
        this.f13175k = parcel.readLong();
        this.f13176l = parcel.readInt();
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_info2", Integer.valueOf(this.f13308c));
        contentValues.put("entity_info1", this.f13173i.toString());
        contentValues.put("entity_info3", Long.valueOf(this.f13175k));
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return this.f13177m;
    }

    @Override // com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: e */
    public boolean mo34896e() {
        return this.f13182r;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        return super.equals(obj) && (obj instanceof BinaryEntity) && l.a(this.f13173i, ((BinaryEntity) obj).f13173i);
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: f */
    public boolean mo35001f() {
        return this.f13178n;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: g */
    public boolean mo35000g() {
        return this.f13184t;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: h */
    public boolean mo34999h() {
        return this.f13183s;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    public int hashCode() {
        return this.f13173i.hashCode() + (super.hashCode() * 31);
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: k */
    public boolean mo34998k() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: l */
    public boolean mo34895l() {
        return this.f13179o;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: n */
    public boolean mo34997n() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: o */
    public boolean mo34996o() {
        return this.f13185u;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: r */
    public boolean mo34894r() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: t */
    public boolean mo34893t() {
        return this.f13181q;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: w */
    public boolean mo34892w() {
        return this.f13180p;
    }

    @Override // com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f13173i.toString());
        parcel.writeInt(this.f13174j ? 1 : 0);
        parcel.writeLong(this.f13175k);
        parcel.writeInt(this.f13176l);
    }
}
