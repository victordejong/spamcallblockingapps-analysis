package com.truecaller.api.services.searchwarnings.p141v1;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
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
/* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSearchWarningsRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest.class */
public final class GetSearchWarningsRequest extends GeneratedMessageLite<GetSearchWarningsRequest, C3372b> implements Object {
    public static final int BADGES_FIELD_NUMBER = 9;
    public static final int CARRIER_FIELD_NUMBER = 4;
    public static final int COUNTRYCODE_FIELD_NUMBER = 3;
    private static final GetSearchWarningsRequest DEFAULT_INSTANCE;
    public static final int FRAUDINESS_FIELD_NUMBER = 6;
    public static final int ISSPAMMER_FIELD_NUMBER = 8;
    public static final int NAME_FIELD_NUMBER = 7;
    public static final int NUMBERTYPE_FIELD_NUMBER = 5;
    private static volatile Parser<GetSearchWarningsRequest> PARSER;
    public static final int QUERY_FIELD_NUMBER = 1;
    public static final int USERCOUNTRY_FIELD_NUMBER = 2;
    public static final int USERPHONE_FIELD_NUMBER = 10;
    private double fraudiness_;
    private boolean isSpammer_;
    private long userPhone_;
    private String query_ = "";
    private String userCountry_ = "";
    private String countryCode_ = "";
    private String carrier_ = "";
    private String numberType_ = "";
    private String name_ = "";
    private Internal.ProtobufList<String> badges_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSearchWarningsRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b.class */
    public static final class C3372b extends GeneratedMessageLite.Builder<GetSearchWarningsRequest, C3372b> implements Object {
        public C3372b() {
            super(GetSearchWarningsRequest.DEFAULT_INSTANCE);
        }

        public C3372b(C3371a c3371a) {
            super(GetSearchWarningsRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        GetSearchWarningsRequest getSearchWarningsRequest = new GetSearchWarningsRequest();
        DEFAULT_INSTANCE = getSearchWarningsRequest;
        GeneratedMessageLite.registerDefaultInstance(GetSearchWarningsRequest.class, getSearchWarningsRequest);
    }

    private GetSearchWarningsRequest() {
    }

    public void addAllBadges(Iterable<String> iterable) {
        ensureBadgesIsMutable();
        AbstractMessageLite.addAll(iterable, this.badges_);
    }

    public void addBadges(String str) {
        str.getClass();
        ensureBadgesIsMutable();
        this.badges_.add(str);
    }

    public void addBadgesBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        ensureBadgesIsMutable();
        this.badges_.add(byteString.toStringUtf8());
    }

    public void clearBadges() {
        this.badges_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearCarrier() {
        this.carrier_ = getDefaultInstance().getCarrier();
    }

    public void clearCountryCode() {
        this.countryCode_ = getDefaultInstance().getCountryCode();
    }

    public void clearFraudiness() {
        this.fraudiness_ = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
    }

    public void clearIsSpammer() {
        this.isSpammer_ = false;
    }

    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    public void clearNumberType() {
        this.numberType_ = getDefaultInstance().getNumberType();
    }

    public void clearQuery() {
        this.query_ = getDefaultInstance().getQuery();
    }

    public void clearUserCountry() {
        this.userCountry_ = getDefaultInstance().getUserCountry();
    }

    public void clearUserPhone() {
        this.userPhone_ = 0L;
    }

    private void ensureBadgesIsMutable() {
        Internal.ProtobufList<String> protobufList = this.badges_;
        if (!protobufList.isModifiable()) {
            this.badges_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static GetSearchWarningsRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3372b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3372b newBuilder(GetSearchWarningsRequest getSearchWarningsRequest) {
        return DEFAULT_INSTANCE.createBuilder(getSearchWarningsRequest);
    }

    public static GetSearchWarningsRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSearchWarningsRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetSearchWarningsRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetSearchWarningsRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetSearchWarningsRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSearchWarningsRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetSearchWarningsRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetSearchWarningsRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetSearchWarningsRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetSearchWarningsRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setBadges(int i, String str) {
        str.getClass();
        ensureBadgesIsMutable();
        this.badges_.set(i, str);
    }

    public void setCarrier(String str) {
        str.getClass();
        this.carrier_ = str;
    }

    public void setCarrierBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.carrier_ = byteString.toStringUtf8();
    }

    public void setCountryCode(String str) {
        str.getClass();
        this.countryCode_ = str;
    }

    public void setCountryCodeBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.countryCode_ = byteString.toStringUtf8();
    }

    public void setFraudiness(double d) {
        this.fraudiness_ = d;
    }

    public void setIsSpammer(boolean z) {
        this.isSpammer_ = z;
    }

    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    public void setNameBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.name_ = byteString.toStringUtf8();
    }

    public void setNumberType(String str) {
        str.getClass();
        this.numberType_ = str;
    }

    public void setNumberTypeBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.numberType_ = byteString.toStringUtf8();
    }

    public void setQuery(String str) {
        str.getClass();
        this.query_ = str;
    }

    public void setQueryBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.query_ = byteString.toStringUtf8();
    }

    public void setUserCountry(String str) {
        str.getClass();
        this.userCountry_ = str;
    }

    public void setUserCountryBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.userCountry_ = byteString.toStringUtf8();
    }

    public void setUserPhone(long j) {
        this.userPhone_ = j;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\n����\u0001\n\n��\u0001��\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006��\u0007Ȉ\b\u0007\tȚ\n\u0002", new Object[]{"query_", "userCountry_", "countryCode_", "carrier_", "numberType_", "fraudiness_", "name_", "isSpammer_", "badges_", "userPhone_"});
            case 3:
                return new GetSearchWarningsRequest();
            case 4:
                return new C3372b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetSearchWarningsRequest.class) {
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

    public String getBadges(int i) {
        return this.badges_.get(i);
    }

    public ByteString getBadgesBytes(int i) {
        return ByteString.copyFromUtf8(this.badges_.get(i));
    }

    public int getBadgesCount() {
        return this.badges_.size();
    }

    public List<String> getBadgesList() {
        return this.badges_;
    }

    public String getCarrier() {
        return this.carrier_;
    }

    public ByteString getCarrierBytes() {
        return ByteString.copyFromUtf8(this.carrier_);
    }

    public String getCountryCode() {
        return this.countryCode_;
    }

    public ByteString getCountryCodeBytes() {
        return ByteString.copyFromUtf8(this.countryCode_);
    }

    public double getFraudiness() {
        return this.fraudiness_;
    }

    public boolean getIsSpammer() {
        return this.isSpammer_;
    }

    public String getName() {
        return this.name_;
    }

    public ByteString getNameBytes() {
        return ByteString.copyFromUtf8(this.name_);
    }

    public String getNumberType() {
        return this.numberType_;
    }

    public ByteString getNumberTypeBytes() {
        return ByteString.copyFromUtf8(this.numberType_);
    }

    public String getQuery() {
        return this.query_;
    }

    public ByteString getQueryBytes() {
        return ByteString.copyFromUtf8(this.query_);
    }

    public String getUserCountry() {
        return this.userCountry_;
    }

    public ByteString getUserCountryBytes() {
        return ByteString.copyFromUtf8(this.userCountry_);
    }

    public long getUserPhone() {
        return this.userPhone_;
    }
}
