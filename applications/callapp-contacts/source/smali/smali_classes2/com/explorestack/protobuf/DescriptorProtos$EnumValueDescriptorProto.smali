.class public final Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17965
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 17973
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17162
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 17332
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 17163
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17182
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    .line 17184
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17188
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 17192
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1

    .line 17222
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 17210
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 17211
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v3

    .line 17213
    :cond_2
    sget-object v4, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    if-eqz v3, :cond_3

    .line 17215
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    .line 17216
    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17218
    :cond_3
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    goto :goto_0

    .line 17204
    :cond_4
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 17205
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    goto :goto_0

    .line 17198
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    .line 17199
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 17200
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17233
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 17234
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17231
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17236
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 17237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->makeExtensionsImmutable()V

    .line 17238
    throw p1

    .line 17236
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 17237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17153
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 17160
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 17332
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 17153
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 17153
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12102(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17153
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I
    .locals 0

    .line 17153
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return p1
.end method

.method static synthetic access$12302(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 0

    .line 17153
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I
    .locals 0

    .line 17153
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 17969
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17242
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$11600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17512
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17515
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17485
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17486
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17492
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17493
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17453
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17459
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17498
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17499
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17505
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17506
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17473
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17474
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17480
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17481
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17442
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17448
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17463
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17469
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 17984
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17391
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v1, :cond_1

    .line 17392
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 17394
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 17396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 17397
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 17399
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 17401
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 17402
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17403
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v1

    .line 17404
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 17406
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 17407
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    .line 17409
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 17411
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 17994
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 17266
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 17267
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17268
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17270
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17272
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17273
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17274
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17284
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 17285
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17286
    check-cast v0, Ljava/lang/String;

    .line 17287
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17289
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    .line 17292
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 17308
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .line 17323
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;
    .locals 1

    .line 17329
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

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
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 17989
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 17366
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 17370
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 17371
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 17373
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 17374
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 17375
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 17377
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 17379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 17381
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 17382
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 17176
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 17260
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

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

    .line 17302
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 17317
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 17417
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 17418
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedHashCode:I

    return v0

    .line 17421
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 17422
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 17424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17426
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 17428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    .line 17430
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 17432
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 17434
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17435
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17248
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$11700()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17249
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 17335
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 17339
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17341
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    return v2

    .line 17345
    :cond_2
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17510
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 17526
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17153
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 17170
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 17519
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 17520
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17352
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 17353
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17355
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 17356
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17358
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 17359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 17361
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
