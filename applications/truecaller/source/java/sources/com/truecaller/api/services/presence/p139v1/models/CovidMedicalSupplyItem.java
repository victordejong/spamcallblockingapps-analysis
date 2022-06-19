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
import p193e.p194a.p1238t2.p1239a.p1253f.p1254a.p1255c.AbstractC20476a;
/* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupplyItem */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem.class */
public final class CovidMedicalSupplyItem extends GeneratedMessageLite<CovidMedicalSupplyItem, C3332b> implements AbstractC20476a {
    private static final CovidMedicalSupplyItem DEFAULT_INSTANCE;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int IN_STOCK_AT_FIELD_NUMBER = 3;
    private static volatile Parser<CovidMedicalSupplyItem> PARSER;
    public static final int STOCK_STATUS_FIELD_NUMBER = 2;
    private int id_;
    private int inStockAt_;
    private int stockStatus_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupplyItem$StockStatus */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus.class */
    public enum StockStatus implements Internal.EnumLite {
        UNKNOWN(0),
        IN_STOCK(1),
        OUT_OF_STOCK(2),
        UNRECOGNIZED(-1);
        
        public static final int IN_STOCK_VALUE = 1;
        public static final int OUT_OF_STOCK_VALUE = 2;
        public static final int UNKNOWN_VALUE = 0;
        private static final Internal.EnumLiteMap<StockStatus> internalValueMap = new C3329a();
        private final int value;

        /* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupplyItem$StockStatus$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus$a.class */
        public static final class C3329a implements Internal.EnumLiteMap<StockStatus> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public StockStatus findValueByNumber(int i) {
                return StockStatus.forNumber(i);
            }
        }

        /* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupplyItem$StockStatus$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus$b.class */
        public static final class C3330b implements Internal.EnumVerifier {

            /* renamed from: a */
            public static final Internal.EnumVerifier f10128a = new C3330b();

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return StockStatus.forNumber(i) != null;
            }
        }

        StockStatus(int i) {
            this.value = i;
        }

        public static StockStatus forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return IN_STOCK;
                }
                if (i == 2) {
                    return OUT_OF_STOCK;
                }
                return null;
            }
            return UNKNOWN;
        }

        public static Internal.EnumLiteMap<StockStatus> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return C3330b.f10128a;
        }

        @Deprecated
        public static StockStatus valueOf(int i) {
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

    /* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupplyItem$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b.class */
    public static final class C3332b extends GeneratedMessageLite.Builder<CovidMedicalSupplyItem, C3332b> implements AbstractC20476a {
        public C3332b() {
            super(CovidMedicalSupplyItem.DEFAULT_INSTANCE);
        }

        public C3332b(C3331a c3331a) {
            super(CovidMedicalSupplyItem.DEFAULT_INSTANCE);
        }
    }

    static {
        CovidMedicalSupplyItem covidMedicalSupplyItem = new CovidMedicalSupplyItem();
        DEFAULT_INSTANCE = covidMedicalSupplyItem;
        GeneratedMessageLite.registerDefaultInstance(CovidMedicalSupplyItem.class, covidMedicalSupplyItem);
    }

    private CovidMedicalSupplyItem() {
    }

    public void clearId() {
        this.id_ = 0;
    }

    public void clearInStockAt() {
        this.inStockAt_ = 0;
    }

    public void clearStockStatus() {
        this.stockStatus_ = 0;
    }

    public static CovidMedicalSupplyItem getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3332b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3332b newBuilder(CovidMedicalSupplyItem covidMedicalSupplyItem) {
        return DEFAULT_INSTANCE.createBuilder(covidMedicalSupplyItem);
    }

    public static CovidMedicalSupplyItem parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CovidMedicalSupplyItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CovidMedicalSupplyItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CovidMedicalSupplyItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CovidMedicalSupplyItem parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CovidMedicalSupplyItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CovidMedicalSupplyItem parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CovidMedicalSupplyItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CovidMedicalSupplyItem parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CovidMedicalSupplyItem parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CovidMedicalSupplyItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CovidMedicalSupplyItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CovidMedicalSupplyItem> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setId(int i) {
        this.id_ = i;
    }

    public void setInStockAt(int i) {
        this.inStockAt_ = i;
    }

    public void setStockStatus(StockStatus stockStatus) {
        this.stockStatus_ = stockStatus.getNumber();
    }

    public void setStockStatusValue(int i) {
        this.stockStatus_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\u0004\u0002\f\u0003\u0006", new Object[]{"id_", "stockStatus_", "inStockAt_"});
            case 3:
                return new CovidMedicalSupplyItem();
            case 4:
                return new C3332b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CovidMedicalSupplyItem.class) {
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

    public int getId() {
        return this.id_;
    }

    public int getInStockAt() {
        return this.inStockAt_;
    }

    public StockStatus getStockStatus() {
        StockStatus forNumber = StockStatus.forNumber(this.stockStatus_);
        StockStatus stockStatus = forNumber;
        if (forNumber == null) {
            stockStatus = StockStatus.UNRECOGNIZED;
        }
        return stockStatus;
    }

    public int getStockStatusValue() {
        return this.stockStatus_;
    }
}
