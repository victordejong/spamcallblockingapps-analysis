package com.truecaller.data.dto;

import android.os.Parcel;
import android.os.Parcelable;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p997k3.p999k.C16489a;
import w3.c.a.a.a.k.a;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto.class */
public class ContactDto {
    @b("ads")
    public C16489a campaigns;
    public List<Contact> data = new ArrayList();
    public Pagination pagination;

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact.class */
    public static class Contact extends Row {
        public static final Parcelable.Creator<Contact> CREATOR = new Parcelable.Creator<Contact>() { // from class: com.truecaller.data.dto.ContactDto.Contact.1
            @Override // android.os.Parcelable.Creator
            public Contact createFromParcel(Parcel parcel) {
                return new Contact(parcel, false);
            }

            @Override // android.os.Parcelable.Creator
            public Contact[] newArray(int i) {
                return new Contact[i];
            }
        };
        public String about;
        public String access;
        public List<Address> addresses;
        public transient long aggregatedRowId;
        public String altName;
        public List<String> badges;
        public transient Business business;
        @b("businessProfile")
        @Deprecated
        public BusinessProfile businessProfileNetworkResponse;
        public Number cacheTtl;
        public transient int commonConnections;
        public String companyName;
        public transient String defaultNumber;
        public transient int favoritePosition;
        public String gender;
        public String handle;

