package com.truecaller.messaging.transport.sms;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import p193e.p1432d.p1439c.p1440a.C22128a;
import w3.b.a.b;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/SmsTransportInfo.class */
public class SmsTransportInfo implements TransportInfo {
    public static final Parcelable.Creator<SmsTransportInfo> CREATOR = new C4265a();

    /* renamed from: a */
    public final long f13863a;

    /* renamed from: b */
    public final long f13864b;

    /* renamed from: c */
    public final int f13865c;

    /* renamed from: d */
    public final long f13866d;

    /* renamed from: e */
    public final Uri f13867e;

    /* renamed from: f */
    public final String f13868f;

    /* renamed from: g */
    public final int f13869g;

    /* renamed from: h */
    public final int f13870h;

    /* renamed from: i */
    public final String f13871i;

    /* renamed from: j */
    public final int f13872j;

    /* renamed from: k */
    public final boolean f13873k;

    /* renamed from: l */
    public final String f13874l;

    /* renamed from: com.truecaller.messaging.transport.sms.SmsTransportInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/SmsTransportInfo$a.class */
    public class C4265a implements Parcelable.Creator<SmsTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public SmsTransportInfo createFromParcel(Parcel parcel) {
            return new SmsTransportInfo(parcel, (C4265a) null);
        }

