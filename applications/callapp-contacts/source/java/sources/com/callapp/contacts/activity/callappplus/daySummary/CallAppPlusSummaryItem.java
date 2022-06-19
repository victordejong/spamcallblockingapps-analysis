package com.callapp.contacts.activity.callappplus.daySummary;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.phone.Phone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem.class */
public class CallAppPlusSummaryItem extends BaseAdapterItemData implements Parcelable {
    public static final Parcelable.Creator<CallAppPlusSummaryItem> CREATOR = new Parcelable.Creator<CallAppPlusSummaryItem>() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItem.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CallAppPlusSummaryItem createFromParcel(Parcel parcel) {
            return new CallAppPlusSummaryItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CallAppPlusSummaryItem[] newArray(int i) {
            return new CallAppPlusSummaryItem[i];
        }
    };
    private int badgeColor;
    private int badgeDrawableId;
    private long contactId;
    private String name;
    private boolean needToShowBorder;
    private String phoneAsRaw;

    public CallAppPlusSummaryItem(Parcel parcel) {
        readFromParcel(parcel);
    }

    public CallAppPlusSummaryItem(String str, long j, boolean z, String str2, int i, int i2) {
        this.phoneAsRaw = str;
        this.needToShowBorder = z;
        this.contactId = j;
        this.name = str2;
        this.badgeDrawableId = i;
        this.badgeColor = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        CallAppPlusSummaryItem callAppPlusSummaryItem = (CallAppPlusSummaryItem) obj;
        if (this.needToShowBorder != callAppPlusSummaryItem.needToShowBorder || this.contactId != callAppPlusSummaryItem.contactId || this.badgeDrawableId != callAppPlusSummaryItem.badgeDrawableId || this.badgeColor != callAppPlusSummaryItem.badgeColor) {
            return false;
        }
        String str = this.phoneAsRaw;
        if (str != null) {
            if (!str.equals(callAppPlusSummaryItem.phoneAsRaw)) {
                return false;
            }
        } else if (callAppPlusSummaryItem.phoneAsRaw != null) {
            return false;
        }
        String str2 = this.name;
        String str3 = callAppPlusSummaryItem.name;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public int getBadgeColor() {
        return this.badgeColor;
    }

    public int getBadgeDrawableId() {
        return this.badgeDrawableId;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public long getContactId() {
        return this.contactId;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return PhoneManager.get().m28239a(this.phoneAsRaw);
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 22;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public boolean isNeedToShowBorder() {
        return this.needToShowBorder;
    }

    public void readFromParcel(Parcel parcel) {
        this.phoneAsRaw = parcel.readString();
        this.name = parcel.readString();
        this.needToShowBorder = parcel.readByte() != 0;
        this.contactId = parcel.readLong();
        this.badgeDrawableId = parcel.readInt();
        this.badgeColor = parcel.readInt();
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

    public void setPhoneAsRaw(String str) {
        this.phoneAsRaw = str;
    }

    public String toString() {
        return "CallAppPlusSummaryItem{phoneAsRaw='" + this.phoneAsRaw + "', needToShowBorder=" + this.needToShowBorder + ", contactId=" + this.contactId + ", name='" + this.name + "', badgeDrawableId=" + this.badgeDrawableId + ", badgeColor=" + this.badgeColor + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.phoneAsRaw);
        parcel.writeString(this.name);
        parcel.writeByte(this.needToShowBorder ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.contactId);
        parcel.writeInt(this.badgeDrawableId);
        parcel.writeInt(this.badgeColor);
    }
}
