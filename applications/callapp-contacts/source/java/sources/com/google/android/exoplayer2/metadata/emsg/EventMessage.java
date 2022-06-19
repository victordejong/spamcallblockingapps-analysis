package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/EventMessage.class */
public final class EventMessage implements Metadata.Entry {
    public static final Parcelable.Creator<EventMessage> CREATOR = new Parcelable.Creator<EventMessage>() { // from class: com.google.android.exoplayer2.metadata.emsg.EventMessage.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ EventMessage[] newArray(int i) {
            return new EventMessage[i];
        }
    };
    private static final Format ID3_FORMAT;
    public static final String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    private static final String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    private static final Format SCTE35_FORMAT;
    public static final String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    private int hashCode;

    /* renamed from: id */
    public final long f36765id;
    public final byte[] messageData;
    public final String schemeIdUri;
    public final String value;

    static {
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "application/id3";
        ID3_FORMAT = c10828a.m22321a();
        Format.C10828a c10828a2 = new Format.C10828a();
        c10828a2.f34792k = "application/x-scte35";
        SCTE35_FORMAT = c10828a2.m22321a();
    }

    EventMessage(Parcel parcel) {
        this.schemeIdUri = (String) C11599af.m19974a(parcel.readString());
        this.value = (String) C11599af.m19974a(parcel.readString());
        this.durationMs = parcel.readLong();
        this.f36765id = parcel.readLong();
        this.messageData = (byte[]) C11599af.m19974a(parcel.createByteArray());
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j;
        this.f36765id = j2;
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
        return this.durationMs == eventMessage.durationMs && this.f36765id == eventMessage.f36765id && C11599af.m19973a((Object) this.schemeIdUri, (Object) eventMessage.schemeIdUri) && C11599af.m19973a((Object) this.value, (Object) eventMessage.value) && Arrays.equals(this.messageData, eventMessage.messageData);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public final byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.messageData;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
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
            long j2 = this.f36765id;
            this.hashCode = ((((((((hashCode + 527) * 31) + i) * 31) + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.messageData);
        }
        return this.hashCode;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.schemeIdUri + ", id=" + this.f36765id + ", durationMs=" + this.durationMs + ", value=" + this.value;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.f36765id);
        parcel.writeByteArray(this.messageData);
    }
}
