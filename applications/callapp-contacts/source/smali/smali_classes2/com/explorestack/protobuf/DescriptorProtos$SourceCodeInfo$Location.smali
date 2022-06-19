.class public final Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

.field public static final LEADING_COMMENTS_FIELD_NUMBER:I = 0x3

.field public static final LEADING_DETACHED_COMMENTS_FIELD_NUMBER:I = 0x6

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SPAN_FIELD_NUMBER:I = 0x2

.field public static final TRAILING_COMMENTS_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile leadingComments_:Ljava/lang/Object;

.field private leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private pathMemoizedSerializedSize:I

.field private path_:Lcom/explorestack/protobuf/Internal$IntList;

.field private spanMemoizedSerializedSize:I

.field private span_:Lcom/explorestack/protobuf/Internal$IntList;

.field private volatile trailingComments_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39835
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 39843
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38000
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 38237
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    .line 38284
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    .line 38516
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    .line 38001
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38002
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    const-string v0, ""

    .line 38003
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 38004
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 38005
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38024
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    .line 38026
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38030
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/16 v4, 0x10

    if-nez v1, :cond_13

    .line 38034
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v6, 0x8

    if-eq v5, v6, :cond_d

    const/16 v6, 0xa

    if-eq v5, v6, :cond_a

    if-eq v5, v4, :cond_8

    const/16 v6, 0x12

    if-eq v5, v6, :cond_5

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_4

    const/16 v6, 0x22

    if-eq v5, v6, :cond_3

    const/16 v6, 0x32

    if-eq v5, v6, :cond_1

    .line 38103
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 38094
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    and-int/lit8 v6, v3, 0x10

    if-nez v6, :cond_2

    .line 38096
    new-instance v6, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x10

    .line 38099
    :cond_2
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    goto :goto_0

    .line 38088
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 38089
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 38090
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    goto :goto_0

    .line 38082
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v5

    .line 38083
    iget v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 38084
    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    goto :goto_0

    .line 38069
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 38070
    invoke-virtual {p1, v5}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_6

    .line 38071
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_6

    .line 38072
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v6

    iput-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x2

    .line 38075
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_7

    .line 38076
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 38078
    :cond_7
    invoke-virtual {p1, v5}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_9

    .line 38062
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x2

    .line 38065
    :cond_9
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    .line 38048
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 38049
    invoke-virtual {p1, v5}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_b

    .line 38050
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_b

    .line 38051
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v6

    iput-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x1

    .line 38054
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_c

    .line 38055
    iget-object v6, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 38057
    :cond_c
    invoke-virtual {p1, v5}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_e

    .line 38041
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    or-int/lit8 v3, v3, 0x1

    .line 38044
    :cond_e
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 38114
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38115
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38112
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_10

    .line 38118
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    :cond_10
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_11

    .line 38121
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    :cond_11
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_12

    .line 38124
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38126
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 38127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->makeExtensionsImmutable()V

    .line 38128
    throw p1

    :cond_13
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_14

    .line 38118
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    :cond_14
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_15

    .line 38121
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$IntList;->makeImmutable()V

    :cond_15
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_16

    .line 38124
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38126
    :cond_16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 38127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37991
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 37998
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 38237
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    .line 38284
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    .line 38516
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 37991
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$27800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 37991
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic access$27802(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 37991
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic access$27900(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 37991
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic access$27902(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 0

    .line 37991
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic access$28000(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 37991
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28002(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37991
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28100(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 37991
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28102(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37991
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28200(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 37991
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$28202(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 37991
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$28302(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I
    .locals 0

    .line 37991
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 39839
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 38132
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27300()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 38745
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 38748
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38718
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 38719
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38725
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 38726
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38686
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38692
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38731
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 38732
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38738
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 38739
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38706
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 38707
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38713
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 38714
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38675
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38681
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38696
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38702
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 39854
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38615
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v1, :cond_1

    .line 38616
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 38618
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 38620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v1

    .line 38621
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 38622
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    .line 38623
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 38624
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 38625
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v1

    .line 38627
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 38629
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 38630
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38631
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v1

    .line 38632
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 38634
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 38635
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 38636
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 39864
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getLeadingComments()Ljava/lang/String;
    .locals 2

    .line 38376
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 38377
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38378
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 38380
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 38382
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38383
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38384
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getLeadingCommentsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 38433
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 38434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38435
    check-cast v0, Ljava/lang/String;

    .line 38436
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 38438
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    return-object v0

    .line 38441
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLeadingDetachedComments(I)Ljava/lang/String;
    .locals 1

    .line 38506
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getLeadingDetachedCommentsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 38513
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getLeadingDetachedCommentsCount()I
    .locals 1

    .line 38500
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 38494
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getLeadingDetachedCommentsList()Ljava/util/List;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 39859
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPath(I)I
    .locals 1

    .line 38235
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getPathCount()I
    .locals 1

    .line 38205
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38175
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 38559
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38565
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 38566
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38567
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x0

    .line 38570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 38573
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 38575
    :cond_2
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 38579
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 38580
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 38581
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v1, v3

    .line 38584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 38587
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 38589
    :cond_4
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    .line 38591
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    .line 38592
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 38594
    :cond_5
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    .line 38595
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_6
    const/4 v2, 0x0

    .line 38599
    :goto_2
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 38600
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v1, v2

    .line 38603
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 38605
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 38606
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSize:I

    return v1
.end method

.method public final getSpan(I)I
    .locals 1

    .line 38282
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final getSpanCount()I
    .locals 1

    .line 38268
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public final getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38254
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public final getTrailingComments()Ljava/lang/String;
    .locals 2

    .line 38457
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 38458
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38459
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 38461
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 38463
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38464
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38465
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getTrailingCommentsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 38475
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 38476
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38477
    check-cast v0, Ljava/lang/String;

    .line 38478
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 38480
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    return-object v0

    .line 38483
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 38018
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasLeadingComments()Z
    .locals 2

    .line 38331
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTrailingComments()Z
    .locals 1

    .line 38451
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

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

    .line 38642
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 38643
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    return v0

    .line 38646
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 38647
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 38649
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 38651
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 38653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 38655
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 38657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 38659
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 38661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 38663
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 38665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 38667
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 38668
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 38138
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27400()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 38139
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 38519
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 38523
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 38743
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 38759
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 37991
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 38012
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 38752
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 38753
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 37991
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 38530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSerializedSize()I

    .line 38531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 38532
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 38533
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38535
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 38536
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38538
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x12

    .line 38539
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 38540
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_2
    const/4 v1, 0x0

    .line 38542
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 38543
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38545
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 38546
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 38548
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    .line 38549
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 38551
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x6

    .line 38552
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38554
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
