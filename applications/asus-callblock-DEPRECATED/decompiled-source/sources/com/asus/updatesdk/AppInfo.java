package com.asus.updatesdk;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.asus.updatesdk.ZenUiFamily;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/AppInfo.class */
public class AppInfo implements Parcelable, Comparable {
    public static final Parcelable.Creator<AppInfo> CREATOR = new Parcelable.Creator<AppInfo>() { // from class: com.asus.updatesdk.AppInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AppInfo createFromParcel(Parcel parcel) {
            return new AppInfo(parcel, (byte) 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AppInfo[] newArray(int i) {
            return new AppInfo[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f3118a;

    /* renamed from: b  reason: collision with root package name */
    private String f3119b;
    private String c;
    private float d;
    private String e;
    private String f;
    private String g;
    private Bitmap h;
    private String i;
    private ZenUiFamily.AppStatus j;

    private AppInfo(Parcel parcel) {
        this.f3118a = parcel.readString();
        this.f3119b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readFloat();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = (Bitmap) parcel.readParcelable(getClass().getClassLoader());
        this.i = parcel.readString();
        this.j = ZenUiFamily.AppStatus.getFromIndex(parcel.readInt());
    }

    /* synthetic */ AppInfo(Parcel parcel, byte b2) {
        this(parcel);
    }

    public AppInfo(String str, String str2, String str3, float f, String str4, String str5, String str6, Bitmap bitmap, String str7, ZenUiFamily.AppStatus appStatus) {
        this.f3118a = str;
        this.f3119b = str2;
        this.c = str3;
        this.d = f;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = bitmap;
        this.i = str7;
        this.j = appStatus;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return getStatus().getIndex() - ((AppInfo) obj).getStatus().getIndex();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCDNImageUrl() {
        return this.g;
    }

    public String getDownloadCounts() {
        return this.e;
    }

    public String getGoToGooglePlayUrl() {
        return this.i;
    }

    public Bitmap getIconBitmap() {
        return this.h;
    }

    public String getPackageName() {
        return this.f3119b;
    }

    public String getPlayImageUrl() {
        return this.f;
    }

    public float getRating() {
        return this.d;
    }

    public String getSlogan() {
        return this.c;
    }

    public ZenUiFamily.AppStatus getStatus() {
        return this.j;
    }

    public String getTitle() {
        return this.f3118a;
    }

    public void setCDNImageUrl(String str) {
        this.g = str;
    }

    public void setDownloadCounts(String str) {
        this.e = str;
    }

    public void setGoToGooglePlayUrl(String str) {
        this.i = str;
    }

    public void setIconBitmap(Bitmap bitmap) {
        this.h = bitmap;
    }

    public void setPackageName(String str) {
        this.f3119b = str;
    }

    public void setPlayImageUrl(String str) {
        this.f = str;
    }

    public void setRating(float f) {
        this.d = f;
    }

    public void setSlogan(String str) {
        this.c = str;
    }

    public void setStatus(ZenUiFamily.AppStatus appStatus) {
        this.j = appStatus;
    }

    public void setTitle(String str) {
        this.f3118a = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3118a);
        parcel.writeString(this.f3119b);
        parcel.writeString(this.c);
        parcel.writeFloat(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeParcelable(this.h, i);
        parcel.writeString(this.i);
        parcel.writeInt(this.j.getIndex());
    }
}
