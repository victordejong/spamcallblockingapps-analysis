package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {

    /* renamed from: a */
    public final String f4891a;

    /* renamed from: b */
    public final String f4892b;

    /* renamed from: c */
    public final long f4893c;

    /* renamed from: d */
    public final long f4894d;

    /* renamed from: e */
    public final byte[] f4895e;

    /* renamed from: f */
    public int f4896f;

    /* renamed from: g */
    public static final Format f4889g = Format.m39251i(null, "application/id3", RecyclerView.FOREVER_NS);

    /* renamed from: h */
    public static final Format f4890h = Format.m39251i(null, "application/x-scte35", RecyclerView.FOREVER_NS);
    public static final Parcelable.Creator<EventMessage> CREATOR = new C1972a();

    /* renamed from: com.google.android.exoplayer2.metadata.emsg.EventMessage$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage$a.class */
    public static final class C1972a implements Parcelable.Creator<EventMessage> {
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
        int i = C24773d0.f69427a;
        this.f4891a = readString;
        this.f4892b = parcel.readString();
        this.f4893c = parcel.readLong();
        this.f4894d = parcel.readLong();
        this.f4895e = parcel.createByteArray();
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.f4891a = str;
        this.f4892b = str2;
        this.f4893c = j;
        this.f4894d = j2;
        this.f4895e = bArr;
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
        if (this.f4893c != eventMessage.f4893c || this.f4894d != eventMessage.f4894d || !C24773d0.m4623a(this.f4891a, eventMessage.f4891a) || !C24773d0.m4623a(this.f4892b, eventMessage.f4892b) || !Arrays.equals(this.f4895e, eventMessage.f4895e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f4896f == 0) {
            String str = this.f4891a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f4892b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            long j = this.f4893c;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f4894d;
            this.f4896f = Arrays.hashCode(this.f4895e) + ((((((((527 + hashCode) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        }
        return this.f4896f;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo39238j() {
        return mo39237q() != null ? this.f4895e : null;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo39237q() {
        String str = this.f4891a;
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
                return f4890h;
            case true:
            case true:
                return f4889g;
            default:
                return null;
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EMSG: scheme=");
        m8728C.append(this.f4891a);
        m8728C.append(", id=");
        m8728C.append(this.f4894d);
        m8728C.append(", durationMs=");
        m8728C.append(this.f4893c);
        m8728C.append(", value=");
        m8728C.append(this.f4892b);
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4891a);
        parcel.writeString(this.f4892b);
        parcel.writeLong(this.f4893c);
        parcel.writeLong(this.f4894d);
        parcel.writeByteArray(this.f4895e);
    }
}
