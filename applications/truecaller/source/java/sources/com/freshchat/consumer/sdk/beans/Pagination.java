package com.freshchat.consumer.sdk.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Pagination.class */
public class Pagination implements Parcelable {
    public static final Parcelable.Creator<Pagination> CREATOR = new Parcelable.Creator<Pagination>() { // from class: com.freshchat.consumer.sdk.beans.Pagination.1
        @Override // android.os.Parcelable.Creator
        public Pagination createFromParcel(Parcel parcel) {
            return new Pagination(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Pagination[] newArray(int i) {
            return new Pagination[i];
        }
    };
    private int count;
    private int currentPage;
    private int nextPage;

    public Pagination(Parcel parcel) {
        this.currentPage = parcel.readInt();
        this.count = parcel.readInt();
        this.nextPage = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCount() {
        return this.count;
    }

    public int getCurrentPage() {
        return this.currentPage;
    }

    public int getNextPage() {
        return this.nextPage;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setCurrentPage(int i) {
        this.currentPage = i;
    }

    public void setNextPage(int i) {
        this.nextPage = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.currentPage);
        parcel.writeInt(this.count);
        parcel.writeInt(this.nextPage);
    }
}
