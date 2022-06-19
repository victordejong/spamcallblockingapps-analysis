package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {

    /* renamed from: f */
    public final String f16090f;

    /* renamed from: g */
    public final String f16091g;

    /* renamed from: h */
    public final long f16092h;

    /* renamed from: i */
    public final long f16093i;

    /* renamed from: j */
    public final byte[] f16094j;

    /* renamed from: k */
    private int f16095k;

    /* renamed from: d */
    private static final Format f16088d = Format.m21737t(null, "application/id3", Long.MAX_VALUE);

    /* renamed from: e */
    private static final Format f16089e = Format.m21737t(null, "application/x-scte35", Long.MAX_VALUE);
    public static final Parcelable.Creator<EventMessage> CREATOR = new C5126a();

    /* renamed from: com.google.android.exoplayer2.metadata.emsg.EventMessage$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage$a.class */
    static final class C5126a implements Parcelable.Creator<EventMessage> {
        C5126a() {
        }

        /* renamed from: a */
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        /* renamed from: b */
        public EventMessage[] newArray(int i) {
            return new EventMessage[i];
        }
    }

    EventMessage(Parcel parcel) {
        this.f16090f = (String) C5515h0.m18833g(parcel.readString());
        this.f16091g = (String) C5515h0.m18833g(parcel.readString());
        this.f16092h = parcel.readLong();
        this.f16093i = parcel.readLong();
        this.f16094j = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.f16090f = str;
        this.f16091g = str2;
        this.f16092h = j;
        this.f16093i = j2;
        this.f16094j = bArr;
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
        if (this.f16092h != eventMessage.f16092h || this.f16093i != eventMessage.f16093i || !C5515h0.m18843b(this.f16090f, eventMessage.f16090f) || !C5515h0.m18843b(this.f16091g, eventMessage.f16091g) || !Arrays.equals(this.f16094j, eventMessage.f16094j)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public byte[] mo20092h0() {
        return mo20091y() != null ? this.f16094j : null;
    }

    public int hashCode() {
        if (this.f16095k == 0) {
            String str = this.f16090f;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f16091g;
            if (str2 != null) {
                i = str2.hashCode();
            }
            long j = this.f16092h;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f16093i;
            this.f16095k = ((((((((527 + hashCode) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.f16094j);
        }
        return this.f16095k;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f16090f + ", id=" + this.f16093i + ", durationMs=" + this.f16092h + ", value=" + this.f16091g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16090f);
        parcel.writeString(this.f16091g);
        parcel.writeLong(this.f16092h);
        parcel.writeLong(this.f16093i);
        parcel.writeByteArray(this.f16094j);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public Format mo20091y() {
        String str = this.f16090f;
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
                return f16089e;
            case true:
            case true:
                return f16088d;
            default:
                return null;
        }
    }
}
