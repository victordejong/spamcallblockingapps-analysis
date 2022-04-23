package com.liulishuo.filedownloader.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadTaskAtom.class */
public class FileDownloadTaskAtom implements Parcelable {
    public static final Parcelable.Creator<FileDownloadTaskAtom> CREATOR = new C2773a();

    /* renamed from: b */
    private String f11517b;

    /* renamed from: c */
    private String f11518c;

    /* renamed from: d */
    private long f11519d;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadTaskAtom$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadTaskAtom$a.class */
    static final class C2773a implements Parcelable.Creator<FileDownloadTaskAtom> {
        C2773a() {
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
        this.f11517b = parcel.readString();
        this.f11518c = parcel.readString();
        this.f11519d = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11517b);
        parcel.writeString(this.f11518c);
        parcel.writeLong(this.f11519d);
    }
}