        /* renamed from: id */
        public String f11490id;
        public String imId;
        public String image;
        public List<InternetAddress> internetAddresses;
        public transient boolean isFavorite;
        public String jobTitle;
        public String name;
        public NameFeedback nameFeedback;
        public transient Note note;
        public transient long phonebookHash;
        public transient long phonebookId;
        public transient String phonebookLookupKey;
        public List<PhoneNumber> phones;
        public Number score;
        public transient String searchQuery;
        public transient long searchTime;
        public List<SearchWarning> searchWarnings;
        public transient int source;
        public List<Source> sources;
        public transient String spamCategoryIds;
        public transient SpamData spamData;
        public SpamInfo spamInfo;
        public transient Number spamScore;
        public transient String spamType;
        public transient StructuredName structuredName;
        public transient Style style;
        public List<Survey> surveys;
        public List<Tag> tags;
        public transient int tcFlag;
        public String transliteratedName;

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Address.class */
        public static class Address extends Row {
            public static final Parcelable.Creator<Address> CREATOR = new Parcelable.Creator<Address>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Address.1
                @Override // android.os.Parcelable.Creator
                public Address createFromParcel(Parcel parcel) {
                    return new Address(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Address[] newArray(int i) {
                    return new Address[i];
                }
            };
            public String area;
            public String city;
            public String countryCode;
            public Number latitude;
            public Number longitude;
            public String street;
            public String timeZone;
            public String type;
            public String zipCode;

            public Address() {
            }

            private Address(Parcel parcel, boolean z) {
                super(parcel);
                this.type = parcel.readString();
                this.street = parcel.readString();
                this.zipCode = parcel.readString();
                this.city = parcel.readString();
                this.area = parcel.readString();
                this.countryCode = parcel.readString();
                this.timeZone = parcel.readString();
                this.latitude = readNumber(parcel);
                this.longitude = readNumber(parcel);
                if (z) {
                    parcel.recycle();
                }
            }

            public Address(Address address) {
                this(ContactDto.readableParcel(address), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Address{type='");
                C22128a.m8678P0(m8728C, this.type, '\'', ", countryCode='");
                C22128a.m8678P0(m8728C, this.countryCode, '\'', ", timeZone='");
                C22128a.m8678P0(m8728C, this.timeZone, '\'', ", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                return C22128a.m8701I2(m8728C, this.source, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.type);
                parcel.writeString(this.street);
                parcel.writeString(this.zipCode);
                parcel.writeString(this.city);
                parcel.writeString(this.area);
                parcel.writeString(this.countryCode);
                parcel.writeString(this.timeZone);
                writeNumber(parcel, this.latitude);
                writeNumber(parcel, this.longitude);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Business.class */
        public static class Business extends Row {
            public static final Parcelable.Creator<Business> CREATOR = new Parcelable.Creator<Business>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Business.1
                @Override // android.os.Parcelable.Creator
                public Business createFromParcel(Parcel parcel) {
                    return new Business(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Business[] newArray(int i) {
                    return new Business[i];
                }
            };
            public String appStores;
            public String branch;
            public String brandedMedia;
            public String companySize;
            public String department;
            public String landline;
            public String mediaCallerIDs;
            public String openingHours;
            public String score;
            public String swishNumber;

            public Business() {
            }

            private Business(Parcel parcel, boolean z) {
                super(parcel);
                this.branch = parcel.readString();
                this.department = parcel.readString();
                this.companySize = parcel.readString();
                this.openingHours = parcel.readString();
                this.landline = parcel.readString();
                this.score = parcel.readString();
                this.swishNumber = parcel.readString();
                this.mediaCallerIDs = parcel.readString();
                this.appStores = parcel.readString();
                this.brandedMedia = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public Business(Business business) {
                this(ContactDto.readableParcel(business), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Business{branch='");
                C22128a.m8678P0(m8728C, this.branch, '\'', ", department='");
                C22128a.m8678P0(m8728C, this.department, '\'', ", companySize='");
                C22128a.m8678P0(m8728C, this.companySize, '\'', ", openingHours='");
                C22128a.m8678P0(m8728C, this.openingHours, '\'', ", landline='");
                C22128a.m8678P0(m8728C, this.landline, '\'', ", score='");
                C22128a.m8678P0(m8728C, this.score, '\'', ", swishNumber='");
                C22128a.m8678P0(m8728C, this.swishNumber, '\'', ", mediaCallerIDs='");
                C22128a.m8678P0(m8728C, this.mediaCallerIDs, '\'', ", appStores='");
                C22128a.m8678P0(m8728C, this.appStores, '\'', ", brandedMedia='");
                return C22128a.m8626f(m8728C, this.brandedMedia, '\'', '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.branch);
                parcel.writeString(this.department);
                parcel.writeString(this.companySize);
                parcel.writeString(this.openingHours);
                parcel.writeString(this.landline);
                parcel.writeString(this.score);
                parcel.writeString(this.swishNumber);
                parcel.writeString(this.mediaCallerIDs);
                parcel.writeString(this.appStores);
                parcel.writeString(this.brandedMedia);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$BusinessProfile.class */
        public static class BusinessProfile {
            public List<AppStores> appStores;
            public String backgroundColor;
            public String branch;
            public List<BrandedMedia> brandedMedia;
            public String companySize;
            public String department;
            public List<String> imageUrls;
            public String landLine;
            public List<MediaCallerIDs> mediaCallerIDs;
            public List<OpenHours> openHours;
            public String score;
            public String swishNumber;

            /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$BusinessProfile$AppStores.class */
            public static class AppStores {
                public String linkType;
                public String url;

                public String toString() {
                    StringBuilder m8728C = C22128a.m8728C("AppStores{url=");
                    m8728C.append(this.url);
                    m8728C.append(" linkType");
                    return C22128a.m8630e(m8728C, this.linkType, '}');
                }
            }

            /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$BusinessProfile$BrandedMedia.class */
            public static class BrandedMedia {
                public String mediaType;
                public String url;

                public String toString() {
                    StringBuilder m8728C = C22128a.m8728C("BrandedMedia{url=");
                    m8728C.append(this.url);
                    m8728C.append(" mediaType");
                    return C22128a.m8630e(m8728C, this.mediaType, '}');
                }
            }

            /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs.class */
            public static class MediaCallerIDs {
                public String mediaType;
                public String orientation;
                public Long ttl;
                public String url;

                public String toString() {
                    StringBuilder m8728C = C22128a.m8728C("MediaCallerIds{url='");
                    C22128a.m8678P0(m8728C, this.url, '\'', ", mediaType='");
                    C22128a.m8678P0(m8728C, this.mediaType, '\'', ", orientation='");
                    C22128a.m8678P0(m8728C, this.orientation, '\'', ", ttl=");
                    m8728C.append(this.ttl);
                    m8728C.append('}');
                    return m8728C.toString();
                }
            }

            /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours.class */
            public static class OpenHours {
                public String closes;
                public String opens;
                public List<Integer> weekdays;

                public String toString() {
                    StringBuilder m8728C = C22128a.m8728C("OpenHours{weekdays=");
                    m8728C.append(this.weekdays);
                    m8728C.append(", opens='");
                    C22128a.m8678P0(m8728C, this.opens, '\'', ", closes='");
                    return C22128a.m8626f(m8728C, this.closes, '\'', '}');
                }
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("BusinessProfile{companySize='");
                C22128a.m8678P0(m8728C, this.companySize, '\'', ", branch='");
                C22128a.m8678P0(m8728C, this.branch, '\'', ", department='");
                C22128a.m8678P0(m8728C, this.department, '\'', ", swishNumber='");
                C22128a.m8678P0(m8728C, this.swishNumber, '\'', ", landLine='");
                C22128a.m8678P0(m8728C, this.landLine, '\'', ", backgroundColor='");
                C22128a.m8678P0(m8728C, this.backgroundColor, '\'', ", imageUrls=");
                m8728C.append(this.imageUrls);
                m8728C.append(", score='");
                C22128a.m8678P0(m8728C, this.score, '\'', ", openHours=");
                m8728C.append(this.openHours);
                m8728C.append(", mediaCallerIDs=");
                m8728C.append(this.mediaCallerIDs);
                m8728C.append(", appStores=");
                m8728C.append(this.appStores);
                m8728C.append(", brandedMedia=");
                m8728C.append(this.brandedMedia);
                m8728C.append('}');
                return m8728C.toString();
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$InternetAddress.class */
        public static class InternetAddress extends Row {
            public static final Parcelable.Creator<InternetAddress> CREATOR = new Parcelable.Creator<InternetAddress>() { // from class: com.truecaller.data.dto.ContactDto.Contact.InternetAddress.1
                @Override // android.os.Parcelable.Creator
                public InternetAddress createFromParcel(Parcel parcel) {
                    return new InternetAddress(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public InternetAddress[] newArray(int i) {
                    return new InternetAddress[i];
                }
            };
            public String caption;

            /* renamed from: id */
            public String f11491id;
            public String service;
            public String type;

            public InternetAddress() {
            }

            private InternetAddress(Parcel parcel, boolean z) {
                super(parcel);
                this.type = parcel.readString();
                this.f11491id = parcel.readString();
                this.service = parcel.readString();
                this.caption = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public InternetAddress(InternetAddress internetAddress) {
                this(ContactDto.readableParcel(internetAddress), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("InternetAddress{type='");
                C22128a.m8678P0(m8728C, this.type, '\'', ", id='");
                C22128a.m8678P0(m8728C, this.f11491id, '\'', ", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                return C22128a.m8701I2(m8728C, this.source, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.type);
                parcel.writeString(this.f11491id);
                parcel.writeString(this.service);
                parcel.writeString(this.caption);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$NameFeedback.class */
        public static class NameFeedback extends Row {
            public static final Parcelable.Creator<NameFeedback> CREATOR = new Parcelable.Creator<NameFeedback>() { // from class: com.truecaller.data.dto.ContactDto.Contact.NameFeedback.1
                @Override // android.os.Parcelable.Creator
                public NameFeedback createFromParcel(Parcel parcel) {
                    return new NameFeedback(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public NameFeedback[] newArray(int i) {
                    return new NameFeedback[i];
                }
            };
            public String nameElectionAlgo;
            public Number nameSource;

            public NameFeedback() {
            }

            private NameFeedback(Parcel parcel, boolean z) {
                super(parcel);
                this.nameSource = readNumber(parcel);
                this.nameElectionAlgo = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public NameFeedback(NameFeedback nameFeedback) {
                this(ContactDto.readableParcel(nameFeedback), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("NameFeedback{nameSource='");
                m8728C.append(this.nameSource);
                m8728C.append('\'');
                m8728C.append(", nameElectionAlgo='");
                C22128a.m8678P0(m8728C, this.nameElectionAlgo, '\'', ", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                return C22128a.m8701I2(m8728C, this.source, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                writeNumber(parcel, this.nameSource);
                parcel.writeString(this.nameElectionAlgo);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Note.class */
        public static class Note extends Row {
            public static final Parcelable.Creator<Note> CREATOR = new Parcelable.Creator<Note>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Note.1
                @Override // android.os.Parcelable.Creator
                public Note createFromParcel(Parcel parcel) {
                    return new Note(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Note[] newArray(int i) {
                    return new Note[i];
                }
            };
            public String note;

            public Note() {
            }

            private Note(Parcel parcel, boolean z) {
                super(parcel);
                this.note = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public Note(Note note) {
                this(ContactDto.readableParcel(note), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Note{note='");
                C22128a.m8678P0(m8728C, this.note, '\'', ", rowId='");
                m8728C.append(this.rowId);
                m8728C.append('\'');
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary='");
                m8728C.append(this.isPrimary);
                m8728C.append('\'');
                m8728C.append(", phonebookId='");
                m8728C.append(this.phonebookId);
                m8728C.append('\'');
                m8728C.append(", source='");
                m8728C.append(this.source);
                m8728C.append('\'');
                m8728C.append('}');
                return m8728C.toString();
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.note);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$PhoneNumber.class */
        public static class PhoneNumber extends Row {
            public static final Parcelable.Creator<PhoneNumber> CREATOR = new Parcelable.Creator<PhoneNumber>() { // from class: com.truecaller.data.dto.ContactDto.Contact.PhoneNumber.1
                @Override // android.os.Parcelable.Creator
                public PhoneNumber createFromParcel(Parcel parcel) {
                    return new PhoneNumber(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public PhoneNumber[] newArray(int i) {
                    return new PhoneNumber[i];
                }
            };
            public static int EMPTY_TEL_TYPE = -1;
            public String carrier;
            public String countryCode;
            public String dialingCode;
            public String e164Format;

            /* renamed from: id */
            public String f11492id;
            public String nationalFormat;
            public String numberType;
            public transient String rawNumberFormat;
            public String spamScore;
            public String spamType;
            public String telType;
            public transient String telTypeLabel;
            public String type;

            public PhoneNumber() {
            }

            private PhoneNumber(Parcel parcel, boolean z) {
                super(parcel);
                this.f11492id = parcel.readString();
                this.type = parcel.readString();
                this.e164Format = parcel.readString();
                this.nationalFormat = parcel.readString();
                this.dialingCode = parcel.readString();
                this.countryCode = parcel.readString();
                this.numberType = parcel.readString();
                this.carrier = parcel.readString();
                this.telType = parcel.readString();
                this.spamScore = parcel.readString();
                this.spamType = parcel.readString();
                this.rawNumberFormat = parcel.readString();
                this.telTypeLabel = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public PhoneNumber(PhoneNumber phoneNumber) {
                this(ContactDto.readableParcel(phoneNumber), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("PhoneNumber{id='");
                C22128a.m8678P0(m8728C, this.f11492id, '\'', ", type='");
                C22128a.m8678P0(m8728C, this.type, '\'', ", countryCode='");
                C22128a.m8678P0(m8728C, this.countryCode, '\'', ", numberType='");
                C22128a.m8678P0(m8728C, this.numberType, '\'', ", telType='");
                C22128a.m8678P0(m8728C, this.telType, '\'', ", spamScore='");
                C22128a.m8678P0(m8728C, this.spamScore, '\'', ", spamType='");
                C22128a.m8678P0(m8728C, this.spamType, '\'', ", telTypeLabel='");
                C22128a.m8678P0(m8728C, this.telTypeLabel, '\'', ", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                return C22128a.m8701I2(m8728C, this.source, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.f11492id);
                parcel.writeString(this.type);
                parcel.writeString(this.e164Format);
                parcel.writeString(this.nationalFormat);
                parcel.writeString(this.dialingCode);
                parcel.writeString(this.countryCode);
                parcel.writeString(this.numberType);
                parcel.writeString(this.carrier);
                parcel.writeString(this.telType);
                parcel.writeString(this.spamScore);
                parcel.writeString(this.spamType);
                parcel.writeString(this.rawNumberFormat);
                parcel.writeString(this.telTypeLabel);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$SearchWarning.class */
        public static class SearchWarning extends Row {
            public static final Parcelable.Creator<SearchWarning> CREATOR = new Parcelable.Creator<SearchWarning>() { // from class: com.truecaller.data.dto.ContactDto.Contact.SearchWarning.1
                @Override // android.os.Parcelable.Creator
                public SearchWarning createFromParcel(Parcel parcel) {
                    return new SearchWarning(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public SearchWarning[] newArray(int i) {
                    return new SearchWarning[i];
                }
            };
            public List<Feature> features;

            /* renamed from: id */
            public String f11493id;
            public String ruleName;

            /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature.class */
            public static class Feature extends Row {
                public static final Parcelable.Creator<Feature> CREATOR = new Parcelable.Creator<Feature>() { // from class: com.truecaller.data.dto.ContactDto.Contact.SearchWarning.Feature.1
                    @Override // android.os.Parcelable.Creator
                    public Feature createFromParcel(Parcel parcel) {
                        return new Feature(parcel, false);
                    }

                    @Override // android.os.Parcelable.Creator
                    public Feature[] newArray(int i) {
                        return new Feature[i];
                    }
                };
                public String name;
                public String value;

                public Feature() {
                }

                private Feature(Parcel parcel, boolean z) {
                    super(parcel);
                    this.name = parcel.readString();
                    this.value = parcel.readString();
                    if (z) {
                        parcel.recycle();
                    }
                }

                public Feature(Feature feature) {
                    this(ContactDto.readableParcel(feature), true);
                }

                public boolean equals(Object obj) {
                    boolean z = true;
                    if (this == obj) {
                        return true;
                    }
                    if (obj == null || getClass() != obj.getClass()) {
                        return false;
                    }
                    Feature feature = (Feature) obj;
                    if (!Objects.equals(this.name, feature.name) || !Objects.equals(this.value, feature.value)) {
                        z = false;
                    }
                    return z;
                }

                public int hashCode() {
                    return Objects.hash(this.name, this.value);
                }

                public String toString() {
                    StringBuilder m8728C = C22128a.m8728C("Feature{name='");
                    C22128a.m8678P0(m8728C, this.name, '\'', ", value='");
                    return C22128a.m8626f(m8728C, this.value, '\'', '}');
                }

                @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
                public void writeToParcel(Parcel parcel, int i) {
                    super.writeToParcel(parcel, i);
                    parcel.writeString(this.name);
                    parcel.writeString(this.value);
                }
            }

            public SearchWarning() {
            }

            private SearchWarning(Parcel parcel, boolean z) {
                super(parcel);
                this.f11493id = parcel.readString();
                this.features = readList(parcel, Feature.CREATOR);
                this.ruleName = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public SearchWarning(SearchWarning searchWarning) {
                this(ContactDto.readableParcel(searchWarning), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("SearchWarning{id='");
                C22128a.m8678P0(m8728C, this.f11493id, '\'', ", features=");
                m8728C.append(this.features);
                m8728C.append(", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                m8728C.append(this.source);
                m8728C.append(", ruleName=");
                return C22128a.m8630e(m8728C, this.ruleName, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.f11493id);
                parcel.writeTypedList(this.features);
                parcel.writeString(this.ruleName);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Source.class */
        public static class Source extends Row {
            public static final Parcelable.Creator<Source> CREATOR = new Parcelable.Creator<Source>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Source.1
                @Override // android.os.Parcelable.Creator
                public Source createFromParcel(Parcel parcel) {
                    return new Source(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Source[] newArray(int i) {
                    return new Source[i];
                }
            };
            public String caption;
            public Map<String, String> extra;

            /* renamed from: id */
            public String f11494id;
            public String logo;
            public String url;

            public Source() {
            }

            private Source(Parcel parcel, boolean z) {
                super(parcel);
                this.f11494id = parcel.readString();
                this.url = parcel.readString();
                this.logo = parcel.readString();
                this.caption = parcel.readString();
                int readInt = parcel.readInt();
                if (readInt > -1) {
                    this.extra = new HashMap();
                    for (int i = 0; i < readInt; i++) {
                        this.extra.put(parcel.readString(), parcel.readString());
                    }
                }
                if (z) {
                    parcel.recycle();
                }
            }

            public Source(Source source) {
                this(ContactDto.readableParcel(source), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Source{id='");
                C22128a.m8678P0(m8728C, this.f11494id, '\'', ", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                return C22128a.m8701I2(m8728C, this.source, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.f11494id);
                parcel.writeString(this.url);
                parcel.writeString(this.logo);
                parcel.writeString(this.caption);
                Map<String, String> map = this.extra;
                parcel.writeInt(map == null ? -1 : map.size());
                Map<String, String> map2 = this.extra;
                if (map2 != null) {
                    for (Map.Entry<String, String> entry : map2.entrySet()) {
                        parcel.writeString(entry.getKey());
                        parcel.writeString(entry.getValue());
                    }
                }
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$SpamData.class */
        public static class SpamData extends Row {
            public static final Parcelable.Creator<SpamData> CREATOR = new Parcelable.Creator<SpamData>() { // from class: com.truecaller.data.dto.ContactDto.Contact.SpamData.1
                @Override // android.os.Parcelable.Creator
                public SpamData createFromParcel(Parcel parcel) {
                    return new SpamData(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public SpamData[] newArray(int i) {
                    return new SpamData[i];
                }
            };
            public Number numCalls60DaysPointerPosition;
            public Number numCalls60days;
            public String numCallsHourly;
            public Number numReports60days;
            public Integer spamVersion;

            public SpamData() {
            }

            private SpamData(Parcel parcel, boolean z) {
                super(parcel);
                this.numReports60days = readNumber(parcel);
                this.numCalls60days = readNumber(parcel);
                this.numCalls60DaysPointerPosition = readNumber(parcel);
                this.numCallsHourly = parcel.readString();
                String readString = parcel.readString();
                this.spamVersion = readString == null ? null : Integer.valueOf(a.g(readString));
                if (z) {
                    parcel.recycle();
                }
            }

            public SpamData(SpamData spamData) {
                this(ContactDto.readableParcel(spamData), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("SpamData{numReports60days=");
                m8728C.append(this.numReports60days);
                m8728C.append(", numCallsHourly='");
                C22128a.m8678P0(m8728C, this.numCallsHourly, '\'', ", numCalls60days=");
                m8728C.append(this.numCalls60days);
                m8728C.append(", numCalls60DaysPointerPosition=");
                m8728C.append(this.numCalls60DaysPointerPosition);
                m8728C.append(", rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                m8728C.append(this.source);
                m8728C.append(", spamVersion=");
                m8728C.append(this.spamVersion);
                m8728C.append('}');
                return m8728C.toString();
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                writeNumber(parcel, this.numReports60days);
                writeNumber(parcel, this.numCalls60days);
                writeNumber(parcel, this.numCalls60DaysPointerPosition);
                parcel.writeString(this.numCallsHourly);
                Integer num = this.spamVersion;
                parcel.writeString(num == null ? null : String.valueOf(num));
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$SpamInfo.class */
        public static class SpamInfo {
            public List<Integer> spamCategories;
            public Integer spamScore;
            public SpamStats spamStats;
            public String spamType;
            public Integer spamVersion;

            /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$SpamInfo$SpamStats.class */
            public static class SpamStats {
                public Integer numCalls60DaysPointerPosition;
                public Integer numCalls60days;
                public List<Integer> numCallsHourly;
                public Integer numReports60days;

                public String toString() {
                    StringBuilder m8728C = C22128a.m8728C("SpamStats{numReports60days=");
                    m8728C.append(this.numReports60days);
                    m8728C.append(", numCalls60days=");
                    m8728C.append(this.numCalls60days);
                    m8728C.append(", numCalls60DaysPointerPosition=");
                    m8728C.append(this.numCalls60DaysPointerPosition);
                    m8728C.append(", numCallsHourly=");
                    m8728C.append(this.numCallsHourly);
                    m8728C.append('}');
                    return m8728C.toString();
                }
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("SpamInfo{spamScore=");
                m8728C.append(this.spamScore);
                m8728C.append(", spamType='");
                C22128a.m8678P0(m8728C, this.spamType, '\'', ", spamStats=");
                m8728C.append(this.spamStats);
                m8728C.append(", spamCategories=");
                m8728C.append(this.spamCategories);
                m8728C.append(", spamVersion=");
                m8728C.append(this.spamVersion);
                m8728C.append('}');
                return m8728C.toString();
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$StructuredName.class */
        public static class StructuredName extends Row {
            public static final Parcelable.Creator<StructuredName> CREATOR = new Parcelable.Creator<StructuredName>() { // from class: com.truecaller.data.dto.ContactDto.Contact.StructuredName.1
                @Override // android.os.Parcelable.Creator
                public StructuredName createFromParcel(Parcel parcel) {
                    return new StructuredName(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public StructuredName[] newArray(int i) {
                    return new StructuredName[i];
                }
            };
            public String familyName;
            public String givenName;
            public String middleName;

            public StructuredName() {
            }

            private StructuredName(Parcel parcel, boolean z) {
                super(parcel);
                this.givenName = parcel.readString();
                this.familyName = parcel.readString();
                this.middleName = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public StructuredName(StructuredName structuredName) {
                this(ContactDto.readableParcel(structuredName), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("StructuredName{givenName='");
                C22128a.m8678P0(m8728C, this.givenName, '\'', ", familyName='");
                C22128a.m8678P0(m8728C, this.familyName, '\'', ", middleName='");
                return C22128a.m8626f(m8728C, this.middleName, '\'', '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.givenName);
                parcel.writeString(this.familyName);
                parcel.writeString(this.middleName);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Style.class */
        public static class Style extends Row {
            public static final Parcelable.Creator<Style> CREATOR = new Parcelable.Creator<Style>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Style.1
                @Override // android.os.Parcelable.Creator
                public Style createFromParcel(Parcel parcel) {
                    return new Style(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Style[] newArray(int i) {
                    return new Style[i];
                }
            };
            public String backgroundColor;
            public String imageUrls;

            public Style() {
            }

            private Style(Parcel parcel, boolean z) {
                super(parcel);
                this.backgroundColor = parcel.readString();
                this.imageUrls = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public Style(Style style) {
                this(ContactDto.readableParcel(style), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Style{backgroundColor='");
                C22128a.m8678P0(m8728C, this.backgroundColor, '\'', ", imageUrls='");
                return C22128a.m8626f(m8728C, this.imageUrls, '\'', '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.backgroundColor);
                parcel.writeString(this.imageUrls);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Survey.class */
        public static class Survey extends Row {
            public static final Parcelable.Creator<Survey> CREATOR = new Parcelable.Creator<Survey>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Survey.1
                @Override // android.os.Parcelable.Creator
                public Survey createFromParcel(Parcel parcel) {
                    return new Survey(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Survey[] newArray(int i) {
                    return new Survey[i];
                }
            };
            public Long frequency;

            /* renamed from: id */
            public String f11495id;
            public String passthroughData;

            public Survey() {
            }

            private Survey(Parcel parcel, boolean z) {
                super(parcel);
                this.f11495id = parcel.readString();
                this.frequency = Long.valueOf(parcel.readLong());
                this.passthroughData = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public Survey(Survey survey) {
                this(ContactDto.readableParcel(survey), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Survey{id='");
                C22128a.m8678P0(m8728C, this.f11495id, '\'', ", frequency=");
                m8728C.append(this.frequency);
                m8728C.append(", passthroughData='");
                return C22128a.m8626f(m8728C, this.passthroughData, '\'', '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.f11495id);
                parcel.writeLong(this.frequency.longValue());
                parcel.writeString(this.passthroughData);
            }
        }

        /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Contact$Tag.class */
        public static class Tag extends Row {
            public static final Parcelable.Creator<Tag> CREATOR = new Parcelable.Creator<Tag>() { // from class: com.truecaller.data.dto.ContactDto.Contact.Tag.1
                @Override // android.os.Parcelable.Creator
                public Tag createFromParcel(Parcel parcel) {
                    return new Tag(parcel, false);
                }

                @Override // android.os.Parcelable.Creator
                public Tag[] newArray(int i) {
                    return new Tag[i];
                }
            };
            public String tag;

            public Tag() {
            }

            private Tag(Parcel parcel, boolean z) {
                super(parcel);
                this.tag = parcel.readString();
                if (z) {
                    parcel.recycle();
                }
            }

            public Tag(Tag tag) {
                this(ContactDto.readableParcel(tag), true);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Tag{rowId=");
                m8728C.append(this.rowId);
                m8728C.append(", tcId='");
                C22128a.m8678P0(m8728C, this.tcId, '\'', ", isPrimary=");
                m8728C.append(this.isPrimary);
                m8728C.append(", phonebookId=");
                m8728C.append(this.phonebookId);
                m8728C.append(", source=");
                return C22128a.m8701I2(m8728C, this.source, '}');
            }

            @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeString(this.tag);
            }
        }

        public Contact() {
            this.favoritePosition = -1;
        }

        private Contact(Parcel parcel, boolean z) {
            super(parcel);
            this.favoritePosition = -1;
            this.f11490id = parcel.readString();
            this.name = parcel.readString();
            this.transliteratedName = parcel.readString();
            this.handle = parcel.readString();
            this.altName = parcel.readString();
            this.gender = parcel.readString();
            this.about = parcel.readString();
            this.image = parcel.readString();
            this.jobTitle = parcel.readString();
            this.companyName = parcel.readString();
            this.access = parcel.readString();
            this.score = readNumber(parcel);
            this.cacheTtl = readNumber(parcel);
            this.phones = readList(parcel, PhoneNumber.CREATOR);
            this.addresses = readList(parcel, Address.CREATOR);
            this.internetAddresses = readList(parcel, InternetAddress.CREATOR);
            this.badges = readStringList(parcel);
            this.tags = readList(parcel, Tag.CREATOR);
            this.sources = readList(parcel, Source.CREATOR);
            this.searchTime = parcel.readLong();
            this.searchQuery = parcel.readString();
            this.source = parcel.readInt();
            this.commonConnections = parcel.readInt();
            this.aggregatedRowId = parcel.readLong();
            this.phonebookId = parcel.readLong();
            this.phonebookHash = parcel.readLong();
            this.phonebookLookupKey = parcel.readString();
            this.defaultNumber = parcel.readString();
            this.isFavorite = parcel.readInt() != 1 ? false : true;
            this.favoritePosition = parcel.readInt();
            this.tcFlag = parcel.readInt();
            this.structuredName = (StructuredName) parcel.readParcelable(StructuredName.class.getClassLoader());
            this.note = (Note) parcel.readParcelable(Note.class.getClassLoader());
            this.business = (Business) parcel.readParcelable(Business.class.getClassLoader());
            this.style = (Style) parcel.readParcelable(Style.class.getClassLoader());
            this.nameFeedback = (NameFeedback) parcel.readParcelable(NameFeedback.class.getClassLoader());
            this.spamData = (SpamData) parcel.readParcelable(SpamData.class.getClassLoader());
            this.spamScore = readNumber(parcel);
            this.spamType = parcel.readString();
            this.spamCategoryIds = parcel.readString();
            this.searchWarnings = readList(parcel, SearchWarning.CREATOR);
            this.surveys = readList(parcel, Survey.CREATOR);
            if (z) {
                parcel.recycle();
            }
        }

        public Contact(Contact contact) {
            this(ContactDto.readableParcel(contact), true);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Contact{id='");
            C22128a.m8678P0(m8728C, this.f11490id, '\'', ", phones=");
            m8728C.append(this.phones);
            m8728C.append(", addresses=");
            m8728C.append(this.addresses);
            m8728C.append(", internetAddresses=");
            m8728C.append(this.internetAddresses);
            m8728C.append(", tags=");
            m8728C.append(this.tags);
            m8728C.append(", sources=");
            m8728C.append(this.sources);
            m8728C.append(", source=");
            m8728C.append(this.source);
            m8728C.append(", commonConnections=");
            m8728C.append(this.commonConnections);
            m8728C.append(", searchTime=");
            m8728C.append(this.searchTime);
            m8728C.append(", aggregatedRowId=");
            m8728C.append(this.aggregatedRowId);
            m8728C.append(", phonebookId=");
            m8728C.append(this.phonebookId);
            m8728C.append(", phonebookHash=");
            m8728C.append(this.phonebookHash);
            m8728C.append(", isFavorite=");
            m8728C.append(this.isFavorite);
            m8728C.append(", favoritePosition=");
            m8728C.append(this.favoritePosition);
            m8728C.append(", tcFlag=");
            m8728C.append(this.tcFlag);
            m8728C.append(", structuredName=");
            m8728C.append(this.structuredName);
            m8728C.append(", note=");
            m8728C.append(this.note);
            m8728C.append(", business=");
            m8728C.append(this.business);
            m8728C.append(", style=");
            m8728C.append(this.style);
            m8728C.append(", nameFeedback=");
            m8728C.append(this.nameFeedback);
            m8728C.append(", cacheTtl=");
            m8728C.append(this.cacheTtl);
            m8728C.append(", spamData=");
            m8728C.append(this.spamData);
            m8728C.append(", spamScore=");
            m8728C.append(this.spamScore);
            m8728C.append(", spamType=");
            m8728C.append(this.spamType);
            m8728C.append(", searchWarnings=");
            m8728C.append(this.searchWarnings);
            m8728C.append(", surveys=");
            m8728C.append(this.surveys);
            m8728C.append('}');
            return m8728C.toString();
        }

        @Override // com.truecaller.data.dto.ContactDto.Row, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f11490id);
            parcel.writeString(this.name);
            parcel.writeString(this.transliteratedName);
            parcel.writeString(this.handle);
            parcel.writeString(this.altName);
            parcel.writeString(this.gender);
            parcel.writeString(this.about);
            parcel.writeString(this.image);
            parcel.writeString(this.jobTitle);
            parcel.writeString(this.companyName);
            parcel.writeString(this.access);
            writeNumber(parcel, this.score);
            writeNumber(parcel, this.cacheTtl);
            parcel.writeTypedList(this.phones);
            parcel.writeTypedList(this.addresses);
            parcel.writeTypedList(this.internetAddresses);
            parcel.writeStringList(this.badges);
            parcel.writeTypedList(this.tags);
            parcel.writeTypedList(this.sources);
            parcel.writeLong(this.searchTime);
            parcel.writeString(this.searchQuery);
            parcel.writeInt(this.source);
            parcel.writeInt(this.commonConnections);
            parcel.writeLong(this.aggregatedRowId);
            parcel.writeLong(this.phonebookId);
            parcel.writeLong(this.phonebookHash);
            parcel.writeString(this.phonebookLookupKey);
            parcel.writeString(this.defaultNumber);
            parcel.writeInt(this.isFavorite ? 1 : 0);
            parcel.writeInt(this.favoritePosition);
            parcel.writeInt(this.tcFlag);
            parcel.writeParcelable(this.structuredName, i);
            parcel.writeParcelable(this.note, i);
            parcel.writeParcelable(this.business, i);
            parcel.writeParcelable(this.style, i);
            parcel.writeParcelable(this.nameFeedback, i);
            parcel.writeParcelable(this.spamData, i);
            writeNumber(parcel, this.spamScore);
            parcel.writeString(this.spamType);
            parcel.writeString(this.spamCategoryIds);
            parcel.writeTypedList(this.searchWarnings);
            parcel.writeTypedList(this.surveys);
        }
    }

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Pagination.class */
    public static class Pagination {
        public String next;
        public String pageId;
        public String prev;

        public Pagination(String str, String str2, String str3) {
            this.prev = str;
            this.pageId = str2;
            this.next = str3;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Pagination{prev='");
            C22128a.m8678P0(m8728C, this.prev, '\'', ", next='");
            C22128a.m8678P0(m8728C, this.next, '\'', ", pageId='");
            return C22128a.m8626f(m8728C, this.pageId, '\'', '}');
        }
    }

    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/dto/ContactDto$Row.class */
    public static abstract class Row implements Parcelable {
        public transient boolean isPrimary;
        public transient long phonebookId;
        public transient long rowId;
        public transient int source;
        public transient String tcId;

        public Row() {
        }

        public Row(Parcel parcel) {
            this.rowId = parcel.readLong();
            this.tcId = parcel.readString();
            this.isPrimary = parcel.readInt() != 1 ? false : true;
            this.phonebookId = parcel.readLong();
            this.source = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public <T extends Parcelable> List<T> readList(Parcel parcel, Parcelable.Creator<T> creator) {
            ArrayList arrayList = new ArrayList();
            parcel.readTypedList(arrayList, creator);
            ArrayList arrayList2 = arrayList;
            if (arrayList.isEmpty()) {
                arrayList2 = null;
            }
            return arrayList2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:113:0x0291, code lost:
            if (r12 != false) goto L170;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0226, code lost:
            if (r0 == 'l') goto L87;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Number readNumber(android.os.Parcel r6) {
            /*
                Method dump skipped, instructions count: 972
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.data.dto.ContactDto.Row.readNumber(android.os.Parcel):java.lang.Number");
        }

        public List<String> readStringList(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            ArrayList arrayList2 = arrayList;
            if (arrayList.isEmpty()) {
                arrayList2 = null;
            }
            return arrayList2;
        }

        public void writeNumber(Parcel parcel, Number number) {
            parcel.writeString(number == null ? null : String.valueOf(number));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.rowId);
            parcel.writeString(this.tcId);
            parcel.writeInt(this.isPrimary ? 1 : 0);
            parcel.writeLong(this.phonebookId);
            parcel.writeInt(this.source);
        }
    }

    public static Parcel readableParcel(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        return obtain;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContactDto{data=");
        m8728C.append(this.data);
        m8728C.append(", campaigns=");
        m8728C.append(this.campaigns);
        m8728C.append(", pagination=");
        m8728C.append(this.pagination);
        m8728C.append('}');
        return m8728C.toString();
    }
}
