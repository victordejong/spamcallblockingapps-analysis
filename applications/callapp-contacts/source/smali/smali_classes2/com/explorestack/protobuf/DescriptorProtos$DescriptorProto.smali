.class public final Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;,
        Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;,
        Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;,
        Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;,
        Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x4

.field public static final EXTENSION_FIELD_NUMBER:I = 0x6

.field public static final EXTENSION_RANGE_FIELD_NUMBER:I = 0x5

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NESTED_TYPE_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_DECL_FIELD_NUMBER:I = 0x8

.field public static final OPTIONS_FIELD_NUMBER:I = 0x7

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESERVED_NAME_FIELD_NUMBER:I = 0xa

.field public static final RESERVED_RANGE_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extensionRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
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

.field private field_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private nestedType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private oneofDecl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

.field private reservedName_:Lcom/explorestack/protobuf/LazyStringList;

.field private reservedRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9967
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 9975
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4998
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7088
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 4999
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 5000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 5001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 5002
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 5003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 5004
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 5005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 5006
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    .line 5007
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5026
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    .line 5028
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5032
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 5036
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 5133
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 5124
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    and-int/lit16 v5, v3, 0x200

    if-nez v5, :cond_1

    .line 5126
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit16 v3, v3, 0x200

    .line 5129
    :cond_1
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_2

    .line 5116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    .line 5119
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5120
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5119
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_3

    .line 5107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 5110
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5111
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5110
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const/4 v4, 0x0

    .line 5094
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 5095
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v4

    .line 5097
    :cond_4
    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v4, :cond_5

    .line 5099
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 5100
    invoke-virtual {v4}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 5102
    :cond_5
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_6

    .line 5085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 5088
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5089
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5088
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_7

    .line 5076
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 5079
    :cond_7
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5080
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5079
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_8

    .line 5067
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 5070
    :cond_8
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5071
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5070
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_9

    .line 5058
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 5061
    :cond_9
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5062
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5061
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_a

    .line 5049
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 5052
    :cond_a
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5053
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 5052
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5042
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v4

    .line 5043
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    .line 5044
    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5144
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5145
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5142
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_b

    .line 5148
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_c

    .line 5151
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_d

    .line 5154
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_e

    .line 5157
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_f

    .line 5160
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_10

    .line 5163
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    :cond_10
    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_11

    .line 5166
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    :cond_11
    and-int/lit16 p2, v3, 0x200

    if-eqz p2, :cond_12

    .line 5169
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5171
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->makeExtensionsImmutable()V

    .line 5173
    throw p1

    :cond_13
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_14

    .line 5148
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_15

    .line 5151
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_16

    .line 5154
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_17

    .line 5157
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_18

    .line 5160
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_19

    .line 5163
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    :cond_19
    and-int/lit16 p1, v3, 0x100

    if-eqz p1, :cond_1a

    .line 5166
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v3, 0x200

    if-eqz p1, :cond_1b

    .line 5169
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5171
    :cond_1b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 5172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4989
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 4996
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7088
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 4989
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5802(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4989
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4989
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;I)I
    .locals 0

    .line 4989
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 9971
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5177
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$2600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .line 7396
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .line 7399
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7369
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7370
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7376
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7377
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7337
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7343
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7382
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7383
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7389
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7390
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7357
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7358
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7364
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7365
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7326
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7332
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7347
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7353
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 9986
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7236
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v1, :cond_1

    .line 7237
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7239
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 7241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 7242
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7244
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7246
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldList()Ljava/util/List;

    move-result-object v1

    .line 7247
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 7248
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v1

    .line 7249
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 7250
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeList()Ljava/util/List;

    move-result-object v1

    .line 7251
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 7252
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v1

    .line 7253
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 7254
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v1

    .line 7255
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 7256
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclList()Ljava/util/List;

    move-result-object v1

    .line 7257
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 7258
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 7259
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    .line 7261
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 7263
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeList()Ljava/util/List;

    move-result-object v1

    .line 7264
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 7265
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 7266
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 7267
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 9996
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 6903
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1
.end method

