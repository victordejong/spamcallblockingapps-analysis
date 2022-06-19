package com.liulishuo.filedownloader.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadHeader.class */
public class FileDownloadHeader implements Parcelable {
    public static final Parcelable.Creator<FileDownloadHeader> CREATOR = new C9376a();

    /* renamed from: d */
    private HashMap<String, List<String>> f40101d;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadHeader$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadHeader$a.class */
    static final class C9376a implements Parcelable.Creator<FileDownloadHeader> {
        C9376a() {
        }

        /* renamed from: a */
        public FileDownloadHeader createFromParcel(Parcel parcel) {
            return new FileDownloadHeader(parcel);
        }

        /* renamed from: b */
        public FileDownloadHeader[] newArray(int i) {
            return new FileDownloadHeader[i];
        }
    }

    public FileDownloadHeader() {
    }

    protected FileDownloadHeader(Parcel parcel) {
        this.f40101d = parcel.readHashMap(String.class.getClassLoader());
    }

    /* renamed from: a */
    public HashMap<String, List<String>> m871a() {
        return this.f40101d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f40101d.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeMap(this.f40101d);
    }
}
