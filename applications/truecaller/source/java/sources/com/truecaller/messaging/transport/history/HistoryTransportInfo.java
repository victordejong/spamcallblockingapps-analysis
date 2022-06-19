package com.truecaller.messaging.transport.history;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.TransportInfo;
import s1.z.c.l;
import w3.b.a.b;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/history/HistoryTransportInfo.class */
public final class HistoryTransportInfo implements TransportInfo {
    public static final Parcelable.Creator<HistoryTransportInfo> CREATOR = new C4252a();

    /* renamed from: a */
    public final long f13702a;

    /* renamed from: b */
    public final long f13703b;

    /* renamed from: c */
    public final int f13704c;

    /* renamed from: d */
    public final int f13705d;

    /* renamed from: e */
    public final String f13706e;

    /* renamed from: f */
    public final int f13707f;

    /* renamed from: g */
    public final String f13708g;

    /* renamed from: com.truecaller.messaging.transport.history.HistoryTransportInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/history/HistoryTransportInfo$a.class */
    public static final class C4252a implements Parcelable.Creator<HistoryTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public HistoryTransportInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new HistoryTransportInfo(parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public HistoryTransportInfo[] newArray(int i) {
            return new HistoryTransportInfo[i];
        }
    }

    public HistoryTransportInfo(long j, long j2, int i, int i2, String str, int i3, String str2) {
        l.e(str2, "filterSource");
        this.f13702a = j;
        this.f13703b = j2;
        this.f13704c = i;
        this.f13705d = i2;
        this.f13706e = str;
        this.f13707f = i3;
        this.f13708g = str2;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: E */
    public int mo34885E() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: J0 */
    public boolean mo34884J0() {
        return true;
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
        return String.valueOf(this.f13703b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: k0 */
    public long mo34881k0() {
        return this.f13703b;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: m1 */
    public long mo34880m1() {
        return -1L;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13702a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13702a);
        parcel.writeLong(this.f13703b);
        parcel.writeInt(this.f13704c);
        parcel.writeInt(this.f13705d);
        parcel.writeString(this.f13706e);
        parcel.writeInt(this.f13707f);
        parcel.writeString(this.f13708g);
    }
}
