package androidx.media2.exoplayer.external.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {
    public static final String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    private static final String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    public static final String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    private int hashCode;

    /* renamed from: id */
    public final long f6677id;
    public final byte[] messageData;
    public final String schemeIdUri;
    public final String value;
    private static final Format ID3_FORMAT = Format.createSampleFormat(null, "application/id3", Long.MAX_VALUE);
    private static final Format SCTE35_FORMAT = Format.createSampleFormat(null, "application/x-scte35", Long.MAX_VALUE);
    public static final Parcelable.Creator<EventMessage> CREATOR = new Parcelable.Creator<EventMessage>() { // from class: androidx.media2.exoplayer.external.metadata.emsg.EventMessage.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ EventMessage[] newArray(int i) {
            return new EventMessage[i];
        }
    };

    EventMessage(Parcel parcel) {
        this.schemeIdUri = (String) C1996ac.m41659a(parcel.readString());
        this.value = (String) C1996ac.m41659a(parcel.readString());
        this.durationMs = parcel.readLong();
        this.f6677id = parcel.readLong();
        this.messageData = (byte[]) C1996ac.m41659a(parcel.createByteArray());
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j;
        this.f6677id = j2;
        this.messageData = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        return this.durationMs == eventMessage.durationMs && this.f6677id == eventMessage.f6677id && C1996ac.m41658a((Object) this.schemeIdUri, (Object) eventMessage.schemeIdUri) && C1996ac.m41658a((Object) this.value, (Object) eventMessage.value) && Arrays.equals(this.messageData, eventMessage.messageData);
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public final byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.messageData;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public final Format getWrappedMetadataFormat() {
        String str = this.schemeIdUri;
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
                if (str.equals(ID3_SCHEME_ID_APPLE)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return SCTE35_FORMAT;
            case true:
            case true:
                return ID3_FORMAT;
            default:
                return null;
        }
    }

    public final int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeIdUri;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.value;
            if (str2 != null) {
                i = str2.hashCode();
            }
            long j = this.durationMs;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f6677id;
            this.hashCode = ((((((((hashCode + 527) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.messageData);
        }
        return this.hashCode;
    }

    public final String toString() {
        String str = this.schemeIdUri;
        long j = this.f6677id;
        long j2 = this.durationMs;
        String str2 = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(str2).length());
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        sb.append(", durationMs=");
        sb.append(j2);
        sb.append(", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.f6677id);
        parcel.writeByteArray(this.messageData);
    }
}
