package com.truecaller.api.services.presence.p139v1.models;

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
import p193e.p194a.p1238t2.p1239a.p1253f.p1254a.p1255c.AbstractC20476a;
/* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupply */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupply.class */
public final class CovidMedicalSupply extends GeneratedMessageLite<CovidMedicalSupply, C3328b> implements Object {
    private static final CovidMedicalSupply DEFAULT_INSTANCE;
    public static final int ENABLED_FIELD_NUMBER = 1;
    public static final int ITEMS_FIELD_NUMBER = 3;
    public static final int MODIFIED_AT_FIELD_NUMBER = 2;
    private static volatile Parser<CovidMedicalSupply> PARSER;
    private boolean enabled_;
    private Internal.ProtobufList<CovidMedicalSupplyItem> items_ = GeneratedMessageLite.emptyProtobufList();
    private int modifiedAt_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.CovidMedicalSupply$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/CovidMedicalSupply$b.class */
    public static final class C3328b extends GeneratedMessageLite.Builder<CovidMedicalSupply, C3328b> implements Object {
        public C3328b() {
            super(CovidMedicalSupply.DEFAULT_INSTANCE);
        }

        public C3328b(C3327a c3327a) {
            super(CovidMedicalSupply.DEFAULT_INSTANCE);
        }
    }

    static {
        CovidMedicalSupply covidMedicalSupply = new CovidMedicalSupply();
        DEFAULT_INSTANCE = covidMedicalSupply;
        GeneratedMessageLite.registerDefaultInstance(CovidMedicalSupply.class, covidMedicalSupply);
    }

    private CovidMedicalSupply() {
    }

    public void addAllItems(Iterable<? extends CovidMedicalSupplyItem> iterable) {
        ensureItemsIsMutable();
        AbstractMessageLite.addAll(iterable, this.items_);
    }

    public void addItems(int i, CovidMedicalSupplyItem covidMedicalSupplyItem) {
        covidMedicalSupplyItem.getClass();
        ensureItemsIsMutable();
        this.items_.add(i, covidMedicalSupplyItem);
    }

    public void addItems(CovidMedicalSupplyItem covidMedicalSupplyItem) {
        covidMedicalSupplyItem.getClass();
        ensureItemsIsMutable();
        this.items_.add(covidMedicalSupplyItem);
    }

    public void clearEnabled() {
        this.enabled_ = false;
    }

    public void clearItems() {
        this.items_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearModifiedAt() {
        this.modifiedAt_ = 0;
    }

    private void ensureItemsIsMutable() {
        Internal.ProtobufList<CovidMedicalSupplyItem> protobufList = this.items_;
        if (!protobufList.isModifiable()) {
            this.items_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static CovidMedicalSupply getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3328b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3328b newBuilder(CovidMedicalSupply covidMedicalSupply) {
        return DEFAULT_INSTANCE.createBuilder(covidMedicalSupply);
    }

    public static CovidMedicalSupply parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CovidMedicalSupply parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CovidMedicalSupply parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CovidMedicalSupply parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CovidMedicalSupply parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CovidMedicalSupply parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CovidMedicalSupply parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CovidMedicalSupply parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CovidMedicalSupply parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CovidMedicalSupply parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CovidMedicalSupply parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CovidMedicalSupply parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CovidMedicalSupply> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeItems(int i) {
        ensureItemsIsMutable();
        this.items_.remove(i);
    }

    public void setEnabled(boolean z) {
        this.enabled_ = z;
    }

    public void setItems(int i, CovidMedicalSupplyItem covidMedicalSupplyItem) {
        covidMedicalSupplyItem.getClass();
        ensureItemsIsMutable();
        this.items_.set(i, covidMedicalSupplyItem);
    }

    public void setModifiedAt(int i) {
        this.modifiedAt_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003��\u0001��\u0001\u0007\u0002\u0006\u0003\u001b", new Object[]{"enabled_", "modifiedAt_", "items_", CovidMedicalSupplyItem.class});
            case 3:
                return new CovidMedicalSupply();
            case 4:
                return new C3328b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CovidMedicalSupply.class) {
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

    public boolean getEnabled() {
        return this.enabled_;
    }

    public CovidMedicalSupplyItem getItems(int i) {
        return this.items_.get(i);
    }

    public int getItemsCount() {
        return this.items_.size();
    }

    public List<CovidMedicalSupplyItem> getItemsList() {
        return this.items_;
    }

    public AbstractC20476a getItemsOrBuilder(int i) {
        return this.items_.get(i);
    }

    public List<? extends AbstractC20476a> getItemsOrBuilderList() {
        return this.items_;
    }

    public int getModifiedAt() {
        return this.modifiedAt_;
    }
}
