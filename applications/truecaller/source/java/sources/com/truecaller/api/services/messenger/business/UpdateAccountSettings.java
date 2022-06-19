package com.truecaller.api.services.messenger.business;

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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings.class */
public final class UpdateAccountSettings extends GeneratedMessageLite<UpdateAccountSettings, C3012b> implements Object {
    private static final UpdateAccountSettings DEFAULT_INSTANCE;
    private static volatile Parser<UpdateAccountSettings> PARSER;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures.class */
    public static final class EnabledFeatures extends GeneratedMessageLite<EnabledFeatures, C3007a> implements Object {
        private static final EnabledFeatures DEFAULT_INSTANCE;
        public static final int FEATURES_MASK_FIELD_NUMBER = 1;
        private static volatile Parser<EnabledFeatures> PARSER;
        private long featuresMask_;

        /* renamed from: com.truecaller.api.services.messenger.business.UpdateAccountSettings$EnabledFeatures$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures$a.class */
        public static final class C3007a extends GeneratedMessageLite.Builder<EnabledFeatures, C3007a> implements Object {
            public C3007a() {
                super(EnabledFeatures.DEFAULT_INSTANCE);
            }

            public C3007a(C3011a c3011a) {
                super(EnabledFeatures.DEFAULT_INSTANCE);
            }
        }

        static {
            EnabledFeatures enabledFeatures = new EnabledFeatures();
            DEFAULT_INSTANCE = enabledFeatures;
            GeneratedMessageLite.registerDefaultInstance(EnabledFeatures.class, enabledFeatures);
        }

        private EnabledFeatures() {
        }

        public void clearFeaturesMask() {
            this.featuresMask_ = 0L;
        }

        public static EnabledFeatures getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3007a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3007a newBuilder(EnabledFeatures enabledFeatures) {
            return DEFAULT_INSTANCE.createBuilder(enabledFeatures);
        }

