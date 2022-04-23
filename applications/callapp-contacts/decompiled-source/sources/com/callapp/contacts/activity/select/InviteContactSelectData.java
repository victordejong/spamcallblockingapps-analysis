package com.callapp.contacts.activity.select;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/InviteContactSelectData.class */
public class InviteContactSelectData extends ContactSelectData implements Parcelable {
    public static final Parcelable.Creator<InviteContactSelectData> CREATOR = new Parcelable.Creator<InviteContactSelectData>() { // from class: com.callapp.contacts.activity.select.InviteContactSelectData.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ InviteContactSelectData createFromParcel(Parcel parcel) {
            return new InviteContactSelectData(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ InviteContactSelectData[] newArray(int i) {
            return new InviteContactSelectData[i];
        }
    };
    private boolean invite;
    private String thumbnailUrl;

    public InviteContactSelectData(String str, String str2, String str3, String str4) {
        super(str, str2, str3);
        this.thumbnailUrl = str4;
        this.invite = true;
    }

    public InviteContactSelectData(String str, String str2, String str3, String str4, boolean z) {
        super(str, str2, str3);
        this.thumbnailUrl = str4;
        this.invite = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public boolean isInvite() {
        return this.invite;
    }

    public void setInvite(boolean z) {
        this.invite = z;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getUserId());
        parcel.writeString(getContactId());
        parcel.writeString(getDisplayName());
        parcel.writeString(getThumbnailUrl());
    }
}
