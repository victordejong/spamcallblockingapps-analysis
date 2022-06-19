package com.callapp.contacts.activity.missedcall.daySummary;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem.class */
public class MissedCallSummaryItem extends BaseAdapterItemData implements Parcelable {
    public static final Parcelable.Creator<MissedCallSummaryItem> CREATOR = new Parcelable.Creator<MissedCallSummaryItem>() { // from class: com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItem.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ MissedCallSummaryItem createFromParcel(Parcel parcel) {
            return new MissedCallSummaryItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ MissedCallSummaryItem[] newArray(int i) {
            return new MissedCallSummaryItem[i];
        }
    };
    private long contactId;
    private String name;
    private boolean needToShowBorder;
    private int numberOfMissedCall;
    private String phoneAsRaw;
    private String profileImageView;

    public MissedCallSummaryItem(Parcel parcel) {
        readFromParcel(parcel);
    }

    public MissedCallSummaryItem(String str, String str2, long j, boolean z, int i, String str3) {
        this.profileImageView = str;
        this.phoneAsRaw = str2;
        this.needToShowBorder = z;
        this.contactId = j;
        this.numberOfMissedCall = i;
        this.name = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public long getContactId() {
        return this.contactId;
    }

    public String getName() {
        return this.name;
    }

    public int getNumberOfMissedCall() {
        return this.numberOfMissedCall;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return PhoneManager.get().m28239a(this.phoneAsRaw);
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    public String getProfileImageView() {
        return this.profileImageView;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 18;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public boolean isNeedToShowBorder() {
        return this.needToShowBorder;
    }

    public void readFromParcel(Parcel parcel) {
        this.profileImageView = parcel.readString();
        this.phoneAsRaw = parcel.readString();
        this.name = parcel.readString();
        this.needToShowBorder = parcel.readByte() != 0;
        this.contactId = parcel.readLong();
        this.numberOfMissedCall = parcel.readInt();
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNeedToShowBorder(boolean z) {
        this.needToShowBorder = z;
    }

    public void setNumberOfMissedCall(int i) {
        this.numberOfMissedCall = i;
    }

    public void setPhoneAsRaw(String str) {
        this.phoneAsRaw = str;
    }

    public void setProfileImageView(String str) {
        this.profileImageView = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.profileImageView);
        parcel.writeString(this.phoneAsRaw);
        parcel.writeString(this.name);
        parcel.writeByte(this.needToShowBorder ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.contactId);
        parcel.writeInt(this.numberOfMissedCall);
    }
}
