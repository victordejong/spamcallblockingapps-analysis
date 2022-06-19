package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.data.entity.MessageType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/CallContextMessage.class */
public final class CallContextMessage implements Parcelable {
    public static final Parcelable.Creator<CallContextMessage> CREATOR = new C3820a();

    /* renamed from: a */
    public final String f11496a;

    /* renamed from: b */
    public final String f11497b;

    /* renamed from: c */
    public final String f11498c;

    /* renamed from: d */
    public final FeatureType f11499d;

    /* renamed from: e */
    public final MessageType f11500e;

    /* renamed from: f */
    public final String f11501f;

    /* renamed from: g */
    public boolean f11502g;

    /* renamed from: com.truecaller.data.entity.CallContextMessage$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/CallContextMessage$a.class */
    public static final class C3820a implements Parcelable.Creator<CallContextMessage> {
        @Override // android.os.Parcelable.Creator
        public CallContextMessage createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new CallContextMessage(parcel.readString(), parcel.readString(), parcel.readString(), (FeatureType) Enum.valueOf(FeatureType.class, parcel.readString()), (MessageType) parcel.readParcelable(CallContextMessage.class.getClassLoader()), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public CallContextMessage[] newArray(int i) {
            return new CallContextMessage[i];
        }
    }

    public CallContextMessage(String str, String str2, String str3, FeatureType featureType, MessageType messageType, String str4, boolean z) {
        l.e(str, "id");
        l.e(str2, "number");
        l.e(str3, "message");
        l.e(featureType, "featureType");
        l.e(messageType, "messageType");
        this.f11496a = str;
        this.f11497b = str2;
        this.f11498c = str3;
        this.f11499d = featureType;
        this.f11500e = messageType;
        this.f11501f = str4;
        this.f11502g = z;
    }

    public /* synthetic */ CallContextMessage(String str, String str2, String str3, FeatureType featureType, MessageType messageType, String str4, boolean z, int i) {
        this(str, str2, str3, (i & 8) != 0 ? FeatureType.UNDEFINED : featureType, (i & 16) != 0 ? MessageType.Undefined.f11561b : messageType, str4, (i & 64) != 0 ? false : z);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallContextMessage)) {
                return false;
            }
            CallContextMessage callContextMessage = (CallContextMessage) obj;
            return l.a(this.f11496a, callContextMessage.f11496a) && l.a(this.f11497b, callContextMessage.f11497b) && l.a(this.f11498c, callContextMessage.f11498c) && l.a(this.f11499d, callContextMessage.f11499d) && l.a(this.f11500e, callContextMessage.f11500e) && l.a(this.f11501f, callContextMessage.f11501f) && this.f11502g == callContextMessage.f11502g;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f11496a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f11497b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f11498c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        FeatureType featureType = this.f11499d;
        int hashCode4 = featureType != null ? featureType.hashCode() : 0;
        MessageType messageType = this.f11500e;
        int hashCode5 = messageType != null ? messageType.hashCode() : 0;
        String str4 = this.f11501f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        boolean z = this.f11502g;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallContextMessage(id=");
        m8728C.append(this.f11496a);
        m8728C.append(", number=");
        m8728C.append(this.f11497b);
        m8728C.append(", message=");
        m8728C.append(this.f11498c);
        m8728C.append(", featureType=");
        m8728C.append(this.f11499d);
        m8728C.append(", messageType=");
        m8728C.append(this.f11500e);
        m8728C.append(", analyticsContext=");
        m8728C.append(this.f11501f);
        m8728C.append(", isShown=");
        return C22128a.m8590o(m8728C, this.f11502g, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11496a);
        parcel.writeString(this.f11497b);
        parcel.writeString(this.f11498c);
        parcel.writeString(this.f11499d.name());
        parcel.writeParcelable(this.f11500e, i);
        parcel.writeString(this.f11501f);
        parcel.writeInt(this.f11502g ? 1 : 0);
    }
}
