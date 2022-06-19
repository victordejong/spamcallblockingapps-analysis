package com.truecaller.api.services.messenger.p138v1.models.input;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20471c;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan.class */
public final class InputSpan extends GeneratedMessageLite<InputSpan, C3302b> implements AbstractC20471c {
    private static final InputSpan DEFAULT_INSTANCE;
    public static final int FINISH_FIELD_NUMBER = 4;
    public static final int LOGS_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PARENT_FIELD_NUMBER = 2;
    private static volatile Parser<InputSpan> PARSER;
    public static final int START_FIELD_NUMBER = 3;
    public static final int TAGS_FIELD_NUMBER = 5;
    private long finish_;
    private long start_;
    private MapFieldLite<String, Tag> tags_ = MapFieldLite.emptyMapField();
    private String name_ = "";
    private String parent_ = "";
    private Internal.ProtobufList<Log> logs_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$Log */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$Log.class */
    public static final class Log extends GeneratedMessageLite<Log, C3299a> implements AbstractC3303c {
        private static final Log DEFAULT_INSTANCE;
        private static volatile Parser<Log> PARSER;
        public static final int TEXT_FIELD_NUMBER = 2;
        public static final int TS_FIELD_NUMBER = 1;
        private long ts_;
        private int valueCase_ = 0;
        private Object value_;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$Log$ValueCase */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase.class */
        public enum ValueCase {
            TEXT(2),
            VALUE_NOT_SET(0);
            
            private final int value;

            ValueCase(int i) {
                this.value = i;
            }

            public static ValueCase forNumber(int i) {
                if (i != 0) {
                    if (i == 2) {
                        return TEXT;
                    }
                    return null;
                }
                return VALUE_NOT_SET;
            }

            @Deprecated
            public static ValueCase valueOf(int i) {
                return forNumber(i);
            }

