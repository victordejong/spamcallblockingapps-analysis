.class public final Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

.field public static final DEPENDENCY_FIELD_NUMBER:I = 0x3

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PUBLIC_DEPENDENCY_FIELD_NUMBER:I = 0xa

.field public static final SERVICE_FIELD_NUMBER:I = 0x6

.field public static final SOURCE_CODE_INFO_FIELD_NUMBER:I = 0x9

.field public static final SYNTAX_FIELD_NUMBER:I = 0xc

.field public static final WEAK_DEPENDENCY_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dependency_:Lcom/explorestack/protobuf/LazyStringList;

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private messageType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name_:Ljava/lang/Object;

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

.field private volatile package_:Ljava/lang/Object;

.field private publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

.field private service_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

.field private volatile syntax_:Ljava/lang/Object;

.field private weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4710
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 4718
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1178
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1911
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1179
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1180
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1181
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1182
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1183
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 1184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1188
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1207
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    .line 1209
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_17

    .line 1217
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 1354
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_4

    .line 1348
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 1349
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1350
    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    goto :goto_0

    .line 1335
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1336
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_1

    .line 1337
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_1

    .line 1338
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x10

    .line 1341
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_2

    .line 1342
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 1344
    :cond_2
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_3

    .line 1328
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x10

    .line 1331
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    .line 1314
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 1315
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_4

    .line 1316
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_4

    .line 1317
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x8

    .line 1320
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_5

    .line 1321
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 1323
    :cond_5
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_6

    .line 1307
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x8

    .line 1310
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    .line 1294
    :sswitch_5
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    .line 1295
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v5

    .line 1297
    :cond_7
    sget-object v4, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-eqz v5, :cond_8

    .line 1299
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 1300
    invoke-virtual {v5}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 1302
    :cond_8
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    goto/16 :goto_0

    .line 1281
    :sswitch_6
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    .line 1282
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v5

    .line 1284
    :cond_9
    sget-object v4, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-eqz v5, :cond_a

    .line 1286
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 1287
    invoke-virtual {v5}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 1289
    :cond_a
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_b

    .line 1272
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    .line 1275
    :cond_b
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1276
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 1275
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_c

    .line 1263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    or-int/lit16 v3, v3, 0x80

    .line 1266
    :cond_c
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1267
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 1266
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_d

    .line 1254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 1257
    :cond_d
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1258
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 1257
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_e

    .line 1245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 1248
    :cond_e
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1249
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 1248
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1235
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_f

    .line 1237
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x4

    .line 1240
    :cond_f
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 1229
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 1230
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1231
    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1223
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 1224
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1225
    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_4
    if-nez v4, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 1365
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1366
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1363
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_10

    .line 1369
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_11

    .line 1372
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_12

    .line 1375
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v3, 0x80

    if-eqz p2, :cond_13

    .line 1378
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_14

    .line 1381
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_15

    .line 1384
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    :cond_15
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_16

    .line 1387
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    .line 1389
    :cond_16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->makeExtensionsImmutable()V

    .line 1391
    throw p1

    :cond_17
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_18

    .line 1369
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_18
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_19

    .line 1372
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_1a

    .line 1375
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v3, 0x80

    if-eqz p1, :cond_1b

    .line 1378
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    :cond_1b
    and-int/lit16 p1, v3, 0x100

    if-eqz p1, :cond_1c

    .line 1381
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_1d

    .line 1384
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    :cond_1d
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_1e

    .line 1387
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    .line 1389
    :cond_1e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1169
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1176
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1911
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 1169
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;I)I
    .locals 0

    .line 1169
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 4714
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1395
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$700()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2250
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2253
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2223
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2224
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2230
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2231
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2191
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2197
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2236
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2237
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2243
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2244
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2212
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2218
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2219
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2180
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2186
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2201
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2207
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 4729
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2069
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_1

    .line 2070
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2072
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 2074
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 2075
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2077
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 2079
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 2080
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 2082
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 2084
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 2085
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 2086
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v1

    .line 2087
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 2088
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v1

    .line 2089
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 2090
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v1

    .line 2091
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 2092
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v1

    .line 2093
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 2094
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v1

    .line 2095
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 2096
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v1

    .line 2097
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 2098
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 2099
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    .line 2101
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 2103
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 2104
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    .line 2106
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 2108
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 2109
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 2113
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v3

    :cond_13
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 4739
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDependency(I)Ljava/lang/String;
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getDependencyBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getDependencyCount()I
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getDependencyList()Ljava/util/List;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1
.end method

