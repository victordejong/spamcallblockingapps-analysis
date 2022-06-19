package com.truecaller.voip;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipCallHistory.class */
public final class VoipCallHistory implements Parcelable {
    public static final Parcelable.Creator<VoipCallHistory> CREATOR = new C4786a();

    /* renamed from: a */
    public final long f16261a;

    /* renamed from: b */
    public final VoipGroupCallHistoryStatus f16262b;

    /* renamed from: c */
    public final long f16263c;

    /* renamed from: com.truecaller.voip.VoipCallHistory$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/VoipCallHistory$a.class */
    public static final class C4786a implements Parcelable.Creator<VoipCallHistory> {
        @Override // android.os.Parcelable.Creator
        public VoipCallHistory createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VoipCallHistory(parcel.readLong(), (VoipGroupCallHistoryStatus) Enum.valueOf(VoipGroupCallHistoryStatus.class, parcel.readString()), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public VoipCallHistory[] newArray(int i) {
            return new VoipCallHistory[i];
        }
    }

    public VoipCallHistory(long j, VoipGroupCallHistoryStatus voipGroupCallHistoryStatus, long j2) {
        l.e(voipGroupCallHistoryStatus, "groupCallStatus");
        this.f16261a = j;
        this.f16262b = voipGroupCallHistoryStatus;
        this.f16263c = j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipCallHistory)) {
                return false;
            }
            VoipCallHistory voipCallHistory = (VoipCallHistory) obj;
            return this.f16261a == voipCallHistory.f16261a && l.a(this.f16262b, voipCallHistory.f16262b) && this.f16263c == voipCallHistory.f16263c;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f16261a);
        VoipGroupCallHistoryStatus voipGroupCallHistoryStatus = this.f16262b;
        return (((m34274a * 31) + (voipGroupCallHistoryStatus != null ? voipGroupCallHistoryStatus.hashCode() : 0)) * 31) + C4876d.m34274a(this.f16263c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipCallHistory(historyId=");
        m8728C.append(this.f16261a);
        m8728C.append(", groupCallStatus=");
        m8728C.append(this.f16262b);
        m8728C.append(", callTimeStamp=");
        return C22128a.m8693K2(m8728C, this.f16263c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f16261a);
        parcel.writeString(this.f16262b.name());
        parcel.writeLong(this.f16263c);
    }
}
