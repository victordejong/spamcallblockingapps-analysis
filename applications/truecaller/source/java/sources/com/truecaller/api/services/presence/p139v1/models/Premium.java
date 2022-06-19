package com.truecaller.api.services.presence.p139v1.models;

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
/* renamed from: com.truecaller.api.services.presence.v1.models.Premium */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium.class */
public final class Premium extends GeneratedMessageLite<Premium, C3346b> implements Object {
    private static final Premium DEFAULT_INSTANCE;
    public static final int LEVEL_FIELD_NUMBER = 1;
    private static volatile Parser<Premium> PARSER;
    public static final int SCOPE_FIELD_NUMBER = 2;
    private int level_;
    private int scope_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$ProductLevel */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$ProductLevel.class */
    public enum ProductLevel implements Internal.EnumLite {
        None(0),
        Regular(1),
        Gold(2),
        UNRECOGNIZED(-1);
        
        public static final int Gold_VALUE = 2;
        public static final int None_VALUE = 0;
        public static final int Regular_VALUE = 1;
        private static final Internal.EnumLiteMap<ProductLevel> internalValueMap = new C3341a();
        private final int value;

        /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$ProductLevel$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$ProductLevel$a.class */
        public static final class C3341a implements Internal.EnumLiteMap<ProductLevel> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ProductLevel findValueByNumber(int i) {
                return ProductLevel.forNumber(i);
            }
        }

        /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$ProductLevel$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$ProductLevel$b.class */
        public static final class C3342b implements Internal.EnumVerifier {

            /* renamed from: a */
            public static final Internal.EnumVerifier f10129a = new C3342b();

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return ProductLevel.forNumber(i) != null;
            }
        }

        ProductLevel(int i) {
            this.value = i;
        }

        public static ProductLevel forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return Regular;
                }
                if (i == 2) {
                    return Gold;
                }
                return null;
            }
            return None;
        }

        public static Internal.EnumLiteMap<ProductLevel> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return C3342b.f10129a;
        }

        @Deprecated
        public static ProductLevel valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$Scope */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$Scope.class */
    public enum Scope implements Internal.EnumLite {
        NoneScope(0),
        Other(1),
        PaidPremium(2),
        Offerwall(3),
        Promotion(4),
        CustomerSupport(5),
        ProCampaigns(6),
        Referrals(7),
        Partner(8),
        TcPay(9),
        TcSupport(10),
        Testing(11),
        UNRECOGNIZED(-1);
        
        public static final int CustomerSupport_VALUE = 5;
        public static final int NoneScope_VALUE = 0;
        public static final int Offerwall_VALUE = 3;
        public static final int Other_VALUE = 1;
        public static final int PaidPremium_VALUE = 2;
        public static final int Partner_VALUE = 8;
        public static final int ProCampaigns_VALUE = 6;
        public static final int Promotion_VALUE = 4;
        public static final int Referrals_VALUE = 7;
        public static final int TcPay_VALUE = 9;
        public static final int TcSupport_VALUE = 10;
        public static final int Testing_VALUE = 11;
        private static final Internal.EnumLiteMap<Scope> internalValueMap = new C3343a();
        private final int value;

        /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$Scope$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$Scope$a.class */
        public static final class C3343a implements Internal.EnumLiteMap<Scope> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public Scope findValueByNumber(int i) {
                return Scope.forNumber(i);
            }
        }

        /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$Scope$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$Scope$b.class */
        public static final class C3344b implements Internal.EnumVerifier {

            /* renamed from: a */
            public static final Internal.EnumVerifier f10130a = new C3344b();

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return Scope.forNumber(i) != null;
            }
        }

        Scope(int i) {
            this.value = i;
        }

        public static Scope forNumber(int i) {
            switch (i) {
                case 0:
                    return NoneScope;
                case 1:
                    return Other;
                case 2:
                    return PaidPremium;
                case 3:
                    return Offerwall;
                case 4:
                    return Promotion;
                case 5:
                    return CustomerSupport;
                case 6:
                    return ProCampaigns;
                case 7:
                    return Referrals;
                case 8:
                    return Partner;
                case 9:
                    return TcPay;
                case 10:
                    return TcSupport;
                case 11:
                    return Testing;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<Scope> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return C3344b.f10130a;
        }

        @Deprecated
        public static Scope valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* renamed from: com.truecaller.api.services.presence.v1.models.Premium$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Premium$b.class */
    public static final class C3346b extends GeneratedMessageLite.Builder<Premium, C3346b> implements Object {
        public C3346b() {
            super(Premium.DEFAULT_INSTANCE);
        }

        public C3346b(C3345a c3345a) {
            super(Premium.DEFAULT_INSTANCE);
        }
    }

    static {
        Premium premium = new Premium();
        DEFAULT_INSTANCE = premium;
        GeneratedMessageLite.registerDefaultInstance(Premium.class, premium);
    }

    private Premium() {
    }

    public void clearLevel() {
        this.level_ = 0;
    }

    public void clearScope() {
        this.scope_ = 0;
    }

    public static Premium getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3346b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3346b newBuilder(Premium premium) {
        return DEFAULT_INSTANCE.createBuilder(premium);
    }

    public static Premium parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Premium parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Premium parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Premium parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Premium parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Premium parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Premium parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Premium parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Premium parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Premium parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Premium parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Premium parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Premium> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setLevel(ProductLevel productLevel) {
        this.level_ = productLevel.getNumber();
    }

    public void setLevelValue(int i) {
        this.level_ = i;
    }

    public void setScope(Scope scope) {
        this.scope_ = scope.getNumber();
    }

    public void setScopeValue(int i) {
        this.scope_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\f", new Object[]{"level_", "scope_"});
            case 3:
                return new Premium();
            case 4:
                return new C3346b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Premium.class) {
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

    public ProductLevel getLevel() {
        ProductLevel forNumber = ProductLevel.forNumber(this.level_);
        ProductLevel productLevel = forNumber;
        if (forNumber == null) {
            productLevel = ProductLevel.UNRECOGNIZED;
        }
        return productLevel;
    }

    public int getLevelValue() {
        return this.level_;
    }

    public Scope getScope() {
        Scope forNumber = Scope.forNumber(this.scope_);
        Scope scope = forNumber;
        if (forNumber == null) {
            scope = Scope.UNRECOGNIZED;
        }
        return scope;
    }

    public int getScopeValue() {
        return this.scope_;
    }
}
