package com.truecaller.api.services.callerid.p135v1.model;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1240a.p1241a.p1242c.AbstractC20440b;
/* renamed from: com.truecaller.api.services.callerid.v1.model.BusinessCard */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/BusinessCard.class */
public final class BusinessCard extends GeneratedMessageLite<BusinessCard, C2921b> implements Object {
    public static final int BADGES_FIELD_NUMBER = 8;
    public static final int CITY_FIELD_NUMBER = 7;
    public static final int COMPANY_FIELD_NUMBER = 6;
    public static final int COUNTRYCODE_FIELD_NUMBER = 2;
    private static final BusinessCard DEFAULT_INSTANCE;
    public static final int FIRSTNAME_FIELD_NUMBER = 3;
    public static final int JOBTITLE_FIELD_NUMBER = 5;
    public static final int LASTNAME_FIELD_NUMBER = 4;
    private static volatile Parser<BusinessCard> PARSER;
    public static final int PHONENUMBER_FIELD_NUMBER = 1;
    public static final int VIDEOS_FIELD_NUMBER = 9;
    private static final Internal.ListAdapter.Converter<Integer, Badge> badges_converter_ = new C2920a();
    private int badgesMemoizedSerializedSize;
    private long phoneNumber_;
    private String countryCode_ = "";
    private String firstName_ = "";
    private String lastName_ = "";
    private String jobTitle_ = "";
    private String company_ = "";
    private String city_ = "";
    private Internal.IntList badges_ = GeneratedMessageLite.emptyIntList();
    private Internal.ProtobufList<Video> videos_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.callerid.v1.model.BusinessCard$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/BusinessCard$a.class */
    public static final class C2920a implements Internal.ListAdapter.Converter<Integer, Badge> {
        @Override // com.google.protobuf.Internal.ListAdapter.Converter
        public Badge convert(Integer num) {
            Badge forNumber = Badge.forNumber(num.intValue());
            Badge badge = forNumber;
            if (forNumber == null) {
                badge = Badge.UNRECOGNIZED;
            }
            return badge;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.model.BusinessCard$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/BusinessCard$b.class */
    public static final class C2921b extends GeneratedMessageLite.Builder<BusinessCard, C2921b> implements Object {
        public C2921b() {
            super(BusinessCard.DEFAULT_INSTANCE);
        }

        public C2921b(C2920a c2920a) {
            super(BusinessCard.DEFAULT_INSTANCE);
        }
    }

    static {
        BusinessCard businessCard = new BusinessCard();
        DEFAULT_INSTANCE = businessCard;
        GeneratedMessageLite.registerDefaultInstance(BusinessCard.class, businessCard);
    }

    private BusinessCard() {
    }

    public void addAllBadges(Iterable<? extends Badge> iterable) {
        ensureBadgesIsMutable();
        for (Badge badge : iterable) {
            this.badges_.addInt(badge.getNumber());
        }
    }

    public void addAllBadgesValue(Iterable<Integer> iterable) {
        ensureBadgesIsMutable();
        for (Integer num : iterable) {
            this.badges_.addInt(num.intValue());
        }
    }

    public void addAllVideos(Iterable<? extends Video> iterable) {
        ensureVideosIsMutable();
        AbstractMessageLite.addAll(iterable, this.videos_);
    }

    public void addBadges(Badge badge) {
        badge.getClass();
        ensureBadgesIsMutable();
        this.badges_.addInt(badge.getNumber());
    }

    public void addBadgesValue(int i) {
        ensureBadgesIsMutable();
        this.badges_.addInt(i);
    }

    public void addVideos(int i, Video video) {
        video.getClass();
        ensureVideosIsMutable();
        this.videos_.add(i, video);
    }

    public void addVideos(Video video) {
        video.getClass();
        ensureVideosIsMutable();
        this.videos_.add(video);
    }

    public void clearBadges() {
        this.badges_ = GeneratedMessageLite.emptyIntList();
    }

    public void clearCity() {
        this.city_ = getDefaultInstance().getCity();
    }

    public void clearCompany() {
        this.company_ = getDefaultInstance().getCompany();
    }

    public void clearCountryCode() {
        this.countryCode_ = getDefaultInstance().getCountryCode();
    }

    public void clearFirstName() {
        this.firstName_ = getDefaultInstance().getFirstName();
    }

    public void clearJobTitle() {
        this.jobTitle_ = getDefaultInstance().getJobTitle();
    }

    public void clearLastName() {
        this.lastName_ = getDefaultInstance().getLastName();
    }

    public void clearPhoneNumber() {
        this.phoneNumber_ = 0L;
    }

    public void clearVideos() {
        this.videos_ = GeneratedMessageLite.emptyProtobufList();
    }

    private void ensureBadgesIsMutable() {
        Internal.IntList intList = this.badges_;
        if (!intList.isModifiable()) {
            this.badges_ = GeneratedMessageLite.mutableCopy(intList);
        }
    }

    private void ensureVideosIsMutable() {
        Internal.ProtobufList<Video> protobufList = this.videos_;
        if (!protobufList.isModifiable()) {
            this.videos_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static BusinessCard getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2921b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2921b newBuilder(BusinessCard businessCard) {
        return DEFAULT_INSTANCE.createBuilder(businessCard);
    }

    public static BusinessCard parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessCard parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessCard parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BusinessCard parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BusinessCard parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BusinessCard parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static BusinessCard parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessCard parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessCard parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BusinessCard parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BusinessCard parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BusinessCard parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<BusinessCard> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeVideos(int i) {
        ensureVideosIsMutable();
        this.videos_.remove(i);
    }

    public void setBadges(int i, Badge badge) {
        badge.getClass();
        ensureBadgesIsMutable();
        this.badges_.setInt(i, badge.getNumber());
    }

    public void setBadgesValue(int i, int i2) {
        ensureBadgesIsMutable();
        this.badges_.setInt(i, i2);
    }

    public void setCity(String str) {
        str.getClass();
        this.city_ = str;
    }

    public void setCityBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.city_ = byteString.toStringUtf8();
    }

    public void setCompany(String str) {
        str.getClass();
        this.company_ = str;
    }

    public void setCompanyBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.company_ = byteString.toStringUtf8();
    }

    public void setCountryCode(String str) {
        str.getClass();
        this.countryCode_ = str;
    }

    public void setCountryCodeBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.countryCode_ = byteString.toStringUtf8();
    }

