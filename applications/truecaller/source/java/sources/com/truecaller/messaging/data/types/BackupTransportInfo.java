package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
import w3.b.a.b;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/BackupTransportInfo.class */
public final class BackupTransportInfo implements TransportInfo {
    public static final Parcelable.Creator<BackupTransportInfo> CREATOR = new C4188a();

    /* renamed from: a */
    public final long f13172a;

    /* renamed from: com.truecaller.messaging.data.types.BackupTransportInfo$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/BackupTransportInfo$a.class */
    public static final class C4188a implements Parcelable.Creator<BackupTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public BackupTransportInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new BackupTransportInfo(parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public BackupTransportInfo[] newArray(int i) {
            return new BackupTransportInfo[i];
        }
    }

    public BackupTransportInfo(long j) {
        this.f13172a = j;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: E */
    public int mo34885E() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: J0 */
    public boolean mo34884J0() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: L1 */
    public int mo34883L1() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: T1 */
    public String mo34882T1(b bVar) {
        l.e(bVar, "date");
        return Message.m35022d(this.f13172a, bVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: k0 */
    public long mo34881k0() {
        return 0L;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: m1 */
    public long mo34880m1() {
        return 0L;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13172a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13172a);
    }
}
