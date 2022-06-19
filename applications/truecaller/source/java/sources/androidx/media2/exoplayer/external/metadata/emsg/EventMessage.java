package androidx.media2.exoplayer.external.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {

    /* renamed from: a */
    public final String f994a;

    /* renamed from: b */
    public final String f995b;

    /* renamed from: c */
    public final long f996c;

    /* renamed from: d */
    public final long f997d;

    /* renamed from: e */
    public final byte[] f998e;

    /* renamed from: f */
    public int f999f;

    /* renamed from: g */
    public static final Format f992g = Format.m42840m(null, "application/id3", RecyclerView.FOREVER_NS);

    /* renamed from: h */
    public static final Format f993h = Format.m42840m(null, "application/x-scte35", RecyclerView.FOREVER_NS);
    public static final Parcelable.Creator<EventMessage> CREATOR = new C0240a();

    /* renamed from: androidx.media2.exoplayer.external.metadata.emsg.EventMessage$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/EventMessage$a.class */
    public class C0240a implements Parcelable.Creator<EventMessage> {
        @Override // android.os.Parcelable.Creator
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public EventMessage[] newArray(int i) {
            return new EventMessage[i];
        }
    }

    public EventMessage(Parcel parcel) {
        String readString = parcel.readString();
        int i = C27445x.f77229a;
        this.f994a = readString;
        this.f995b = parcel.readString();
        this.f996c = parcel.readLong();
        this.f997d = parcel.readLong();
        this.f998e = parcel.createByteArray();
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.f994a = str;
        this.f995b = str2;
        this.f996c = j;
        this.f997d = j2;
        this.f998e = bArr;
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
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        if (this.f996c != eventMessage.f996c || this.f997d != eventMessage.f997d || !C27445x.m286a(this.f994a, eventMessage.f994a) || !C27445x.m286a(this.f995b, eventMessage.f995b) || !Arrays.equals(this.f998e, eventMessage.f998e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f999f == 0) {
            String str = this.f994a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f995b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            long j = this.f996c;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f997d;
            this.f999f = Arrays.hashCode(this.f998e) + ((((((((527 + hashCode) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        }
        return this.f999f;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo42814j() {
        return mo42813q() != null ? this.f998e : null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo42813q() {
        String str = this.f994a;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals("urn:scte:scte35:2014:bin")) {
                    z = false;
                    break;
                }
                break;
            case -795945609:
                if (str.equals("https://aomedia.org/emsg/ID3")) {
                    z = true;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return f993h;
            case true:
            case true:
                return f992g;
            default:
                return null;
        }
    }

    public String toString() {
        String str = this.f994a;
        long j = this.f997d;
        long j2 = this.f996c;
        String str2 = this.f995b;
        StringBuilder sb = new StringBuilder(C22128a.m8623f2(str2, C22128a.m8623f2(str, 79)));
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        C22128a.m8675Q0(sb, ", durationMs=", j2, ", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f994a);
        parcel.writeString(this.f995b);
        parcel.writeLong(this.f996c);
        parcel.writeLong(this.f997d);
        parcel.writeByteArray(this.f998e);
    }
}
