package com.truecaller.messaging.data.types;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/TextEntity.class */
public final class TextEntity extends Entity {
    public static final Parcelable.Creator<TextEntity> CREATOR = new C4213a();

    /* renamed from: i */
    public final String f13465i;

    /* renamed from: j */
    public final boolean f13466j;

    /* renamed from: k */
    public final boolean f13467k = true;

    /* renamed from: com.truecaller.messaging.data.types.TextEntity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/TextEntity$a.class */
    public static final class C4213a implements Parcelable.Creator<TextEntity> {
        @Override // android.os.Parcelable.Creator
        public TextEntity createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new TextEntity(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public TextEntity[] newArray(int i) {
            return new TextEntity[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextEntity(long j, String str, int i, String str2, boolean z) {
        super(j, str, i);
        l.e(str, "type");
        l.e(str2, "content");
        this.f13465i = str2;
        this.f13466j = z;
    }

    public TextEntity(Parcel parcel, f fVar) {
        super(parcel);
        boolean z = true;
        String readString = parcel.readString();
        this.f13465i = readString == null ? "" : readString;
        this.f13466j = parcel.readInt() == 0 ? false : z;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: c */
    public void mo34994c(ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        contentValues.put("type", this.f13307b);
        contentValues.put("entity_type", (Integer) 0);
        contentValues.put("entity_info1", this.f13465i);
        contentValues.put("entity_info2", Boolean.valueOf(this.f13466j));
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: d */
    public int mo34993d() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: e */
    public boolean mo34896e() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.Entity
    public boolean equals(Object obj) {
        boolean z;
        if (super.equals(obj) && (obj instanceof TextEntity)) {
            TextEntity textEntity = (TextEntity) obj;
            if (l.a(this.f13465i, textEntity.f13465i) && this.f13466j == textEntity.f13466j) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
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
    public int hashCode() {
        return C0424b.m42597a(this.f13466j) + C22128a.m8579q2(this.f13465i, super.hashCode() * 31, 31);
    }

    @Override // com.truecaller.messaging.data.types.Entity
    /* renamed from: k */
    public boolean mo34998k() {
        return false;
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
        return this.f13467k;
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
        l.e(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f13465i);
        parcel.writeInt(this.f13466j ? 1 : 0);
    }
}
