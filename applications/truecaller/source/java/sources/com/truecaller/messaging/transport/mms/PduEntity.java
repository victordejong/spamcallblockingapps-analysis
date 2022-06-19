package com.truecaller.messaging.transport.mms;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.BinaryEntity;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/mms/PduEntity.class */
public class PduEntity extends BinaryEntity {
    public static final Parcelable.Creator<PduEntity> CREATOR = new C4262a();

    /* renamed from: A */
    public final String f13844A;

    /* renamed from: v */
    public final int f13845v;

    /* renamed from: w */
    public final String f13846w;

    /* renamed from: x */
    public final String f13847x;

    /* renamed from: y */
    public final String f13848y;

    /* renamed from: z */
    public final String f13849z;

    /* renamed from: com.truecaller.messaging.transport.mms.PduEntity$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/mms/PduEntity$a.class */
    public class C4262a implements Parcelable.Creator<PduEntity> {
        @Override // android.os.Parcelable.Creator
        public PduEntity createFromParcel(Parcel parcel) {
            return new PduEntity(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public PduEntity[] newArray(int i) {
            return new PduEntity[i];
        }
    }

    public PduEntity(Parcel parcel, C4262a c4262a) {
        super(parcel);
        this.f13845v = parcel.readInt();
        this.f13846w = parcel.readString();
        this.f13847x = parcel.readString();
        this.f13848y = parcel.readString();
        this.f13849z = parcel.readString();
        this.f13844A = parcel.readString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PduEntity(p193e.p1432d.p1436b.p1437a.p1438b.C22124o r13, android.net.Uri r14, int r15) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.transport.mms.PduEntity.<init>(e.d.b.a.b.o, android.net.Uri, int):void");
    }

    public PduEntity(String str, Uri uri, int i, int i2, String str2, String str3, String str4, String str5, String str6) {
        super(0L, str, 0, uri, i, false, 0, 69);
        this.f13845v = i2;
        this.f13846w = null;
        this.f13847x = null;
        this.f13848y = null;
        this.f13849z = str5;
        this.f13844A = str6;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: e */
    public boolean mo34896e() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: l */
    public boolean mo34895l() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: r */
    public boolean mo34894r() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: t */
    public boolean mo34893t() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity
    /* renamed from: w */
    public boolean mo34892w() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.BinaryEntity, com.truecaller.messaging.data.types.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f13845v);
        parcel.writeString(this.f13846w);
        parcel.writeString(this.f13847x);
        parcel.writeString(this.f13848y);
        parcel.writeString(this.f13849z);
        parcel.writeString(this.f13844A);
    }
}
