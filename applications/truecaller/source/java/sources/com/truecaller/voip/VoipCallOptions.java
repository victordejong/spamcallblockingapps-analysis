package com.truecaller.voip;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipCallOptions.class */
public final class VoipCallOptions implements Parcelable {
    public static final Parcelable.Creator<VoipCallOptions> CREATOR = new C4787a();

    /* renamed from: a */
    public final long f16264a;

    /* renamed from: b */
    public final long f16265b;

    /* renamed from: com.truecaller.voip.VoipCallOptions$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipCallOptions$a.class */
    public static final class C4787a implements Parcelable.Creator<VoipCallOptions> {
        @Override // android.os.Parcelable.Creator
        public VoipCallOptions createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VoipCallOptions(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public VoipCallOptions[] newArray(int i) {
            return new VoipCallOptions[i];
        }
    }

    public VoipCallOptions() {
        this(0L, 0L, 3);
    }

    public VoipCallOptions(long j, long j2) {
        this.f16264a = j;
        this.f16265b = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public /* synthetic */ VoipCallOptions(long j, long j2, int i) {
        this((i & 1) != 0 ? 0 : j, (i & 2) != 0 ? 0 : j2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipCallOptions)) {
                return false;
            }
            VoipCallOptions voipCallOptions = (VoipCallOptions) obj;
            return this.f16264a == voipCallOptions.f16264a && this.f16265b == voipCallOptions.f16265b;
        }
        return true;
    }

    public int hashCode() {
        return (C4876d.m34274a(this.f16264a) * 31) + C4876d.m34274a(this.f16265b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipCallOptions(waitForOkInternetTimeout=");
        m8728C.append(this.f16264a);
        m8728C.append(", waitForIdleNativeCallTimeout=");
        return C22128a.m8693K2(m8728C, this.f16265b, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f16264a);
        parcel.writeLong(this.f16265b);
    }
}
