package com.truecaller.messaging.transport.status;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.TransportInfo;
import s1.z.c.l;
import w3.b.a.b;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/status/StatusTransportInfo.class */
public final class StatusTransportInfo implements TransportInfo {
    public static final Parcelable.Creator<StatusTransportInfo> CREATOR = new C4267a();

    /* renamed from: a */
    public final long f13887a;

    /* renamed from: b */
    public final String f13888b;

    /* renamed from: com.truecaller.messaging.transport.status.StatusTransportInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/status/StatusTransportInfo$a.class */
    public static final class C4267a implements Parcelable.Creator<StatusTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public StatusTransportInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new StatusTransportInfo(parcel.readLong(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public StatusTransportInfo[] newArray(int i) {
            return new StatusTransportInfo[i];
        }
    }

    public StatusTransportInfo(long j, String str) {
        l.e(str, "rawId");
        this.f13887a = j;
        this.f13888b = str;
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
        return this.f13888b;
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
        return -1L;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13887a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13887a);
        parcel.writeString(this.f13888b);
    }
}
