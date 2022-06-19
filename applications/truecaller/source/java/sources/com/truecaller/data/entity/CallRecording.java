package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/CallRecording.class */
public final class CallRecording implements Parcelable {
    public static final Parcelable.Creator<CallRecording> CREATOR = new C3821a();

    /* renamed from: a */
    public final long f11503a;

    /* renamed from: b */
    public final String f11504b;

    /* renamed from: c */
    public final String f11505c;

    /* renamed from: com.truecaller.data.entity.CallRecording$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/CallRecording$a.class */
    public static final class C3821a implements Parcelable.Creator<CallRecording> {
        @Override // android.os.Parcelable.Creator
        public CallRecording createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new CallRecording(parcel.readLong(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public CallRecording[] newArray(int i) {
            return new CallRecording[i];
        }
    }

    public CallRecording(long j, String str, String str2) {
        l.e(str2, "absolutePath");
        this.f11503a = j;
        this.f11504b = str;
        this.f11505c = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallRecording)) {
                return false;
            }
            CallRecording callRecording = (CallRecording) obj;
            return this.f11503a == callRecording.f11503a && l.a(this.f11504b, callRecording.f11504b) && l.a(this.f11505c, callRecording.f11505c);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f11503a);
        String str = this.f11504b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f11505c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((m34274a * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallRecording(rowId=");
        m8728C.append(this.f11503a);
        m8728C.append(", historyEventId=");
        m8728C.append(this.f11504b);
        m8728C.append(", absolutePath=");
        return C22128a.m8618h(m8728C, this.f11505c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f11503a);
        parcel.writeString(this.f11504b);
        parcel.writeString(this.f11505c);
    }
}
