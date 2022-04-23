package com.asus.eabservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/eabservice/UserCapInfo.class */
public class UserCapInfo implements Parcelable {
    public static final Parcelable.Creator<UserCapInfo> CREATOR = new Parcelable.Creator<UserCapInfo>() { // from class: com.asus.eabservice.UserCapInfo.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UserCapInfo createFromParcel(Parcel parcel) {
            return new UserCapInfo(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UserCapInfo[] newArray(int i) {
            return new UserCapInfo[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f2891a;

    /* renamed from: b  reason: collision with root package name */
    private int f2892b;
    private Map<String, Integer> c;

    public UserCapInfo() {
        this.f2891a = null;
        this.f2892b = -1;
        this.c = null;
    }

    private UserCapInfo(Parcel parcel) {
        this.f2891a = null;
        this.f2892b = -1;
        this.c = null;
        this.f2891a = parcel.readString();
        this.f2892b = parcel.readInt();
        this.c = parcel.readHashMap(HashMap.class.getClassLoader());
    }

    /* synthetic */ UserCapInfo(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2891a);
        parcel.writeInt(this.f2892b);
        parcel.writeMap(this.c);
    }
}