.method public final getEnumTypeCount()I
    .locals 1

    .line 6897
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

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

    .line 6884
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public final getEnumTypeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
    .locals 1

    .line 6910
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

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

    .line 6891
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 6833
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final getExtensionCount()I
    .locals 1

    .line 6827
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

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

    .line 6814
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtensionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;
    .locals 1

    .line 6840
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

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

    .line 6821
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtensionRange(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .line 6938
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object p1
.end method

.method public final getExtensionRangeCount()I
    .locals 1

    .line 6932
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtensionRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .line 6919
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtensionRangeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;
    .locals 1

    .line 6945
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;

    return-object p1
.end method

.method public final getExtensionRangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6926
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object v0
.end method

.method public final getField(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 6798
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final getFieldCount()I
    .locals 1

    .line 6792
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 6779
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object v0
.end method

.method public final getFieldOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;
    .locals 1

    .line 6805
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getFieldOrBuilderList()Ljava/util/List;
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

    .line 6786
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 6743
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 6744
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6745
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6747
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6749
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6750
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6751
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6761
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 6762
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6763
    check-cast v0, Ljava/lang/String;

    .line 6764
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6766
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    .line 6769
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNestedType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 6868
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1
.end method

.method public final getNestedTypeCount()I
    .locals 1

    .line 6862
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getNestedTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 6849
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object v0
.end method

.method public final getNestedTypeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;
    .locals 1

    .line 6875
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getNestedTypeOrBuilderList()Ljava/util/List;
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

    .line 6856
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object v0
.end method

.method public final getOneofDecl(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 6973
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p1
.end method

.method public final getOneofDeclCount()I
    .locals 1

    .line 6967
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOneofDeclList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 6954
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    return-object v0
.end method

.method public final getOneofDeclOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;
    .locals 1

    .line 6980
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public final getOneofDeclOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6961
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 6995
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptionsOrBuilder;
    .locals 1

    .line 7001
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 9991
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getReservedName(I)Ljava/lang/String;
    .locals 1

    .line 7073
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getReservedNameBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 7085
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getReservedNameCount()I
    .locals 1

    .line 7062
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 7051
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getReservedNameList()Ljava/util/List;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getReservedRange(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
    .locals 1

    .line 7029
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    return-object p1
.end method

.method public final getReservedRangeCount()I
    .locals 1

    .line 7023
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getReservedRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;",
            ">;"
        }
    .end annotation

    .line 7010
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    return-object v0
.end method

.method public final getReservedRangeOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;
    .locals 1

    .line 7036
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;

    return-object p1
.end method

.method public final getReservedRangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7017
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .line 7179
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7183
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7184
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 7186
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_2

    .line 7187
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 7188
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 7190
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x3

    .line 7191
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 7192
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 7194
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v4, 0x4

    .line 7195
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 7196
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 7198
    :goto_4
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    .line 7199
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 7200
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 7202
    :goto_5
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 7203
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 7204
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 7206
    :cond_6
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 7208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    const/4 v3, 0x0

    .line 7210
    :goto_6
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    const/16 v4, 0x8

    .line 7211
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 7212
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 7214
    :goto_7
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    const/16 v4, 0x9

    .line 7215
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    .line 7216
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    .line 7220
    :goto_8
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 7221
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    add-int/2addr v0, v3

    .line 7224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 7226
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7227
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 5020
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 6737
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

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

    .line 6989
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 7273
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7274
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedHashCode:I

    return v0

    .line 7277
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 7278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 7280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7282
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 7284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7286
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 7288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7290
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7294
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7298
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7302
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 7304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7306
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 7308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7310
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 7312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7314
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 7316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 7318
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7319
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5183
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$2700()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 5184
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 7091
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 7095
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 7096
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7097
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 7101
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7102
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7103
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 7107
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 7108
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 7109
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 7113
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 7114
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 7115
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 7119
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 7120
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRange(I)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 7121
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 7125
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 7126
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    .line 7127
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7131
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 7133
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v2

    .line 7137
    :cond_e
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .line 7394
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .line 7410
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4989
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 5014
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .line 7403
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 7404
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto$Builder;

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

    .line 7144
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 7145
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7147
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 7148
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7150
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 7151
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 7153
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 7154
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7156
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 7157
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 7159
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 7160
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7162
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 7163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_6
    const/4 v1, 0x0

    .line 7165
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x8

    .line 7166
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 7168
    :goto_6
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 7169
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedRange_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7171
    :cond_8
    :goto_7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xa

    .line 7172
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->reservedName_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7174
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
