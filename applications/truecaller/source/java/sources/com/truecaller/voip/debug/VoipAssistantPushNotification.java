package com.truecaller.voip.debug;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/debug/VoipAssistantPushNotification.class */
public final class VoipAssistantPushNotification implements Parcelable {
    public static final Parcelable.Creator<VoipAssistantPushNotification> CREATOR = new C4813a();

    /* renamed from: a */
    public final String f16353a;

    /* renamed from: b */
    public final String f16354b;

    /* renamed from: c */
    public final String f16355c;

    /* renamed from: com.truecaller.voip.debug.VoipAssistantPushNotification$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/debug/VoipAssistantPushNotification$a.class */
    public static final class C4813a implements Parcelable.Creator<VoipAssistantPushNotification> {
        @Override // android.os.Parcelable.Creator
        public VoipAssistantPushNotification createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VoipAssistantPushNotification(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public VoipAssistantPushNotification[] newArray(int i) {
            return new VoipAssistantPushNotification[i];
        }
    }

    public VoipAssistantPushNotification(String str, String str2, String str3) {
        C22128a.m8703I0(str, "number", str2, "screenedText", str3, "assistantIconUrl");
        this.f16353a = str;
        this.f16354b = str2;
        this.f16355c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipAssistantPushNotification)) {
                return false;
            }
            VoipAssistantPushNotification voipAssistantPushNotification = (VoipAssistantPushNotification) obj;
            return l.a(this.f16353a, voipAssistantPushNotification.f16353a) && l.a(this.f16354b, voipAssistantPushNotification.f16354b) && l.a(this.f16355c, voipAssistantPushNotification.f16355c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f16353a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16354b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16355c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipAssistantPushNotification(number=");
        m8728C.append(this.f16353a);
        m8728C.append(", screenedText=");
        m8728C.append(this.f16354b);
        m8728C.append(", assistantIconUrl=");
        return C22128a.m8618h(m8728C, this.f16355c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f16353a);
        parcel.writeString(this.f16354b);
        parcel.writeString(this.f16355c);
    }
}
