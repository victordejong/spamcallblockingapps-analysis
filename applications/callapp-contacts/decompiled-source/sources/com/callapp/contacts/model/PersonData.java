package com.callapp.contacts.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.ImageView;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONFBEntity;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.api.helper.vk.VKUser;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.social.VKDataUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.google.common.base.j;
import com.twitter.sdk.android.core.models.User;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/PersonData.class */
public class PersonData extends HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl implements Parcelable, Serializable, Comparable<PersonData> {
    public static final Parcelable.Creator<PersonData> CREATOR = new Parcelable.Creator<PersonData>() { // from class: com.callapp.contacts.model.PersonData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PersonData createFromParcel(Parcel parcel) {
            return new PersonData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PersonData[] newArray(int i) {
            return new PersonData[i];
        }
    };
    private static int personDefaultBgColor = 0;
    private static final long serialVersionUID = -2865544500343608172L;
    private Integer birthdayDayInMonth;
    private Integer birthdayMonth;
    private String headline;
    private String id;
    private String imageUrl;
    private String name;
    private String phone;
    private String publicProfileUrl;
    private int type;
    private String unAccanetName;
    private String userName;

    public PersonData(int i, String str, String str2, String str3, String str4) {
        this.name = str2;
        this.id = str;
        this.publicProfileUrl = str3;
        this.imageUrl = str4;
        this.type = i;
    }

    public PersonData(Parcel parcel) {
        readFromParcel(parcel);
    }

    public PersonData(JSONFBEntity jSONFBEntity) {
        this.name = jSONFBEntity.getName();
        this.id = jSONFBEntity.getId();
        this.publicProfileUrl = jSONFBEntity.getLink();
        this.imageUrl = jSONFBEntity.getProfileImageUrl();
        this.type = 1;
        this.phone = jSONFBEntity.getPhone();
        if (jSONFBEntity.getFormattedBirthday() != null) {
            JSONDate formattedBirthday = jSONFBEntity.getFormattedBirthday();
            this.birthdayDayInMonth = Integer.valueOf(formattedBirthday.getFormattedDay());
            this.birthdayMonth = Integer.valueOf(formattedBirthday.getFormattedMonth());
        }
    }

    public PersonData(VKUser vKUser) {
        this.name = vKUser.getFirstName() + StringUtils.SPACE + vKUser.getLastName();
        this.id = String.valueOf(vKUser.getId());
        this.publicProfileUrl = com.callapp.framework.util.StringUtils.b((CharSequence) vKUser.getScreenName()) ? VKHelper.l(vKUser.getScreenName()) : "";
        this.imageUrl = vKUser.getPhoto();
        this.type = 10;
        this.phone = com.callapp.framework.util.StringUtils.b((CharSequence) vKUser.getMobilePhone()) ? vKUser.getMobilePhone() : vKUser.getHomePhone();
        if (com.callapp.framework.util.StringUtils.b((CharSequence) vKUser.getBirthDate())) {
            Calendar instance = Calendar.getInstance();
            instance.setTime(VKDataUtils.getVKBirthDate(vKUser.getBirthDate()));
            this.birthdayDayInMonth = Integer.valueOf(instance.get(5));
            this.birthdayMonth = Integer.valueOf(instance.get(2));
        }
    }

    public PersonData(User user) {
        this.name = user.name;
        String str = user.screenName;
        this.id = str;
        this.publicProfileUrl = TwitterHelper.k(str);
        this.imageUrl = user.profileImageUrl;
        if (com.callapp.framework.util.StringUtils.b((CharSequence) this.id)) {
            this.headline = "@" + this.id;
        }
        this.type = 4;
    }

    public int compareTo(PersonData personData) {
        int i;
        int i2;
        String str;
        if (personData == null || (i = this.type) < (i2 = personData.type)) {
            return -1;
        }
        if (i <= i2 && (str = this.name) != null) {
            return str.compareToIgnoreCase(personData.name);
        }
        return 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PersonData personData = (PersonData) obj;
        return this.type == personData.type && j.a(this.id, personData.id) && j.a(this.name, personData.name) && j.a(this.userName, personData.userName) && j.a(this.publicProfileUrl, personData.publicProfileUrl) && j.a(this.imageUrl, personData.imageUrl) && j.a(this.headline, personData.headline) && j.a(this.unAccanetName, personData.unAccanetName) && j.a(this.birthdayDayInMonth, personData.birthdayDayInMonth) && j.a(this.birthdayMonth, personData.birthdayMonth) && j.a(this.phone, personData.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public Integer getBackgroundColor() {
        if (personDefaultBgColor == 0) {
            personDefaultBgColor = ThemeUtils.a(CallAppApplication.get(), 2131099784);
        }
        return Integer.valueOf(personDefaultBgColor);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeBackgroundColor() {
        return RemoteAccountHelper.getSocialBadgeBgColor(this.type);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getBadgeResourceId() {
        return RemoteAccountHelper.getSocialBadgeResId(this.type);
    }

    public Integer getBirthdayDayInMonth() {
        return this.birthdayDayInMonth;
    }

    public Integer getBirthdayMonth() {
        return this.birthdayMonth;
    }

    public String getHeadline() {
        return this.headline;
    }

    public String getId() {
        return this.id;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public String getImageUrl() {
        return this.imageUrl;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public String getName() {
        return this.name;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPublicProfileUrl() {
        return this.publicProfileUrl;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public int getResourcePhoto() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl
    public ImageView.ScaleType getScaleType() {
        return ImageView.ScaleType.CENTER;
    }

    public int getType() {
        return this.type;
    }

    public String getUnAccanetName() {
        return this.unAccanetName;
    }

    public String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.name, this.userName, this.publicProfileUrl, this.imageUrl, this.headline, Integer.valueOf(this.type), this.unAccanetName, this.birthdayDayInMonth, this.birthdayMonth, this.phone});
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableDataImpl, com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData
    public boolean isDefaultProfileImageUrl() {
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(getType());
        if (remoteAccountHelper == null) {
            return false;
        }
        return remoteAccountHelper.a(getImageUrl());
    }

    public void readFromParcel(Parcel parcel) {
        this.userName = parcel.readString();
        this.name = parcel.readString();
        this.publicProfileUrl = parcel.readString();
        this.imageUrl = parcel.readString();
        this.headline = parcel.readString();
        this.id = parcel.readString();
        this.type = parcel.readInt();
        this.phone = parcel.readString();
    }

    public void setHeadline(String str) {
        this.headline = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setUnAccanetName(String str) {
        this.unAccanetName = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.userName);
        parcel.writeString(this.name);
        parcel.writeString(this.publicProfileUrl);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.headline);
        parcel.writeString(this.id);
        parcel.writeInt(this.type);
        parcel.writeString(this.phone);
    }
}