            public int getNumber() {
                return this.value;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$Log$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$a.class */
        public static final class C3299a extends GeneratedMessageLite.Builder<Log, C3299a> implements AbstractC3303c {
            public C3299a() {
                super(Log.DEFAULT_INSTANCE);
            }

            public C3299a(C3301a c3301a) {
                super(Log.DEFAULT_INSTANCE);
            }
        }

        static {
            Log log = new Log();
            DEFAULT_INSTANCE = log;
            GeneratedMessageLite.registerDefaultInstance(Log.class, log);
        }

        private Log() {
        }

        public void clearText() {
            if (this.valueCase_ == 2) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearTs() {
            this.ts_ = 0L;
        }

        public void clearValue() {
            this.valueCase_ = 0;
            this.value_ = null;
        }

        public static Log getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3299a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3299a newBuilder(Log log) {
            return DEFAULT_INSTANCE.createBuilder(log);
        }

        public static Log parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Log parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Log parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Log parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Log parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Log parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Log parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Log parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Log parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Log parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Log parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Log parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Log> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setText(String str) {
            str.getClass();
            this.valueCase_ = 2;
            this.value_ = str;
        }

        public void setTextBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.value_ = byteString.toStringUtf8();
            this.valueCase_ = 2;
        }

        public void setTs(long j) {
            this.ts_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002\u0001��\u0001\u0002\u0002������\u0001\u0002\u0002Ȼ��", new Object[]{"value_", "valueCase_", "ts_"});
                case 3:
                    return new Log();
                case 4:
                    return new C3299a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Log.class) {
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

        public String getText() {
            return this.valueCase_ == 2 ? (String) this.value_ : "";
        }

        public ByteString getTextBytes() {
            return ByteString.copyFromUtf8(this.valueCase_ == 2 ? (String) this.value_ : "");
        }

        public long getTs() {
            return this.ts_;
        }

        public ValueCase getValueCase() {
            return ValueCase.forNumber(this.valueCase_);
        }

        public boolean hasText() {
            return this.valueCase_ == 2;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$Tag */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$Tag.class */
    public static final class Tag extends GeneratedMessageLite<Tag, C3300a> implements Object {
        public static final int BOOLEAN_VALUE_FIELD_NUMBER = 1;
        private static final Tag DEFAULT_INSTANCE;
        public static final int LONG_VALUE_FIELD_NUMBER = 3;
        private static volatile Parser<Tag> PARSER;
        public static final int STRING_VALUE_FIELD_NUMBER = 2;
        private int valueCase_ = 0;
        private Object value_;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$Tag$ValueCase */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$Tag$ValueCase.class */
        public enum ValueCase {
            BOOLEAN_VALUE(1),
            STRING_VALUE(2),
            LONG_VALUE(3),
            VALUE_NOT_SET(0);
            
            private final int value;

            ValueCase(int i) {
                this.value = i;
            }

            public static ValueCase forNumber(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return BOOLEAN_VALUE;
                    }
                    if (i == 2) {
                        return STRING_VALUE;
                    }
                    if (i == 3) {
                        return LONG_VALUE;
                    }
                    return null;
                }
                return VALUE_NOT_SET;
            }

            @Deprecated
            public static ValueCase valueOf(int i) {
                return forNumber(i);
            }

            public int getNumber() {
                return this.value;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$Tag$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$Tag$a.class */
        public static final class C3300a extends GeneratedMessageLite.Builder<Tag, C3300a> implements Object {
            public C3300a() {
                super(Tag.DEFAULT_INSTANCE);
            }

            public C3300a(C3301a c3301a) {
                super(Tag.DEFAULT_INSTANCE);
            }
        }

        static {
            Tag tag = new Tag();
            DEFAULT_INSTANCE = tag;
            GeneratedMessageLite.registerDefaultInstance(Tag.class, tag);
        }

        private Tag() {
        }

        public void clearBooleanValue() {
            if (this.valueCase_ == 1) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearLongValue() {
            if (this.valueCase_ == 3) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearStringValue() {
            if (this.valueCase_ == 2) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearValue() {
            this.valueCase_ = 0;
            this.value_ = null;
        }

        public static Tag getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3300a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3300a newBuilder(Tag tag) {
            return DEFAULT_INSTANCE.createBuilder(tag);
        }

        public static Tag parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Tag parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Tag parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Tag parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Tag parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Tag parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Tag parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Tag parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Tag parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Tag parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Tag parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Tag parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Tag> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setBooleanValue(boolean z) {
            this.valueCase_ = 1;
            this.value_ = Boolean.valueOf(z);
        }

        public void setLongValue(long j) {
            this.valueCase_ = 3;
            this.value_ = Long.valueOf(j);
        }

        public void setStringValue(String str) {
            str.getClass();
            this.valueCase_ = 2;
            this.value_ = str;
        }

        public void setStringValueBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.value_ = byteString.toStringUtf8();
            this.valueCase_ = 2;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003\u0001��\u0001\u0003\u0003������\u0001:��\u0002Ȼ��\u00035��", new Object[]{"value_", "valueCase_"});
                case 3:
                    return new Tag();
                case 4:
                    return new C3300a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Tag.class) {
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

        public boolean getBooleanValue() {
            if (this.valueCase_ == 1) {
                return ((Boolean) this.value_).booleanValue();
            }
            return false;
        }

        public long getLongValue() {
            if (this.valueCase_ == 3) {
                return ((Long) this.value_).longValue();
            }
            return 0L;
        }

        public String getStringValue() {
            return this.valueCase_ == 2 ? (String) this.value_ : "";
        }

        public ByteString getStringValueBytes() {
            return ByteString.copyFromUtf8(this.valueCase_ == 2 ? (String) this.value_ : "");
        }

        public ValueCase getValueCase() {
            return ValueCase.forNumber(this.valueCase_);
        }

        public boolean hasBooleanValue() {
            boolean z = true;
            if (this.valueCase_ != 1) {
                z = false;
            }
            return z;
        }

        public boolean hasLongValue() {
            return this.valueCase_ == 3;
        }

        public boolean hasStringValue() {
            return this.valueCase_ == 2;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$b.class */
    public static final class C3302b extends GeneratedMessageLite.Builder<InputSpan, C3302b> implements AbstractC20471c {
        public C3302b() {
            super(InputSpan.DEFAULT_INSTANCE);
        }

        public C3302b(C3301a c3301a) {
            super(InputSpan.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$c.class */
    public interface AbstractC3303c extends MessageLiteOrBuilder {
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpan$d */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpan$d.class */
    public static final class C3304d {

        /* renamed from: a */
        public static final MapEntryLite<String, Tag> f10123a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Tag.getDefaultInstance());
    }

    static {
        InputSpan inputSpan = new InputSpan();
        DEFAULT_INSTANCE = inputSpan;
        GeneratedMessageLite.registerDefaultInstance(InputSpan.class, inputSpan);
    }

    private InputSpan() {
    }

    public void addAllLogs(Iterable<? extends Log> iterable) {
        ensureLogsIsMutable();
        AbstractMessageLite.addAll(iterable, this.logs_);
    }

    public void addLogs(int i, Log log) {
        log.getClass();
        ensureLogsIsMutable();
        this.logs_.add(i, log);
    }

    public void addLogs(Log log) {
        log.getClass();
        ensureLogsIsMutable();
        this.logs_.add(log);
    }

    public void clearFinish() {
        this.finish_ = 0L;
    }

    public void clearLogs() {
        this.logs_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    public void clearParent() {
        this.parent_ = getDefaultInstance().getParent();
    }

    public void clearStart() {
        this.start_ = 0L;
    }

    private void ensureLogsIsMutable() {
        Internal.ProtobufList<Log> protobufList = this.logs_;
        if (!protobufList.isModifiable()) {
            this.logs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static InputSpan getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public Map<String, Tag> getMutableTagsMap() {
        return internalGetMutableTags();
    }

    private MapFieldLite<String, Tag> internalGetMutableTags() {
        if (!this.tags_.isMutable()) {
            this.tags_ = this.tags_.mutableCopy();
        }
        return this.tags_;
    }

    private MapFieldLite<String, Tag> internalGetTags() {
        return this.tags_;
    }

    public static C3302b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3302b newBuilder(InputSpan inputSpan) {
        return DEFAULT_INSTANCE.createBuilder(inputSpan);
    }

    public static InputSpan parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputSpan parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputSpan parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputSpan parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputSpan parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputSpan parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputSpan parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputSpan parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputSpan parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputSpan parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputSpan parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputSpan parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputSpan> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeLogs(int i) {
        ensureLogsIsMutable();
        this.logs_.remove(i);
    }

    public void setFinish(long j) {
        this.finish_ = j;
    }

    public void setLogs(int i, Log log) {
        log.getClass();
        ensureLogsIsMutable();
        this.logs_.set(i, log);
    }

    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    public void setNameBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.name_ = byteString.toStringUtf8();
    }

    public void setParent(String str) {
        str.getClass();
        this.parent_ = str;
    }

    public void setParentBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.parent_ = byteString.toStringUtf8();
    }

    public void setStart(long j) {
        this.start_ = j;
    }

    public boolean containsTags(String str) {
        str.getClass();
        return internalGetTags().containsKey(str);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0006����\u0001\u0006\u0006\u0001\u0001��\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0002\u00052\u0006\u001b", new Object[]{"name_", "parent_", "start_", "finish_", "tags_", C3304d.f10123a, "logs_", Log.class});
            case 3:
                return new InputSpan();
            case 4:
                return new C3302b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputSpan.class) {
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

    public long getFinish() {
        return this.finish_;
    }

    public Log getLogs(int i) {
        return this.logs_.get(i);
    }

    public int getLogsCount() {
        return this.logs_.size();
    }

    public List<Log> getLogsList() {
        return this.logs_;
    }

    public AbstractC3303c getLogsOrBuilder(int i) {
        return this.logs_.get(i);
    }

    public List<? extends AbstractC3303c> getLogsOrBuilderList() {
        return this.logs_;
    }

    public String getName() {
        return this.name_;
    }

    public ByteString getNameBytes() {
        return ByteString.copyFromUtf8(this.name_);
    }

    public String getParent() {
        return this.parent_;
    }

    public ByteString getParentBytes() {
        return ByteString.copyFromUtf8(this.parent_);
    }

    public long getStart() {
        return this.start_;
    }

    @Deprecated
    public Map<String, Tag> getTags() {
        return getTagsMap();
    }

    public int getTagsCount() {
        return internalGetTags().size();
    }

    public Map<String, Tag> getTagsMap() {
        return Collections.unmodifiableMap(internalGetTags());
    }

    public Tag getTagsOrDefault(String str, Tag tag) {
        str.getClass();
        MapFieldLite<String, Tag> internalGetTags = internalGetTags();
        if (internalGetTags.containsKey(str)) {
            tag = internalGetTags.get(str);
        }
        return tag;
    }

    public Tag getTagsOrThrow(String str) {
        str.getClass();
        MapFieldLite<String, Tag> internalGetTags = internalGetTags();
        if (internalGetTags.containsKey(str)) {
            return internalGetTags.get(str);
        }
        throw new IllegalArgumentException();
    }
}
