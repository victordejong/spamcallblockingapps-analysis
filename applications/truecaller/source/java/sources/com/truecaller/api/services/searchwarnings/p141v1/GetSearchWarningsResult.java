package com.truecaller.api.services.searchwarnings.p141v1;

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
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.AbstractC20481a;
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.AbstractC20482b;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSearchWarningsResult */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSearchWarningsResult.class */
public final class GetSearchWarningsResult extends GeneratedMessageLite<GetSearchWarningsResult, C3376b> implements AbstractC20482b {
    private static final GetSearchWarningsResult DEFAULT_INSTANCE;
    public static final int FEATURES_FIELD_NUMBER = 3;
    public static final int ID_FIELD_NUMBER = 1;
    private static volatile Parser<GetSearchWarningsResult> PARSER;
    public static final int RULENAME_FIELD_NUMBER = 2;
    private String id_ = "";
    private String ruleName_ = "";
    private Internal.ProtobufList<Feature> features_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSearchWarningsResult$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSearchWarningsResult$b.class */
    public static final class C3376b extends GeneratedMessageLite.Builder<GetSearchWarningsResult, C3376b> implements AbstractC20482b {
        public C3376b() {
            super(GetSearchWarningsResult.DEFAULT_INSTANCE);
        }

        public C3376b(C3375a c3375a) {
            super(GetSearchWarningsResult.DEFAULT_INSTANCE);
        }
    }

    static {
        GetSearchWarningsResult getSearchWarningsResult = new GetSearchWarningsResult();
        DEFAULT_INSTANCE = getSearchWarningsResult;
        GeneratedMessageLite.registerDefaultInstance(GetSearchWarningsResult.class, getSearchWarningsResult);
    }

    private GetSearchWarningsResult() {
    }

    public void addAllFeatures(Iterable<? extends Feature> iterable) {
        ensureFeaturesIsMutable();
        AbstractMessageLite.addAll(iterable, this.features_);
    }

    public void addFeatures(int i, Feature feature) {
        feature.getClass();
        ensureFeaturesIsMutable();
        this.features_.add(i, feature);
    }

    public void addFeatures(Feature feature) {
        feature.getClass();
        ensureFeaturesIsMutable();
        this.features_.add(feature);
    }

    public void clearFeatures() {
        this.features_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearId() {
        this.id_ = getDefaultInstance().getId();
    }

    public void clearRuleName() {
        this.ruleName_ = getDefaultInstance().getRuleName();
    }

    private void ensureFeaturesIsMutable() {
        Internal.ProtobufList<Feature> protobufList = this.features_;
        if (!protobufList.isModifiable()) {
            this.features_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static GetSearchWarningsResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3376b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3376b newBuilder(GetSearchWarningsResult getSearchWarningsResult) {
        return DEFAULT_INSTANCE.createBuilder(getSearchWarningsResult);
    }

    public static GetSearchWarningsResult parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSearchWarningsResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetSearchWarningsResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetSearchWarningsResult parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetSearchWarningsResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsResult parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSearchWarningsResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsResult parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetSearchWarningsResult parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetSearchWarningsResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetSearchWarningsResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetSearchWarningsResult> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeFeatures(int i) {
        ensureFeaturesIsMutable();
        this.features_.remove(i);
    }

    public void setFeatures(int i, Feature feature) {
        feature.getClass();
        ensureFeaturesIsMutable();
        this.features_.set(i, feature);
    }

    public void setId(String str) {
        str.getClass();
        this.id_ = str;
    }

    public void setIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.id_ = byteString.toStringUtf8();
    }

    public void setRuleName(String str) {
        str.getClass();
        this.ruleName_ = str;
    }

    public void setRuleNameBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.ruleName_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003��\u0001��\u0001Ȉ\u0002Ȉ\u0003\u001b", new Object[]{"id_", "ruleName_", "features_", Feature.class});
            case 3:
                return new GetSearchWarningsResult();
            case 4:
                return new C3376b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetSearchWarningsResult.class) {
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

    public Feature getFeatures(int i) {
        return this.features_.get(i);
    }

    public int getFeaturesCount() {
        return this.features_.size();
    }

    public List<Feature> getFeaturesList() {
        return this.features_;
    }

    public AbstractC20481a getFeaturesOrBuilder(int i) {
        return this.features_.get(i);
    }

    public List<? extends AbstractC20481a> getFeaturesOrBuilderList() {
        return this.features_;
    }

    public String getId() {
        return this.id_;
    }

    public ByteString getIdBytes() {
        return ByteString.copyFromUtf8(this.id_);
    }

    public String getRuleName() {
        return this.ruleName_;
    }

    public ByteString getRuleNameBytes() {
        return ByteString.copyFromUtf8(this.ruleName_);
    }
}
