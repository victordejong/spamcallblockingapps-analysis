package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p078c.p122d.p123a.p128i0.C2040f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadModel.class */
public class FileDownloadModel implements Parcelable {
    public static final Parcelable.Creator<FileDownloadModel> CREATOR = new C9377a();

    /* renamed from: d */
    private int f40102d;

    /* renamed from: e */
    private String f40103e;

    /* renamed from: f */
    private String f40104f;

    /* renamed from: g */
    private boolean f40105g;

    /* renamed from: h */
    private String f40106h;

    /* renamed from: i */
    private final AtomicInteger f40107i;

    /* renamed from: j */
    private final AtomicLong f40108j;

    /* renamed from: k */
    private long f40109k;

    /* renamed from: l */
    private String f40110l;

    /* renamed from: m */
    private String f40111m;

    /* renamed from: n */
    private int f40112n;

    /* renamed from: o */
    private boolean f40113o;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadModel$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadModel$a.class */
    static final class C9377a implements Parcelable.Creator<FileDownloadModel> {
        C9377a() {
        }

        /* renamed from: a */
        public FileDownloadModel createFromParcel(Parcel parcel) {
            return new FileDownloadModel(parcel);
        }

        /* renamed from: b */
        public FileDownloadModel[] newArray(int i) {
            return new FileDownloadModel[i];
        }
    }

    public FileDownloadModel() {
        this.f40108j = new AtomicLong();
        this.f40107i = new AtomicInteger();
    }

    protected FileDownloadModel(Parcel parcel) {
        this.f40102d = parcel.readInt();
        this.f40103e = parcel.readString();
        this.f40104f = parcel.readString();
        this.f40105g = parcel.readByte() != 0;
        this.f40106h = parcel.readString();
        this.f40107i = new AtomicInteger(parcel.readByte());
        this.f40108j = new AtomicLong(parcel.readLong());
        this.f40109k = parcel.readLong();
        this.f40110l = parcel.readString();
        this.f40111m = parcel.readString();
        this.f40112n = parcel.readInt();
        this.f40113o = parcel.readByte() != 0;
    }

    /* renamed from: A */
    public void m868A(long j) {
        this.f40108j.set(j);
    }

    /* renamed from: B */
    public void m867B(byte b) {
        this.f40107i.set(b);
    }

    /* renamed from: C */
    public void m866C(long j) {
        this.f40113o = j > 2147483647L;
        this.f40109k = j;
    }

    /* renamed from: D */
    public void m865D(String str) {
        this.f40103e = str;
    }

    /* renamed from: E */
    public ContentValues m864E() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(m859e()));
        contentValues.put("url", m852l());
        contentValues.put("path", m858f());
        contentValues.put("status", Byte.valueOf(m856h()));
        contentValues.put("sofar", Long.valueOf(m857g()));
        contentValues.put("total", Long.valueOf(m853k()));
        contentValues.put("errMsg", m861c());
        contentValues.put("etag", m862b());
        contentValues.put("connectionCount", Integer.valueOf(m863a()));
        contentValues.put("pathAsDirectory", Boolean.valueOf(m848r()));
        if (m848r() && m860d() != null) {
            contentValues.put("filename", m860d());
        }
        return contentValues;
    }

    /* renamed from: a */
    public int m863a() {
        return this.f40112n;
    }

    /* renamed from: b */
    public String m862b() {
        return this.f40111m;
    }

    /* renamed from: c */
    public String m861c() {
        return this.f40110l;
    }

    /* renamed from: d */
    public String m860d() {
        return this.f40106h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m859e() {
        return this.f40102d;
    }

    /* renamed from: f */
    public String m858f() {
        return this.f40104f;
    }

    /* renamed from: g */
    public long m857g() {
        return this.f40108j.get();
    }

    /* renamed from: h */
    public byte m856h() {
        return (byte) this.f40107i.get();
    }

    /* renamed from: i */
    public String m855i() {
        return C2040f.m28240B(m858f(), m848r(), m860d());
    }

    /* renamed from: j */
    public String m854j() {
        if (m855i() == null) {
            return null;
        }
        return C2040f.m28239C(m855i());
    }

    /* renamed from: k */
    public long m853k() {
        return this.f40109k;
    }

    /* renamed from: l */
    public String m852l() {
        return this.f40103e;
    }

    /* renamed from: m */
    public void m851m(long j) {
        this.f40108j.addAndGet(j);
    }

    /* renamed from: n */
    public boolean m850n() {
        return this.f40109k == -1;
    }

    /* renamed from: o */
    public boolean m849o() {
        return this.f40113o;
    }

    /* renamed from: r */
    public boolean m848r() {
        return this.f40105g;
    }

    /* renamed from: s */
    public void m847s() {
        this.f40112n = 1;
    }

    /* renamed from: t */
    public void m846t(int i) {
        this.f40112n = i;
    }

    public String toString() {
        return C2040f.m28206o("id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s", Integer.valueOf(this.f40102d), this.f40103e, this.f40104f, Integer.valueOf(this.f40107i.get()), this.f40108j, Long.valueOf(this.f40109k), this.f40111m, super.toString());
    }

    /* renamed from: u */
    public void m845u(String str) {
        this.f40111m = str;
    }

    /* renamed from: v */
    public void m844v(String str) {
        this.f40110l = str;
    }

    /* renamed from: w */
    public void m843w(String str) {
        this.f40106h = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f40102d);
        parcel.writeString(this.f40103e);
        parcel.writeString(this.f40104f);
        parcel.writeByte(this.f40105g ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f40106h);
        parcel.writeByte((byte) this.f40107i.get());
        parcel.writeLong(this.f40108j.get());
        parcel.writeLong(this.f40109k);
        parcel.writeString(this.f40110l);
        parcel.writeString(this.f40111m);
        parcel.writeInt(this.f40112n);
        parcel.writeByte(this.f40113o ? (byte) 1 : (byte) 0);
    }

    /* renamed from: x */
    public void m842x(int i) {
        this.f40102d = i;
    }

    /* renamed from: z */
    public void m841z(String str, boolean z) {
        this.f40104f = str;
        this.f40105g = z;
    }
}
