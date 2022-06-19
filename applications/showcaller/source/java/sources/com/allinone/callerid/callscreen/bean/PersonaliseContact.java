package com.allinone.callerid.callscreen.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.allinone.callerid.customview.SortToken;
import java.io.Serializable;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "personnalcontact")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/bean/PersonaliseContact.class */
public class PersonaliseContact implements Serializable, Parcelable {
    public static final Parcelable.Creator<PersonaliseContact> CREATOR = new Parcelable.Creator<PersonaliseContact>() { // from class: com.allinone.callerid.callscreen.bean.PersonaliseContact.1
        @Override // android.os.Parcelable.Creator
        public PersonaliseContact createFromParcel(Parcel parcel) {
            return new PersonaliseContact(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PersonaliseContact[] newArray(int i) {
            return new PersonaliseContact[i];
        }
    };
    private int contacts_counts;
    @Column(name = "contacts_id")
    private int contacts_id;
    @Column(name = "data_id")
    private String dataId;
    private String default_themtname;
    @Column(autoGen = true, isId = true, name = "id", property = "NOT NULL")

    /* renamed from: id */
    private int f8432id;
    @Column(name = "isUseVideoAudioRing")
    private boolean isUseVideoAudioRing;
    private boolean is_default;
    @Column(name = "isdiy")
    private boolean isdiy;
    public boolean isselect;
    private String multiple_number;
    @Column(name = "contactname")
    private String name;
    @Column(name = "num")
    private String number;
    @Column(name = "path")
    private String path;
    @Column(name = "ringtone")
    private String ringtone;
    public String sortKey;
    @Column(name = "sortLetters")
    private String sortLetters;
    public SortToken sortToken;
    @Column(name = "themtname")
    private String themtname;

    public PersonaliseContact() {
        this.isselect = false;
        this.contacts_counts = 1;
        this.sortToken = new SortToken();
    }

    protected PersonaliseContact(Parcel parcel) {
        this.isselect = false;
        this.contacts_counts = 1;
        this.sortToken = new SortToken();
        this.f8432id = parcel.readInt();
        this.number = parcel.readString();
        this.name = parcel.readString();
        this.isselect = parcel.readByte() != 0;
        this.themtname = parcel.readString();
        this.path = parcel.readString();
        this.sortLetters = parcel.readString();
        this.ringtone = parcel.readString();
        this.contacts_id = parcel.readInt();
        this.dataId = parcel.readString();
        this.isdiy = parcel.readByte() != 0;
        this.default_themtname = parcel.readString();
        this.is_default = parcel.readByte() != 0;
        this.contacts_counts = parcel.readInt();
        this.sortKey = parcel.readString();
        this.sortToken = (SortToken) parcel.readParcelable(SortToken.class.getClassLoader());
        this.multiple_number = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getContacts_counts() {
        return this.contacts_counts;
    }

    public int getContacts_id() {
        return this.contacts_id;
    }

    public String getDataId() {
        return this.dataId;
    }

    public String getDefault_themtname() {
        return this.default_themtname;
    }

    public int getId() {
        return this.f8432id;
    }

    public String getMultiple_number() {
        return this.multiple_number;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public String getPath() {
        return this.path;
    }

    public String getRingtone() {
        return this.ringtone;
    }

    public String getSortKey() {
        return this.sortKey;
    }

    public String getSortLetters() {
        return this.sortLetters;
    }

    public SortToken getSortToken() {
        return this.sortToken;
    }

    public String getThemtname() {
        return this.themtname;
    }

    public boolean isIs_default() {
        return this.is_default;
    }

    public boolean isIsdiy() {
        return this.isdiy;
    }

    public boolean isIsselect() {
        return this.isselect;
    }

    public boolean isUseVideoAudioRing() {
        return this.isUseVideoAudioRing;
    }

    public void setContacts_counts(int i) {
        this.contacts_counts = i;
    }

    public void setContacts_id(int i) {
        this.contacts_id = i;
    }

    public void setDataId(String str) {
        this.dataId = str;
    }

    public void setDefault_themtname(String str) {
        this.default_themtname = str;
    }

    public void setId(int i) {
        this.f8432id = i;
    }

    public void setIs_default(boolean z) {
        this.is_default = z;
    }

    public void setIsdiy(boolean z) {
        this.isdiy = z;
    }

    public void setIsselect(boolean z) {
        this.isselect = z;
    }

    public void setMultiple_number(String str) {
        this.multiple_number = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setRingtone(String str) {
        this.ringtone = str;
    }

    public void setSortKey(String str) {
        this.sortKey = str;
    }

    public void setSortLetters(String str) {
        this.sortLetters = str;
    }

    public void setSortToken(SortToken sortToken) {
        this.sortToken = sortToken;
    }

    public void setThemtname(String str) {
        this.themtname = str;
    }

    public void setUseVideoAudioRing(boolean z) {
        this.isUseVideoAudioRing = z;
    }

    public String toString() {
        return "PersonaliseContact{id=" + this.f8432id + ", number='" + this.number + "', name='" + this.name + "', isselect=" + this.isselect + ", themtname='" + this.themtname + "', path='" + this.path + "', sortLetters='" + this.sortLetters + "', ringtone='" + this.ringtone + "', contacts_id=" + this.contacts_id + ", dataId='" + this.dataId + "', isdiy=" + this.isdiy + ", default_themtname='" + this.default_themtname + "', is_default=" + this.is_default + ", contacts_counts=" + this.contacts_counts + ", sortKey='" + this.sortKey + "', sortToken=" + this.sortToken + ", multiple_number='" + this.multiple_number + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f8432id);
        parcel.writeString(this.number);
        parcel.writeString(this.name);
        parcel.writeByte(this.isselect ? (byte) 1 : (byte) 0);
        parcel.writeString(this.themtname);
        parcel.writeString(this.path);
        parcel.writeString(this.sortLetters);
        parcel.writeString(this.ringtone);
        parcel.writeInt(this.contacts_id);
        parcel.writeString(this.dataId);
        parcel.writeByte(this.isdiy ? (byte) 1 : (byte) 0);
        parcel.writeString(this.default_themtname);
        parcel.writeByte(this.is_default ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.contacts_counts);
        parcel.writeString(this.sortKey);
        parcel.writeParcelable(this.sortToken, i);
        parcel.writeString(this.multiple_number);
    }
}