        @Override // android.os.Parcelable.Creator
        public SmsTransportInfo[] newArray(int i) {
            return new SmsTransportInfo[i];
        }
    }

    /* renamed from: com.truecaller.messaging.transport.sms.SmsTransportInfo$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/SmsTransportInfo$b.class */
    public static class C4266b {

        /* renamed from: a */
        public long f13875a;

        /* renamed from: b */
        public long f13876b;

        /* renamed from: c */
        public int f13877c;

        /* renamed from: d */
        public long f13878d;

        /* renamed from: e */
        public Uri f13879e;

        /* renamed from: f */
        public int f13880f;

        /* renamed from: g */
        public int f13881g;

        /* renamed from: h */
        public String f13882h;

        /* renamed from: i */
        public int f13883i;

        /* renamed from: j */
        public boolean f13884j;

        /* renamed from: k */
        public String f13885k;

        /* renamed from: l */
        public String f13886l;

        public C4266b() {
            this.f13877c = -1;
        }

        public C4266b(SmsTransportInfo smsTransportInfo, C4265a c4265a) {
            this.f13877c = -1;
            this.f13875a = smsTransportInfo.f13863a;
            this.f13876b = smsTransportInfo.f13864b;
            this.f13877c = smsTransportInfo.f13865c;
            this.f13878d = smsTransportInfo.f13866d;
            this.f13879e = smsTransportInfo.f13867e;
            this.f13880f = smsTransportInfo.f13869g;
            this.f13881g = smsTransportInfo.f13870h;
            this.f13882h = smsTransportInfo.f13871i;
            this.f13883i = smsTransportInfo.f13872j;
            this.f13884j = smsTransportInfo.f13873k;
            this.f13885k = smsTransportInfo.f13868f;
            this.f13886l = smsTransportInfo.f13874l;
        }

        /* renamed from: a */
        public SmsTransportInfo m34886a() {
            return new SmsTransportInfo(this, (C4265a) null);
        }
    }

    public SmsTransportInfo(Parcel parcel, C4265a c4265a) {
        this.f13863a = parcel.readLong();
        this.f13864b = parcel.readLong();
        this.f13865c = parcel.readInt();
        this.f13866d = parcel.readLong();
        String readString = parcel.readString();
        if (TextUtils.isEmpty(readString)) {
            this.f13867e = null;
        } else {
            this.f13867e = Uri.parse(readString);
        }
        this.f13869g = parcel.readInt();
        this.f13870h = parcel.readInt();
        this.f13871i = parcel.readString();
        this.f13868f = parcel.readString();
        this.f13872j = parcel.readInt();
        this.f13873k = parcel.readInt() != 0;
        this.f13874l = parcel.readString();
    }

    public SmsTransportInfo(C4266b c4266b, C4265a c4265a) {
        this.f13863a = c4266b.f13875a;
        this.f13864b = c4266b.f13876b;
        this.f13865c = c4266b.f13877c;
        this.f13866d = c4266b.f13878d;
        this.f13867e = c4266b.f13879e;
        this.f13869g = c4266b.f13880f;
        this.f13870h = c4266b.f13881g;
        this.f13871i = c4266b.f13882h;
        this.f13868f = c4266b.f13885k;
        this.f13872j = c4266b.f13883i;
        this.f13873k = c4266b.f13884j;
        this.f13874l = c4266b.f13886l;
    }

    /* renamed from: a */
    public static int m34888a(int i) {
        if ((i & 1) != 0) {
            if ((i & 8) != 0) {
                return 5;
            }
            if ((i & 4) != 0) {
                return 6;
            }
            return (i & 16) != 0 ? 3 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    public static int m34887b(int i) {
        int i2;
        if (i != 2) {
            i2 = 5;
            if (i != 4) {
                if (i != 5) {
                    i2 = 5;
                    if (i != 6) {
                        i2 = 0;
                    }
                } else {
                    i2 = 9;
                }
            }
        } else {
            i2 = 1;
        }
        return i2;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: E */
    public int mo34885E() {
        int i = this.f13865c;
        if (i != 0) {
            if (i == 32) {
                return 2;
            }
            return i != 64 ? 0 : 1;
        }
        return 3;
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
        return Message.m35022d(this.f13864b, bVar);
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
        if (obj == null || SmsTransportInfo.class != obj.getClass()) {
            return false;
        }
        SmsTransportInfo smsTransportInfo = (SmsTransportInfo) obj;
        if (this.f13863a != smsTransportInfo.f13863a || this.f13864b != smsTransportInfo.f13864b || this.f13865c != smsTransportInfo.f13865c || this.f13869g != smsTransportInfo.f13869g || this.f13870h != smsTransportInfo.f13870h || this.f13872j != smsTransportInfo.f13872j || this.f13873k != smsTransportInfo.f13873k) {
            return false;
        }
        Uri uri = this.f13867e;
        if (uri != null) {
            if (!uri.equals(smsTransportInfo.f13867e)) {
                return false;
            }
        } else if (smsTransportInfo.f13867e != null) {
            return false;
        }
        String str = this.f13868f;
        if (str != null) {
            if (!str.equals(smsTransportInfo.f13868f)) {
                return false;
            }
        } else if (smsTransportInfo.f13868f != null) {
            return false;
        }
        String str2 = this.f13871i;
        String str3 = smsTransportInfo.f13871i;
        if (str2 != null) {
            z = str2.equals(str3);
        } else if (str3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f13863a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f13864b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        int i3 = this.f13865c;
        Uri uri = this.f13867e;
        int i4 = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f13868f;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int i5 = this.f13869g;
        int i6 = this.f13870h;
        String str2 = this.f13871i;
        if (str2 != null) {
            i4 = str2.hashCode();
        }
        return (((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + hashCode) * 31) + hashCode2) * 31) + i5) * 31) + i6) * 31) + i4) * 31) + this.f13872j) * 31) + (this.f13873k ? 1 : 0);
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: k0 */
    public long mo34881k0() {
        return this.f13864b;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: m1 */
    public long mo34880m1() {
        return this.f13866d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{ type : sms, messageId: ");
        m8728C.append(this.f13863a);
        m8728C.append(", uri: \"");
        m8728C.append(String.valueOf(this.f13867e));
        m8728C.append("\" }");
        return m8728C.toString();
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13863a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13863a);
        parcel.writeLong(this.f13864b);
        parcel.writeInt(this.f13865c);
        parcel.writeLong(this.f13866d);
        Uri uri = this.f13867e;
        if (uri == null) {
            parcel.writeString(null);
        } else {
            parcel.writeString(uri.toString());
        }
        parcel.writeInt(this.f13869g);
        parcel.writeInt(this.f13870h);
        parcel.writeString(this.f13871i);
        parcel.writeString(this.f13868f);
        parcel.writeInt(this.f13872j);
        parcel.writeInt(this.f13873k ? 1 : 0);
        parcel.writeString(this.f13874l);
    }
}