        public static EnabledFeatures parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static EnabledFeatures parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static EnabledFeatures parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static EnabledFeatures parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static EnabledFeatures parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static EnabledFeatures parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static EnabledFeatures parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static EnabledFeatures parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static EnabledFeatures parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static EnabledFeatures parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static EnabledFeatures parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static EnabledFeatures parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<EnabledFeatures> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setFeaturesMask(long j) {
            this.featuresMask_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\u0002", new Object[]{"featuresMask_"});
                case 3:
                    return new EnabledFeatures();
                case 4:
                    return new C3007a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (EnabledFeatures.class) {
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

        public long getFeaturesMask() {
            return this.featuresMask_;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3008a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int ENABLED_FEATURES_FIELD_NUMBER = 1;
        private static volatile Parser<Request> PARSER;
        public static final int WHITELISTED_CDNS_FIELD_NUMBER = 2;
        private EnabledFeatures enabledFeatures_;
        private WhitelistedCdns whitelistedCdns_;

        /* renamed from: com.truecaller.api.services.messenger.business.UpdateAccountSettings$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a.class */
        public static final class C3008a extends GeneratedMessageLite.Builder<Request, C3008a> implements Object {
            public C3008a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3008a(C3011a c3011a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void clearEnabledFeatures() {
            this.enabledFeatures_ = null;
        }

        public void clearWhitelistedCdns() {
            this.whitelistedCdns_ = null;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeEnabledFeatures(EnabledFeatures enabledFeatures) {
            enabledFeatures.getClass();
            EnabledFeatures enabledFeatures2 = this.enabledFeatures_;
            if (enabledFeatures2 == null || enabledFeatures2 == EnabledFeatures.getDefaultInstance()) {
                this.enabledFeatures_ = enabledFeatures;
            } else {
                this.enabledFeatures_ = EnabledFeatures.newBuilder(this.enabledFeatures_).mergeFrom(enabledFeatures).buildPartial();
            }
        }

        public void mergeWhitelistedCdns(WhitelistedCdns whitelistedCdns) {
            whitelistedCdns.getClass();
            WhitelistedCdns whitelistedCdns2 = this.whitelistedCdns_;
            if (whitelistedCdns2 == null || whitelistedCdns2 == WhitelistedCdns.getDefaultInstance()) {
                this.whitelistedCdns_ = whitelistedCdns;
            } else {
                this.whitelistedCdns_ = WhitelistedCdns.newBuilder(this.whitelistedCdns_).mergeFrom(whitelistedCdns).buildPartial();
            }
        }

        public static C3008a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3008a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setEnabledFeatures(EnabledFeatures enabledFeatures) {
            enabledFeatures.getClass();
            this.enabledFeatures_ = enabledFeatures;
        }

        public void setWhitelistedCdns(WhitelistedCdns whitelistedCdns) {
            whitelistedCdns.getClass();
            this.whitelistedCdns_ = whitelistedCdns;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"enabledFeatures_", "whitelistedCdns_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3008a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
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

        public EnabledFeatures getEnabledFeatures() {
            EnabledFeatures enabledFeatures = this.enabledFeatures_;
            EnabledFeatures enabledFeatures2 = enabledFeatures;
            if (enabledFeatures == null) {
                enabledFeatures2 = EnabledFeatures.getDefaultInstance();
            }
            return enabledFeatures2;
        }

        public WhitelistedCdns getWhitelistedCdns() {
            WhitelistedCdns whitelistedCdns = this.whitelistedCdns_;
            WhitelistedCdns whitelistedCdns2 = whitelistedCdns;
            if (whitelistedCdns == null) {
                whitelistedCdns2 = WhitelistedCdns.getDefaultInstance();
            }
            return whitelistedCdns2;
        }

        public boolean hasEnabledFeatures() {
            return this.enabledFeatures_ != null;
        }

        public boolean hasWhitelistedCdns() {
            return this.whitelistedCdns_ != null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3009a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.business.UpdateAccountSettings$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$Response$a.class */
        public static final class C3009a extends GeneratedMessageLite.Builder<Response, C3009a> implements Object {
            public C3009a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3009a(C3011a c3011a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3009a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3009a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
                case 3:
                    return new Response();
                case 4:
                    return new C3009a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
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
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns.class */
    public static final class WhitelistedCdns extends GeneratedMessageLite<WhitelistedCdns, C3010a> implements Object {
        private static final WhitelistedCdns DEFAULT_INSTANCE;
        private static volatile Parser<WhitelistedCdns> PARSER;
        public static final int URLS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<String> urls_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.business.UpdateAccountSettings$WhitelistedCdns$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns$a.class */
        public static final class C3010a extends GeneratedMessageLite.Builder<WhitelistedCdns, C3010a> implements Object {
            public C3010a() {
                super(WhitelistedCdns.DEFAULT_INSTANCE);
            }

            public C3010a(C3011a c3011a) {
                super(WhitelistedCdns.DEFAULT_INSTANCE);
            }
        }

        static {
            WhitelistedCdns whitelistedCdns = new WhitelistedCdns();
            DEFAULT_INSTANCE = whitelistedCdns;
            GeneratedMessageLite.registerDefaultInstance(WhitelistedCdns.class, whitelistedCdns);
        }

        private WhitelistedCdns() {
        }

        public void addAllUrls(Iterable<String> iterable) {
            ensureUrlsIsMutable();
            AbstractMessageLite.addAll(iterable, this.urls_);
        }

        public void addUrls(String str) {
            str.getClass();
            ensureUrlsIsMutable();
            this.urls_.add(str);
        }

        public void addUrlsBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            ensureUrlsIsMutable();
            this.urls_.add(byteString.toStringUtf8());
        }

        public void clearUrls() {
            this.urls_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureUrlsIsMutable() {
            Internal.ProtobufList<String> protobufList = this.urls_;
            if (!protobufList.isModifiable()) {
                this.urls_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static WhitelistedCdns getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3010a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3010a newBuilder(WhitelistedCdns whitelistedCdns) {
            return DEFAULT_INSTANCE.createBuilder(whitelistedCdns);
        }

        public static WhitelistedCdns parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static WhitelistedCdns parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static WhitelistedCdns parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static WhitelistedCdns parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static WhitelistedCdns parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static WhitelistedCdns parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static WhitelistedCdns parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static WhitelistedCdns parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static WhitelistedCdns parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static WhitelistedCdns parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static WhitelistedCdns parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static WhitelistedCdns parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<WhitelistedCdns> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setUrls(int i, String str) {
            str.getClass();
            ensureUrlsIsMutable();
            this.urls_.set(i, str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001Ț", new Object[]{"urls_"});
                case 3:
                    return new WhitelistedCdns();
                case 4:
                    return new C3010a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (WhitelistedCdns.class) {
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

        public String getUrls(int i) {
            return this.urls_.get(i);
        }

        public ByteString getUrlsBytes(int i) {
            return ByteString.copyFromUtf8(this.urls_.get(i));
        }

        public int getUrlsCount() {
            return this.urls_.size();
        }

        public List<String> getUrlsList() {
            return this.urls_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.business.UpdateAccountSettings$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/UpdateAccountSettings$b.class */
    public static final class C3012b extends GeneratedMessageLite.Builder<UpdateAccountSettings, C3012b> implements Object {
        public C3012b() {
            super(UpdateAccountSettings.DEFAULT_INSTANCE);
        }

        public C3012b(C3011a c3011a) {
            super(UpdateAccountSettings.DEFAULT_INSTANCE);
        }
    }

    static {
        UpdateAccountSettings updateAccountSettings = new UpdateAccountSettings();
        DEFAULT_INSTANCE = updateAccountSettings;
        GeneratedMessageLite.registerDefaultInstance(UpdateAccountSettings.class, updateAccountSettings);
    }

    private UpdateAccountSettings() {
    }

    public static UpdateAccountSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3012b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3012b newBuilder(UpdateAccountSettings updateAccountSettings) {
        return DEFAULT_INSTANCE.createBuilder(updateAccountSettings);
    }

    public static UpdateAccountSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateAccountSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateAccountSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static UpdateAccountSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static UpdateAccountSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static UpdateAccountSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static UpdateAccountSettings parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateAccountSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateAccountSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static UpdateAccountSettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static UpdateAccountSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static UpdateAccountSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<UpdateAccountSettings> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new UpdateAccountSettings();
            case 4:
                return new C3012b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (UpdateAccountSettings.class) {
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
}
