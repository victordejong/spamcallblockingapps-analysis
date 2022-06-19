package com.liulishuo.filedownloader.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadTaskAtom.class */
public class FileDownloadTaskAtom implements Parcelable {
    public static final Parcelable.Creator<FileDownloadTaskAtom> CREATOR = new C9378a();

    /* renamed from: d */
    private String f40114d;

    /* renamed from: e */
    private String f40115e;

    /* renamed from: f */
    private long f40116f;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadTaskAtom$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadTaskAtom$a.class */
    static final class C9378a implements Parcelable.Creator<FileDownloadTaskAtom> {
        C9378a() {
        }

        /* renamed from: a */
        public FileDownloadTaskAtom createFromParcel(Parcel parcel) {
            return new FileDownloadTaskAtom(parcel);
        }

        /* renamed from: b */
        public FileDownloadTaskAtom[] newArray(int i) {
            return new FileDownloadTaskAtom[i];
        }
    }

    protected FileDownloadTaskAtom(Parcel parcel) {
        this.f40114d = parcel.readString();
        this.f40115e = parcel.readString();
        this.f40116f = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f40114d);
        parcel.writeString(this.f40115e);
        parcel.writeLong(this.f40116f);
    }
}
