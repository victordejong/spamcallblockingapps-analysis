.class public final Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_STREAMING_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_TYPE_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVER_STREAMING_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientStreaming_:Z

.field private volatile inputType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

.field private volatile outputType_:Ljava/lang/Object;

.field private serverStreaming_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20585
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 20593
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19308
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 19627
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19309
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 19310
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 19311
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19330
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    .line 19332
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19336
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 19340
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0x12

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_6

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 19387
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 19382
    :cond_1
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 19383
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->serverStreaming_:Z

    goto :goto_0

    .line 19377
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 19378
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->clientStreaming_:Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 19365
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    .line 19366
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v3

    .line 19368
    :cond_4
    sget-object v4, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v3, :cond_5

    .line 19370
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 19371
    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 19373
    :cond_5
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    goto :goto_0

    .line 19358
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 19359
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 19360
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    goto :goto_0

    .line 19352
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 19353
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 19354
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19346
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 19347
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 19348
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19398
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 19399
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 19396
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19401
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 19402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->makeExtensionsImmutable()V

    .line 19403
    throw p1

    .line 19401
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 19402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19299
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 19306
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 19627
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 19299
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 19299
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14102(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19299
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14200(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 19299
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14202(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19299
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14300(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 19299
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14302(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19299
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14402(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 0

    .line 19299
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    .line 19299
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->clientStreaming_:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    .line 19299
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->serverStreaming_:Z

    return p1
.end method

.method static synthetic access$14702(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;I)I
    .locals 0

    .line 19299
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 20589
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19407
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$13600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 19855
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 19858
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19828
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19829
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19835
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19836
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19796
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19802
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19841
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19842
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19848
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19849
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19816
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19817
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19823
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19824
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19785
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19791
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19806
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19812
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 20604
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19705
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-nez v1, :cond_1

    .line 19706
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19708
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 19710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 19711
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 19713
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 19715
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 19716
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    .line 19718
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 19720
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 19721
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    .line 19723
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 19725
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 19726
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19727
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    .line 19728
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 19730
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 19731
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 19732
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v1

    .line 19733
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 19735
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 19736
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 19737
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v1

    .line 19738
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 19740
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public final getClientStreaming()Z
    .locals 1

    .line 19601
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->clientStreaming_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 20614
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getInputType()Ljava/lang/String;
    .locals 2

    .line 19483
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 19484
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19485
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19487
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19489
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19490
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19491
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getInputTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19506
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 19507
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19508
    check-cast v0, Ljava/lang/String;

    .line 19509
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19511
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    return-object v0

    .line 19514
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 19431
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 19432
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19433
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19435
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19437
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19438
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19439
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19449
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 19450
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19451
    check-cast v0, Ljava/lang/String;

    .line 19452
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19454
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    .line 19457
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 19572
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptionsOrBuilder;
    .locals 1

    .line 19578
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getOutputType()Ljava/lang/String;
    .locals 2

    .line 19530
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 19531
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19532
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19534
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19536
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19537
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19538
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getOutputTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19548
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 19549
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19550
    check-cast v0, Ljava/lang/String;

    .line 19551
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19553
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    return-object v0

    .line 19556
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
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 20609
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 19670
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 19674
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 19675
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 19677
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 19678
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 19680
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 19681
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 19683
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 19685
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 19687
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 19688
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->clientStreaming_:Z

    .line 19689
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 19691
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 19692
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->serverStreaming_:Z

    .line 19693
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 19695
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 19696
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSize:I

    return v2
.end method

.method public final getServerStreaming()Z
    .locals 1

    .line 19624
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->serverStreaming_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 19324
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasClientStreaming()Z
    .locals 1

    .line 19591
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInputType()Z
    .locals 1

    .line 19472
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .locals 2

    .line 19425
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

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

    .line 19566
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOutputType()Z
    .locals 1

    .line 19524
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasServerStreaming()Z
    .locals 1

    .line 19614
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 19746
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 19747
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    return v0

    .line 19750
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 19751
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 19753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19755
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 19757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19759
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 19761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19763
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 19765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19767
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 19770
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v1

    .line 19769
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 19772
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 19775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v1

    .line 19774
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 19777
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19778
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 19413
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$13700()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 19414
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 19630
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 19634
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19636
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedIsInitialized:B

    return v2

    .line 19640
    :cond_2
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 19853
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .line 19869
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19299
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 19318
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .line 19862
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 19863
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 19647
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 19648
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19650
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 19651
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19653
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 19654
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19656
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 19657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 19659
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 19660
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->clientStreaming_:Z

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 19662
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 19663
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->serverStreaming_:Z

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 19665
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
