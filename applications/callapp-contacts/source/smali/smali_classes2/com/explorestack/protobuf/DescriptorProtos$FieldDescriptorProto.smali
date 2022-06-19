.class public final Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;,
        Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0x7

.field public static final EXTENDEE_FIELD_NUMBER:I = 0x2

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x9

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_NAME_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile defaultValue_:Ljava/lang/Object;

.field private volatile extendee_:Ljava/lang/Object;

.field private volatile jsonName_:Ljava/lang/Object;

.field private label_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

.field private volatile typeName_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13596
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 13604
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 11201
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 12168
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 11202
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 11203
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    .line 11204
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    .line 11205
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 11206
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 11207
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 11208
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11227
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    .line 11229
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11233
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 11237
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 11320
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 11314
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 11315
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11316
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    goto :goto_0

    .line 11309
    :sswitch_1
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11310
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x0

    .line 11297
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1

    .line 11298
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v3

    .line 11300
    :cond_1
    sget-object v4, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v3, :cond_2

    .line 11302
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 11303
    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 11305
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    goto :goto_0

    .line 11290
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 11291
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11292
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    goto :goto_0

    .line 11284
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 11285
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11286
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    goto :goto_0

    .line 11272
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11274
    invoke-static {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x5

    .line 11276
    invoke-virtual {v0, v4, v3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 11278
    :cond_3
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11279
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    goto/16 :goto_0

    .line 11260
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11262
    invoke-static {v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v4

    const/4 v5, 0x4

    if-nez v4, :cond_4

    .line 11264
    invoke-virtual {v0, v5, v3}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 11266
    :cond_4
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11267
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    goto/16 :goto_0

    .line 11255
    :sswitch_7
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11256
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    goto/16 :goto_0

    .line 11249
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 11250
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11251
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11243
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 11244
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 11245
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;
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
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 11331
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 11332
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11329
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11334
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 11335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->makeExtensionsImmutable()V

    .line 11336
    throw p1

    .line 11334
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 11335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
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

    .line 11192
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 11199
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 12168
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 11192
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7402(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11192
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    return p1
.end method

.method static synthetic access$7602(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11192
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    return p1
.end method

.method static synthetic access$7702(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11192
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    return p1
.end method

.method static synthetic access$7800(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7802(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7902(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8000(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8002(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11192
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    return p1
.end method

.method static synthetic access$8200(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8202(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11192
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 0

    .line 11192
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11192
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 13600
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11340
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$6900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12454
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12457
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12427
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12428
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12434
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12435
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12395
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12401
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12440
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12441
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12447
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12448
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12415
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12416
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12422
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12423
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12384
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12390
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12405
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12411
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 13615
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12272
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v1, :cond_1

    .line 12273
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12275
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 12277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 12278
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 12280
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 12282
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 12283
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v1

    .line 12285
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 12287
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12288
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12289
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    if-eq v1, v2, :cond_7

    return v3

    .line 12291
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 12292
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12293
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    iget v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    if-eq v1, v2, :cond_9

    return v3

    .line 12295
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 12296
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 12297
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 12298
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 12300
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 12301
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 12302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v1

    .line 12303
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 12305
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 12306
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 12307
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 12308
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 12310
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 12311
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result v1

    .line 12313
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 12315
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 12316
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 12317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object v1

    .line 12318
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 12320
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 12321
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 12322
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    .line 12323
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 12325
    :cond_15
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v3

    :cond_16
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 13625
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 12021
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 12022
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12023
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12025
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12027
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12028
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12029
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12047
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 12048
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12049
    check-cast v0, Ljava/lang/String;

    .line 12050
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12052
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 12055
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExtendee()Ljava/lang/String;
    .locals 2

    .line 11958
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 11959
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11960
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11962
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11964
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11965
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11966
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getExtendeeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11981
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 11982
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11983
    check-cast v0, Ljava/lang/String;

    .line 11984
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11986
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    return-object v0

    .line 11989
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJsonName()Ljava/lang/String;
    .locals 2

    .line 12110
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    .line 12111
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12112
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12114
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12117
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12118
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12135
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    .line 12136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12137
    check-cast v0, Ljava/lang/String;

    .line 12138
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12140
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 12143
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .line 11839
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11840
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    :cond_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 11781
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 11782
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11783
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11785
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11787
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11788
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11789
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11799
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 11800
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11801
    check-cast v0, Ljava/lang/String;

    .line 11802
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11804
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    .line 11807
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 11823
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    return v0
.end method

.method public final getOneofIndex()I
    .locals 1

    .line 12081
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    return v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 12159
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;
    .locals 1

    .line 12165
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

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
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 13620
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 12223
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12227
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 12228
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12230
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 12231
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12233
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 12234
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    .line 12235
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 12237
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 12238
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    .line 12239
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 12241
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 12242
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    .line 12243
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 12245
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 12246
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12248
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 12249
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12251
    :cond_7
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 12253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12255
    :cond_8
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    .line 12256
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    .line 12257
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 12259
    :cond_9
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    .line 12260
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12262
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 12263
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSize:I

    return v2
.end method

.method public final getType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 11866
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11867
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    :cond_0
    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 2

    .line 11898
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 11899
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11900
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11902
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11904
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11905
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11906
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getTypeNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 11924
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 11925
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11926
    check-cast v0, Ljava/lang/String;

    .line 11927
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 11929
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    return-object v0

    .line 11932
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 11221
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasDefaultValue()Z
    .locals 1

    .line 12007
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExtendee()Z
    .locals 1

    .line 11947
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJsonName()Z
    .locals 1

    .line 12097
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLabel()Z
    .locals 1

    .line 11832
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .locals 2

    .line 11775
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNumber()Z
    .locals 1

    .line 11817
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOneofIndex()Z
    .locals 1

    .line 12070
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 12153
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasType()Z
    .locals 1

    .line 11854
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTypeName()Z
    .locals 1

    .line 11884
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

    .line 12331
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 12332
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    return v0

    .line 12335
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 12336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 12338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12340
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    .line 12344
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12346
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    add-int/2addr v0, v1

    .line 12348
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12350
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    add-int/2addr v0, v1

    .line 12352
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12356
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 12358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12360
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12364
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result v1

    add-int/2addr v0, v1

    .line 12368
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 12370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12372
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 12374
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 12376
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12377
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 11346
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$7000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 11347
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 12171
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 12175
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12177
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    return v2

    .line 12181
    :cond_2
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12452
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .line 12468
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11192
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 11215
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .line 12461
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 12462
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12188
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 12189
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12191
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 12192
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12194
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 12195
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12197
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 12198
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:I

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12200
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 12201
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:I

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12203
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12204
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12206
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 12207
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12209
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 12210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 12212
    :cond_7
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 12213
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12215
    :cond_8
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 12216
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->jsonName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12218
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
