package com.truecaller.api.services.presence.p139v1.models;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Int64Value;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.presence.v1.models.Availability */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability.class */
public final class Availability extends GeneratedMessageLite<Availability, C3324b> implements Object {
    public static final int CONTEXT_FIELD_NUMBER = 3;
    private static final Availability DEFAULT_INSTANCE;
    private static volatile Parser<Availability> PARSER;
    public static final int STATUS_FIELD_NUMBER = 1;
    public static final int UNTIL_FIELD_NUMBER = 2;
    private int context_;
    private int status_;
    private Int64Value until_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$Context */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$Context.class */
    public enum Context implements Internal.EnumLite {
        NOTSET(0),
        CALL(1),
        MEETING(2),
        SLEEP(3),
        UNRECOGNIZED(-1);
        
        public static final int CALL_VALUE = 1;
        public static final int MEETING_VALUE = 2;
        public static final int NOTSET_VALUE = 0;
        public static final int SLEEP_VALUE = 3;
        private static final Internal.EnumLiteMap<Context> internalValueMap = new C3319a();
        private final int value;

        /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$Context$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$Context$a.class */
        public static final class C3319a implements Internal.EnumLiteMap<Context> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public Context findValueByNumber(int i) {
                return Context.forNumber(i);
            }
        }

        /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$Context$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$Context$b.class */
        public static final class C3320b implements Internal.EnumVerifier {

            /* renamed from: a */
            public static final Internal.EnumVerifier f10126a = new C3320b();

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return Context.forNumber(i) != null;
            }
        }

        Context(int i) {
            this.value = i;
        }

        public static Context forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return CALL;
                }
                if (i == 2) {
                    return MEETING;
                }
                if (i == 3) {
                    return SLEEP;
                }
                return null;
            }
            return NOTSET;
        }

        public static Internal.EnumLiteMap<Context> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return C3320b.f10126a;
        }

        @Deprecated
        public static Context valueOf(int i) {
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

    /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$Status */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$Status.class */
    public enum Status implements Internal.EnumLite {
        UNKNOWN(0),
        AVAILABLE(1),
        BUSY(2),
        DISABLED(3),
        UNRECOGNIZED(-1);
        
        public static final int AVAILABLE_VALUE = 1;
        public static final int BUSY_VALUE = 2;
        public static final int DISABLED_VALUE = 3;
        public static final int UNKNOWN_VALUE = 0;
        private static final Internal.EnumLiteMap<Status> internalValueMap = new C3321a();
        private final int value;

        /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$Status$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$Status$a.class */
        public static final class C3321a implements Internal.EnumLiteMap<Status> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public Status findValueByNumber(int i) {
                return Status.forNumber(i);
            }
        }

        /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$Status$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$Status$b.class */
        public static final class C3322b implements Internal.EnumVerifier {

            /* renamed from: a */
            public static final Internal.EnumVerifier f10127a = new C3322b();

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return Status.forNumber(i) != null;
            }
        }

        Status(int i) {
            this.value = i;
        }

        public static Status forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return AVAILABLE;
                }
                if (i == 2) {
                    return BUSY;
                }
                if (i == 3) {
                    return DISABLED;
                }
                return null;
            }
            return UNKNOWN;
        }

        public static Internal.EnumLiteMap<Status> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return C3322b.f10127a;
        }

        @Deprecated
        public static Status valueOf(int i) {
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

    /* renamed from: com.truecaller.api.services.presence.v1.models.Availability$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Availability$b.class */
    public static final class C3324b extends GeneratedMessageLite.Builder<Availability, C3324b> implements Object {
        public C3324b() {
            super(Availability.DEFAULT_INSTANCE);
        }

        public C3324b(C3323a c3323a) {
            super(Availability.DEFAULT_INSTANCE);
        }

        /* renamed from: a */
        public C3324b m35895a(Status status) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setStatus(status);
            return this;
        }
    }

    static {
        Availability availability = new Availability();
        DEFAULT_INSTANCE = availability;
        GeneratedMessageLite.registerDefaultInstance(Availability.class, availability);
    }

    private Availability() {
    }

    public void clearContext() {
        this.context_ = 0;
    }

    public void clearStatus() {
        this.status_ = 0;
    }

    public void clearUntil() {
        this.until_ = null;
    }

    public static Availability getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeUntil(Int64Value int64Value) {
        int64Value.getClass();
        Int64Value int64Value2 = this.until_;
        if (int64Value2 == null || int64Value2 == Int64Value.getDefaultInstance()) {
            this.until_ = int64Value;
        } else {
            this.until_ = Int64Value.newBuilder(this.until_).mergeFrom(int64Value).buildPartial();
        }
    }

    public static C3324b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3324b newBuilder(Availability availability) {
        return DEFAULT_INSTANCE.createBuilder(availability);
    }

    public static Availability parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Availability parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Availability parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Availability parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Availability parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Availability parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Availability parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Availability parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Availability parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Availability parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Availability parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Availability parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Availability> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setContext(Context context) {
        this.context_ = context.getNumber();
    }

    public void setContextValue(int i) {
        this.context_ = i;
    }

    public void setStatus(Status status) {
        this.status_ = status.getNumber();
    }

    public void setStatusValue(int i) {
        this.status_ = i;
    }

    public void setUntil(Int64Value int64Value) {
        int64Value.getClass();
        this.until_ = int64Value;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\f\u0002\t\u0003\f", new Object[]{"status_", "until_", "context_"});
            case 3:
                return new Availability();
            case 4:
                return new C3324b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Availability.class) {
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

    public Context getContext() {
        Context forNumber = Context.forNumber(this.context_);
        Context context = forNumber;
        if (forNumber == null) {
            context = Context.UNRECOGNIZED;
        }
        return context;
    }

    public int getContextValue() {
        return this.context_;
    }

    public Status getStatus() {
        Status forNumber = Status.forNumber(this.status_);
        Status status = forNumber;
        if (forNumber == null) {
            status = Status.UNRECOGNIZED;
        }
        return status;
    }

    public int getStatusValue() {
        return this.status_;
    }

    public Int64Value getUntil() {
        Int64Value int64Value = this.until_;
        Int64Value int64Value2 = int64Value;
        if (int64Value == null) {
            int64Value2 = Int64Value.getDefaultInstance();
        }
        return int64Value2;
    }

    public boolean hasUntil() {
        return this.until_ != null;
    }
}
