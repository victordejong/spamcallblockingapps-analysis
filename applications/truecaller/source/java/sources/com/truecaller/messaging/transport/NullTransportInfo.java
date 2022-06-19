package com.truecaller.messaging.transport;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.TransportInfo;
import p193e.p1432d.p1439c.p1440a.C22128a;
import w3.b.a.b;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/NullTransportInfo.class */
public class NullTransportInfo implements TransportInfo {

    /* renamed from: a */
    public final long f13678a;

    /* renamed from: b */
    public static final NullTransportInfo f13677b = new NullTransportInfo();
    public static final Parcelable.Creator<NullTransportInfo> CREATOR = new C4245a();

    /* renamed from: com.truecaller.messaging.transport.NullTransportInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/NullTransportInfo$a.class */
    public class C4245a implements Parcelable.Creator<NullTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public NullTransportInfo createFromParcel(Parcel parcel) {
            return new NullTransportInfo(parcel, (C4245a) null);
        }

        @Override // android.os.Parcelable.Creator
        public NullTransportInfo[] newArray(int i) {
            return new NullTransportInfo[i];
        }
    }

    /* renamed from: com.truecaller.messaging.transport.NullTransportInfo$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/NullTransportInfo$b.class */
    public static class C4246b {

        /* renamed from: a */
        public long f13679a;

        /* renamed from: a */
        public NullTransportInfo m34914a() {
            return new NullTransportInfo(this, (C4245a) null);
        }
    }

    public NullTransportInfo() {
        this.f13678a = -1L;
    }

    public NullTransportInfo(Parcel parcel, C4245a c4245a) {
        this.f13678a = parcel.readLong();
    }

    public NullTransportInfo(C4246b c4246b, C4245a c4245a) {
        this.f13678a = c4246b.f13679a;
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
        return "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || NullTransportInfo.class != obj.getClass()) {
            return false;
        }
        if (this.f13678a != ((NullTransportInfo) obj).f13678a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f13678a;
        return (int) (j ^ (j >>> 32));
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: k0 */
    public long mo34881k0() {
        return this.f13678a;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: m1 */
    public long mo34880m1() {
        return -1L;
    }

    public String toString() {
        return C22128a.m8693K2(C22128a.m8728C("{ type : null, messageId: "), this.f13678a, " }");
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13678a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13678a);
    }
}
