package com.google.android.exoplayer2.metadata.dvbsi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11593a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/dvbsi/AppInfoTable.class */
public final class AppInfoTable implements Metadata.Entry {
    public static final int CONTROL_CODE_AUTOSTART = 1;
    public static final int CONTROL_CODE_PRESENT = 2;
    public static final Parcelable.Creator<AppInfoTable> CREATOR = new Parcelable.Creator<AppInfoTable>() { // from class: com.google.android.exoplayer2.metadata.dvbsi.AppInfoTable.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AppInfoTable createFromParcel(Parcel parcel) {
            return new AppInfoTable(parcel.readInt(), (String) C11593a.m20020b(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AppInfoTable[] newArray(int i) {
            return new AppInfoTable[i];
        }
    };
    public final int controlCode;
    public final String url;

    public AppInfoTable(int i, String str) {
        this.controlCode = i;
        this.url = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return Metadata.Entry._CC.$default$getWrappedMetadataBytes(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ Format getWrappedMetadataFormat() {
        return Metadata.Entry._CC.$default$getWrappedMetadataFormat(this);
    }

    public final String toString() {
        return "Ait(controlCode=" + this.controlCode + ",url=" + this.url + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.url);
        parcel.writeInt(this.controlCode);
    }
}