    public void setFirstName(String str) {
        str.getClass();
        this.firstName_ = str;
    }

    public void setFirstNameBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.firstName_ = byteString.toStringUtf8();
    }

    public void setJobTitle(String str) {
        str.getClass();
        this.jobTitle_ = str;
    }

    public void setJobTitleBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.jobTitle_ = byteString.toStringUtf8();
    }

    public void setLastName(String str) {
        str.getClass();
        this.lastName_ = str;
    }

    public void setLastNameBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.lastName_ = byteString.toStringUtf8();
    }

    public void setPhoneNumber(long j) {
        this.phoneNumber_ = j;
    }

    public void setVideos(int i, Video video) {
        video.getClass();
        ensureVideosIsMutable();
        this.videos_.set(i, video);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\t����\u0001\t\t��\u0002��\u0001\u0002\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007Ȉ\b,\t\u001b", new Object[]{"phoneNumber_", "countryCode_", "firstName_", "lastName_", "jobTitle_", "company_", "city_", "badges_", "videos_", Video.class});
            case 3:
                return new BusinessCard();
            case 4:
                return new C2921b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (BusinessCard.class) {
                        try {
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                            defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                            if (defaultInstanceBasedParser3 == null) {
                                defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return defaultInstanceBasedParser2;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public Badge getBadges(int i) {
        return badges_converter_.convert(Integer.valueOf(this.badges_.getInt(i)));
    }

    public int getBadgesCount() {
        return this.badges_.size();
    }

    public List<Badge> getBadgesList() {
        return new Internal.ListAdapter(this.badges_, badges_converter_);
    }

    public int getBadgesValue(int i) {
        return this.badges_.getInt(i);
    }

    public List<Integer> getBadgesValueList() {
        return this.badges_;
    }

    public String getCity() {
        return this.city_;
    }

    public ByteString getCityBytes() {
        return ByteString.copyFromUtf8(this.city_);
    }

    public String getCompany() {
        return this.company_;
    }

    public ByteString getCompanyBytes() {
        return ByteString.copyFromUtf8(this.company_);
    }

    public String getCountryCode() {
        return this.countryCode_;
    }

    public ByteString getCountryCodeBytes() {
        return ByteString.copyFromUtf8(this.countryCode_);
    }

    public String getFirstName() {
        return this.firstName_;
    }

    public ByteString getFirstNameBytes() {
        return ByteString.copyFromUtf8(this.firstName_);
    }

    public String getJobTitle() {
        return this.jobTitle_;
    }

    public ByteString getJobTitleBytes() {
        return ByteString.copyFromUtf8(this.jobTitle_);
    }

    public String getLastName() {
        return this.lastName_;
    }

    public ByteString getLastNameBytes() {
        return ByteString.copyFromUtf8(this.lastName_);
    }

    public long getPhoneNumber() {
        return this.phoneNumber_;
    }

    public Video getVideos(int i) {
        return this.videos_.get(i);
    }

    public int getVideosCount() {
        return this.videos_.size();
    }

    public List<Video> getVideosList() {
        return this.videos_;
    }

    public AbstractC20440b getVideosOrBuilder(int i) {
        return this.videos_.get(i);
    }

    public List<? extends AbstractC20440b> getVideosOrBuilderList() {
        return this.videos_;
    }
}
