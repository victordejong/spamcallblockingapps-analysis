package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.callerid.block.bean.EZBlackList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p092e.p096e.p097a.p102h0.C3066f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadModel.class */
public class FileDownloadModel implements Parcelable {
    public static final Parcelable.Creator<FileDownloadModel> CREATOR = new C2772a();

    /* renamed from: b */
    private int f11505b;

    /* renamed from: c */
    private String f11506c;

    /* renamed from: d */
    private String f11507d;

    /* renamed from: e */
    private boolean f11508e;

    /* renamed from: f */
    private String f11509f;

    /* renamed from: g */
    private final AtomicInteger f11510g;

    /* renamed from: h */
    private final AtomicLong f11511h;

    /* renamed from: i */
    private long f11512i;

    /* renamed from: j */
    private String f11513j;

    /* renamed from: k */
    private String f11514k;

    /* renamed from: l */
    private int f11515l;

    /* renamed from: m */
    private boolean f11516m;

    /* renamed from: com.liulishuo.filedownloader.model.FileDownloadModel$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/FileDownloadModel$a.class */
    static final class C2772a implements Parcelable.Creator<FileDownloadModel> {
        C2772a() {
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
        this.f11511h = new AtomicLong();
        this.f11510g = new AtomicInteger();
    }

    protected FileDownloadModel(Parcel parcel) {
        this.f11505b = parcel.readInt();
        this.f11506c = parcel.readString();
        this.f11507d = parcel.readString();
        this.f11508e = parcel.readByte() != 0;
        this.f11509f = parcel.readString();
        this.f11510g = new AtomicInteger(parcel.readByte());
        this.f11511h = new AtomicLong(parcel.readLong());
        this.f11512i = parcel.readLong();
        this.f11513j = parcel.readString();
        this.f11514k = parcel.readString();
        this.f11515l = parcel.readInt();
        this.f11516m = parcel.readByte() != 0;
    }

    /* renamed from: B */
    public void m1823B(String str, boolean z) {
        this.f11507d = str;
        this.f11508e = z;
    }

    /* renamed from: C */
    public void m1822C(long j) {
        this.f11511h.set(j);
    }

    /* renamed from: D */
    public void m1821D(byte b) {
        this.f11510g.set(b);
    }

    /* renamed from: E */
    public void m1820E(long j) {
        this.f11516m = j > 2147483647L;
        this.f11512i = j;
    }

    /* renamed from: F */
    public void m1819F(String str) {
        this.f11506c = str;
    }

    /* renamed from: G */
    public ContentValues m1818G() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(EZBlackList.f4115ID, Integer.valueOf(m1813e()));
        contentValues.put("url", m1806n());
        contentValues.put("path", m1812f());
        contentValues.put("status", Byte.valueOf(m1810h()));
        contentValues.put("sofar", Long.valueOf(m1811g()));
        contentValues.put("total", Long.valueOf(m1807m()));
        contentValues.put("errMsg", m1815c());
        contentValues.put("etag", m1816b());
        contentValues.put("connectionCount", Integer.valueOf(m1817a()));
        contentValues.put("pathAsDirectory", Boolean.valueOf(m1802s()));
        if (m1802s() && m1814d() != null) {
            contentValues.put("filename", m1814d());
        }
        return contentValues;
    }

    /* renamed from: a */
    public int m1817a() {
        return this.f11515l;
    }

    /* renamed from: b */
    public String m1816b() {
        return this.f11514k;
    }

    /* renamed from: c */
    public String m1815c() {
        return this.f11513j;
    }

    /* renamed from: d */
    public String m1814d() {
        return this.f11509f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m1813e() {
        return this.f11505b;
    }

    /* renamed from: f */
    public String m1812f() {
        return this.f11507d;
    }

    /* renamed from: g */
    public long m1811g() {
        return this.f11511h.get();
    }

    /* renamed from: h */
    public byte m1810h() {
        return (byte) this.f11510g.get();
    }

    /* renamed from: i */
    public String m1809i() {
        return C3066f.m401B(m1812f(), m1802s(), m1814d());
    }

    /* renamed from: l */
    public String m1808l() {
        if (m1809i() == null) {
            return null;
        }
        return C3066f.m400C(m1809i());
    }

    /* renamed from: m */
    public long m1807m() {
        return this.f11512i;
    }

    /* renamed from: n */
    public String m1806n() {
        return this.f11506c;
    }

    /* renamed from: o */
    public void m1805o(long j) {
        this.f11511h.addAndGet(j);
    }

    /* renamed from: p */
    public boolean m1804p() {
        return this.f11512i == -1;
    }

    /* renamed from: q */
    public boolean m1803q() {
        return this.f11516m;
    }

    /* renamed from: s */
    public boolean m1802s() {
        return this.f11508e;
    }

    /* renamed from: t */
    public void m1801t() {
        this.f11515l = 1;
    }

    public String toString() {
        return C3066f.m367o("id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s", Integer.valueOf(this.f11505b), this.f11506c, this.f11507d, Integer.valueOf(this.f11510g.get()), this.f11511h, Long.valueOf(this.f11512i), this.f11514k, super.toString());
    }

    /* renamed from: v */
    public void m1800v(int i) {
        this.f11515l = i;
    }

    /* renamed from: w */
    public void m1799w(String str) {
        this.f11514k = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f11505b);
        parcel.writeString(this.f11506c);
        parcel.writeString(this.f11507d);
        parcel.writeByte(this.f11508e ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f11509f);
        parcel.writeByte((byte) this.f11510g.get());
        parcel.writeLong(this.f11511h.get());
        parcel.writeLong(this.f11512i);
        parcel.writeString(this.f11513j);
        parcel.writeString(this.f11514k);
        parcel.writeInt(this.f11515l);
        parcel.writeByte(this.f11516m ? (byte) 1 : (byte) 0);
    }

    /* renamed from: x */
    public void m1798x(String str) {
        this.f11513j = str;
    }

    /* renamed from: y */
    public void m1797y(String str) {
        this.f11509f = str;
    }

    /* renamed from: z */
    public void m1796z(int i) {
        this.f11505b = i;
    }
}