.method public final getEnumTypeCount()I
    .locals 1

    .line 1705
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1692
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public final getEnumTypeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getEnumTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1699
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final getExtensionCount()I
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1762
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtensionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1769
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public final getMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1
.end method

.method public final getMessageTypeCount()I
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1641
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public final getMessageTypeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getMessageTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1652
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1428
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1429
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1431
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1433
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1449
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1450
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1451
    check-cast v0, Ljava/lang/String;

    .line 1452
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1454
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    .line 1457
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileOptionsOrBuilder;
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1482
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1483
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1485
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1487
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1488
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getPackageBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1503
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1504
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1505
    check-cast v0, Ljava/lang/String;

    .line 1506
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1508
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    return-object v0

    .line 1511
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 4734
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPublicDependency(I)I
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getPublicDependencyCount()I
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getPublicDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .line 1996
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2000
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2001
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2003
    :goto_0
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 2004
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2008
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2009
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    .line 2012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 2014
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v3, v4, :cond_4

    .line 2015
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 2016
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 2018
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    .line 2019
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 2020
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 2022
    :goto_4
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 2023
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 2024
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 2026
    :goto_5
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    const/4 v4, 0x7

    .line 2027
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 2028
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2030
    :cond_7
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v3, v5

    const/16 v4, 0x8

    if-eqz v3, :cond_8

    .line 2032
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2034
    :cond_8
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/16 v3, 0x9

    .line 2036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2040
    :goto_6
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 2041
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2042
    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v0, v4

    .line 2045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 2049
    :goto_7
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 2050
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 2051
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v0, v3

    .line 2054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 2056
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 2057
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2059
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2060
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getService(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p1
.end method

.method public final getServiceCount()I
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public final getServiceOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getServiceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public final getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    .line 1838
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSourceCodeInfoOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;
    .locals 1

    .line 1851
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSyntax()Ljava/lang/String;
    .locals 2

    .line 1876
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1877
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1878
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1880
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1882
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1883
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1884
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getSyntaxBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1899
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1900
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1901
    check-cast v0, Ljava/lang/String;

    .line 1902
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1904
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    return-object v0

    .line 1907
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWeakDependency(I)I
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getWeakDependencyCount()I
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getWeakDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 1417
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 1797
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPackage()Z
    .locals 1

    .line 1471
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSourceCodeInfo()Z
    .locals 1

    .line 1825
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSyntax()Z
    .locals 1

    .line 1865
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 2119
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2120
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    return v0

    .line 2123
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 2124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2128
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 2130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2132
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 2134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2136
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 2138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2140
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 2142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2144
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 2146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2148
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 2150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2152
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 2154
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2156
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 2158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2160
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 2162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2164
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 2166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2168
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 2170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x1d

    .line 2172
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2173
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1401
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$800()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 1402
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1914
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1918
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1919
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1920
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1924
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1925
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1926
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 1930
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 1931
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1932
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 1936
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 1937
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1938
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1942
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1943
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1944
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return v2

    .line 1948
    :cond_a
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2248
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 2264
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1169
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1195
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 2257
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 2258
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1955
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1958
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1961
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 1962
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1964
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    .line 1965
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1967
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 1968
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 1970
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 1971
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 1973
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 1974
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1976
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    .line 1977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1979
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 1980
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_8
    const/4 v1, 0x0

    .line 1982
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 1983
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1985
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xb

    .line 1986
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1988
    :cond_a
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 1989
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1991
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
