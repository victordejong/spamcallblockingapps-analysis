package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemDetailsData;
import com.callapp.framework.util.StringUtils;
import io.objectbox.BoxStore;
import io.objectbox.converter.PropertyConverter;
import io.objectbox.relation.ToMany;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData.class */
public class PersonalStoreItemUrlData {
    transient BoxStore __boxStore;
    private long id;
    public boolean isUploaded;
    private ArrayList<PersonalStoreItemDetailsData> personalStoreItemDetailsData;
    private PersonalStoreItemType personalStoreItemType;
    private String personalStoreItemUrl;
    private ToMany<PersonalStoreItemUserData> personalStoreItemUserData;
    private int type;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType.class */
    public enum PersonalStoreItemType {
        COVER(0, "Cover"),
        VIDEO_RINGTONE(1, "Video Ringtone");
        
        private final String name;
        private final int value;

        PersonalStoreItemType(int i, String str) {
            this.name = str;
            this.value = i;
        }

        public final String getName() {
            return this.name;
        }

        public final int getValue() {
            return this.value;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "PersonalStoreItemType{name='" + this.name + "', value=" + this.value + '}';
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter.class */
    static class ProductTypeConverter implements PropertyConverter<PersonalStoreItemType, Integer> {
        public Integer convertToDatabaseValue(PersonalStoreItemType personalStoreItemType) {
            if (personalStoreItemType == null) {
                return null;
            }
            return Integer.valueOf(personalStoreItemType.ordinal());
        }

        public PersonalStoreItemType convertToEntityProperty(Integer num) {
            PersonalStoreItemType[] values;
            if (num == null) {
                return null;
            }
            for (PersonalStoreItemType personalStoreItemType : PersonalStoreItemType.values()) {
                if (personalStoreItemType.ordinal() == num.intValue()) {
                    return personalStoreItemType;
                }
            }
            return PersonalStoreItemType.VIDEO_RINGTONE;
        }
    }

    public PersonalStoreItemUrlData() {
        this.personalStoreItemUserData = new ToMany<>(this, PersonalStoreItemUrlData_.personalStoreItemUserData);
        this.isUploaded = false;
        this.personalStoreItemDetailsData = new ArrayList<>();
    }

    public PersonalStoreItemUrlData(long j, String str, int i, PersonalStoreItemType personalStoreItemType, boolean z) {
        this.personalStoreItemUserData = new ToMany<>(this, PersonalStoreItemUrlData_.personalStoreItemUserData);
        this.isUploaded = false;
        this.personalStoreItemDetailsData = new ArrayList<>();
        this.id = j;
        this.personalStoreItemUrl = str;
        this.type = i;
        this.personalStoreItemType = personalStoreItemType;
        this.isUploaded = z;
    }

    public PersonalStoreItemUrlData(String str, int i, PersonalStoreItemType personalStoreItemType) {
        this(str, i, personalStoreItemType, false);
    }

    public PersonalStoreItemUrlData(String str, int i, PersonalStoreItemType personalStoreItemType, boolean z) {
        this.personalStoreItemUserData = new ToMany<>(this, PersonalStoreItemUrlData_.personalStoreItemUserData);
        this.isUploaded = false;
        this.personalStoreItemDetailsData = new ArrayList<>();
        this.personalStoreItemUrl = str;
        this.type = i;
        this.personalStoreItemType = personalStoreItemType;
        this.isUploaded = z;
    }

    public long getId() {
        return this.id;
    }

    public List<String> getNames() {
        ArrayList arrayList = new ArrayList();
        Iterator<PersonalStoreItemDetailsData> it2 = this.personalStoreItemDetailsData.iterator();
        while (it2.hasNext()) {
            PersonalStoreItemDetailsData next = it2.next();
            if (StringUtils.b((CharSequence) next.getName())) {
                arrayList.add(next.getName());
            }
        }
        return arrayList;
    }

    public ArrayList<PersonalStoreItemDetailsData> getPersonalStoreItemDetailsData() {
        return this.personalStoreItemDetailsData;
    }

    public PersonalStoreItemType getPersonalStoreItemType() {
        return this.personalStoreItemType;
    }

    public String getPersonalStoreItemUrl() {
        return this.personalStoreItemUrl;
    }

    public ToMany<PersonalStoreItemUserData> getPersonalStoreItemUserData() {
        return this.personalStoreItemUserData;
    }

    public List<String> getPhotoUrls() {
        ArrayList arrayList = new ArrayList();
        Iterator<PersonalStoreItemDetailsData> it2 = this.personalStoreItemDetailsData.iterator();
        while (it2.hasNext()) {
            PersonalStoreItemDetailsData next = it2.next();
            if (StringUtils.b((CharSequence) next.getPhotoUrl())) {
                arrayList.add(next.getPhotoUrl());
            }
        }
        return arrayList;
    }

    public int getType() {
        return this.type;
    }

    public boolean isUploaded() {
        return this.isUploaded;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setPersonalStoreItemDetailsData(ArrayList<PersonalStoreItemDetailsData> arrayList) {
        this.personalStoreItemDetailsData = arrayList;
    }

    public void setPersonalStoreItemType(PersonalStoreItemType personalStoreItemType) {
        this.personalStoreItemType = personalStoreItemType;
    }

    public void setPersonalStoreItemUrl(String str) {
        this.personalStoreItemUrl = str;
    }

    public void setPersonalStoreItemUserData(ToMany<PersonalStoreItemUserData> toMany) {
        this.personalStoreItemUserData = toMany;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUploaded(boolean z) {
        this.isUploaded = z;
    }

    public String toString() {
        return "PersonalStoreItemUrlData{id=" + this.id + ", personalStoreItemUrl='" + this.personalStoreItemUrl + "', personalStoreItemType=" + this.personalStoreItemType + ", type=" + this.type + ", personalStoreItemUserData=" + this.personalStoreItemUserData + ", isUploaded=" + this.isUploaded + ", personalStoreItemDetailsData=" + this.personalStoreItemDetailsData + '}';
    }
}
