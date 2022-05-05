package com.android.contacts.groupmanage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/groupmanage/GroupChange.class */
public class GroupChange implements Parcelable {
    public static final Parcelable.Creator<GroupChange> CREATOR = new Parcelable.Creator<GroupChange>() { // from class: com.android.contacts.groupmanage.GroupChange.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ GroupChange createFromParcel(Parcel parcel) {
            return new GroupChange(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ GroupChange[] newArray(int i) {
            return new GroupChange[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public long f1423a;

    /* renamed from: b  reason: collision with root package name */
    public List<String> f1424b;
    public boolean c;
    public long d;

    public GroupChange() {
        this.f1423a = -1L;
        this.f1424b = new ArrayList();
        this.c = false;
        this.d = -1L;
    }

    private GroupChange(Parcel parcel) {
        this.f1423a = -1L;
        this.f1424b = new ArrayList();
        this.c = false;
        this.d = -1L;
        this.f1423a = parcel.readLong();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            this.f1424b.add(parcel.readString());
        }
        boolean[] zArr = new boolean[parcel.readInt()];
        parcel.readBooleanArray(zArr);
        if (zArr.length == 1) {
            this.c = zArr[0];
        }
        this.d = parcel.readLong();
    }

    /* synthetic */ GroupChange(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1423a);
        parcel.writeInt(this.f1424b.size());
        for (String str : this.f1424b) {
            parcel.writeString(str);
        }
        parcel.writeInt(1);
        parcel.writeBooleanArray(new boolean[]{this.c});
        parcel.writeLong(this.d);
    }
}
