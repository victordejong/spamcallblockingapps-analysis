package android.net;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/net/ProxyProperties.class */
public class ProxyProperties implements Parcelable {
    public static final Parcelable.Creator<ProxyProperties> CREATOR = new C0008a();

    /* renamed from: b */
    private String f28b;

    /* renamed from: c */
    private int f29c;

    /* renamed from: d */
    private String f30d;

    /* renamed from: e */
    private String[] f31e;

    /* renamed from: android.net.ProxyProperties$a */
    /* loaded from: classes-dex2jar.jar:android/net/ProxyProperties$a.class */
    static final class C0008a implements Parcelable.Creator<ProxyProperties> {
        C0008a() {
        }

        /* renamed from: a */
        public ProxyProperties createFromParcel(Parcel parcel) {
            int i;
            String str;
            if (parcel.readByte() == 1) {
                str = parcel.readString();
                i = parcel.readInt();
            } else {
                str = null;
                i = 0;
            }
            return new ProxyProperties(str, i, parcel.readString(), null, null);
        }

        /* renamed from: b */
        public ProxyProperties[] newArray(int i) {
            return new ProxyProperties[i];
        }
    }

    private ProxyProperties(String str, int i, String str2, String[] strArr) {
        this.f28b = str;
        this.f29c = i;
        this.f30d = str2;
        this.f31e = strArr;
    }

    /* synthetic */ ProxyProperties(String str, int i, String str2, String[] strArr, C0008a aVar) {
        this(str, i, str2, strArr);
    }

    /* renamed from: a */
    public String m15209a() {
        return this.f30d;
    }

    /* renamed from: b */
    public String m15208b() {
        return this.f28b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ProxyProperties)) {
            return false;
        }
        ProxyProperties proxyProperties = (ProxyProperties) obj;
        String str = this.f30d;
        if (str != null && !str.equals(proxyProperties.m15209a())) {
            return false;
        }
        if (this.f28b != null && proxyProperties.m15208b() != null && !this.f28b.equals(proxyProperties.m15208b())) {
            return false;
        }
        String str2 = this.f28b;
        if (str2 == null || proxyProperties.f28b != null) {
            return (str2 != null || proxyProperties.f28b == null) && this.f29c == proxyProperties.f29c;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f28b;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f30d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i + this.f29c;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.f28b != null) {
            sb.append("[");
            sb.append(this.f28b);
            sb.append("] ");
            sb.append(Integer.toString(this.f29c));
            if (this.f30d != null) {
                sb.append(" xl=");
                str = this.f30d;
            }
            return sb.toString();
        }
        str = "[ProxyProperties.mHost == null]";
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f28b != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f28b);
            parcel.writeInt(this.f29c);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeString(this.f30d);
        parcel.writeStringArray(this.f31e);
    }
}
