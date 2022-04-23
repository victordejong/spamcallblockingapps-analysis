package com.callapp.contacts.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/DataChangedInfo.class */
public class DataChangedInfo implements Parcelable {
    public static final Parcelable.Creator<DataChangedInfo> CREATOR = new Parcelable.Creator<DataChangedInfo>() { // from class: com.callapp.contacts.model.DataChangedInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DataChangedInfo createFromParcel(Parcel parcel) {
            return new DataChangedInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DataChangedInfo[] newArray(int i) {
            return new DataChangedInfo[i];
        }
    };
    public static final int ORIGIN_ALL_RECORDS = 3;
    public static final int ORIGIN_BLOCK_SCREEN = 7;
    public static final int ORIGIN_CALLAPP_PLUS = 6;
    public static final int ORIGIN_CALL_LOG = 1;
    public static final int ORIGIN_CONTACTS = 2;
    public static final int ORIGIN_FAVORITES_RECORDS = 4;
    public static final int ORIGIN_FAVORITE_FREQUENT = 8;
    public static final int ORIGIN_SEARCH = 5;
    public static final int ORIGIN_WHO_VIEW_MY_PROFILE = 9;
    public static int POSITION_ALL = -1;
    private int dataType;
    private int origin;
    private int position;

    private DataChangedInfo(int i, int i2, int i3) {
        this.dataType = -1;
        this.position = -1;
        this.origin = -1;
        this.dataType = i;
        this.position = i2;
        this.origin = i3;
    }

    protected DataChangedInfo(Parcel parcel) {
        this.dataType = -1;
        this.position = -1;
        this.origin = -1;
        this.dataType = parcel.readInt();
        this.position = parcel.readInt();
        this.origin = parcel.readInt();
    }

    public static DataChangedInfo create(int i, int i2, int i3) {
        return new DataChangedInfo(i, i2, i3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDataType() {
        return this.dataType;
    }

    public int getOrigin() {
        return this.origin;
    }

    public int getPosition() {
        return this.position;
    }

    public void setDataType(int i) {
        this.dataType = i;
    }

    public void setOrigin(int i) {
        this.origin = i;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.dataType);
        parcel.writeInt(this.position);
        parcel.writeInt(this.origin);
    }
}
