.class public final Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$MessageOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final MAP_ENTRY_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private mapEntry_:Z

.field private memoizedIsInitialized:B

.field private messageSetWireFormat_:Z

.field private noStandardDescriptorAccessor_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27069
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 27077
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25581
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 25900
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    .line 25582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25601
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    .line 25603
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25607
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/16 v4, 0x10

    if-nez v1, :cond_9

    .line 25611
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    if-eq v5, v4, :cond_5

    const/16 v7, 0x18

    if-eq v5, v7, :cond_4

    const/16 v7, 0x38

    if-eq v5, v7, :cond_3

    const/16 v6, 0x1f3a

    if-eq v5, v6, :cond_1

    .line 25646
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_2

    .line 25638
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 25641
    :cond_2
    iget-object v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v6, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25642
    invoke-virtual {p1, v6, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v6

    .line 25641
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25632
    :cond_3
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    .line 25633
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->mapEntry_:Z

    goto :goto_0

    .line 25627
    :cond_4
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    .line 25628
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->deprecated_:Z

    goto :goto_0

    .line 25622
    :cond_5
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    .line 25623
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    goto :goto_0

    .line 25617
    :cond_6
    iget v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    .line 25618
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25657
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 25658
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 25655
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_8

    .line 25661
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 25663
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 25664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->makeExtensionsImmutable()V

    .line 25665
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_a

    .line 25661
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 25663
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 25664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25571
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            "*>;)V"
        }
    .end annotation

    .line 25579
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 25900
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 25571
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$18202(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 25571
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return p1
.end method

.method static synthetic access$18302(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 25571
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return p1
.end method

.method static synthetic access$18402(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 25571
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$18502(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 25571
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->mapEntry_:Z

    return p1
.end method

.method static synthetic access$18600(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;
    .locals 0

    .line 25571
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18602(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25571
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18702(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;I)I
    .locals 0

    .line 25571
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 27073
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 25669
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$17700()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 26126
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 26129
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26099
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26100
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26106
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26107
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26067
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26073
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26112
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26113
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26119
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26120
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26087
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26088
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26094
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26095
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26056
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26062
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26077
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26083
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .line 27088
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 25983
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    if-nez v1, :cond_1

    .line 25984
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 25986
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 25988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 25989
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25990
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    .line 25991
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 25993
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 25994
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v1

    .line 25996
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 25998
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 25999
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26000
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDeprecated()Z

    move-result v1

    .line 26001
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 26003
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMapEntry()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMapEntry()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 26004
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMapEntry()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v1

    .line 26006
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 26008
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    .line 26009
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 26010
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 26011
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 27098
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 25785
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->deprecated_:Z

    return v0
.end method

.method public final getMapEntry()Z
    .locals 1

    .line 25842
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->mapEntry_:Z

    return v0
.end method

.method public final getMessageSetWireFormat()Z
    .locals 1

    .line 25729
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return v0
.end method

.method public final getNoStandardDescriptorAccessor()Z
    .locals 1

    .line 25756
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .line 27093
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 25948
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 25952
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 25953
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    .line 25954
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 25956
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 25957
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    .line 25958
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25960
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 25961
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->deprecated_:Z

    .line 25962
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25964
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 25965
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->mapEntry_:Z

    .line 25966
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25968
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/16 v1, 0x3e7

    .line 25969
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 25970
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25972
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 25973
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 25974
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedSize:I

    return v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 25886
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 25876
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 25855
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 25897
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public final getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25866
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 25595
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasDeprecated()Z
    .locals 1

    .line 25772
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMapEntry()Z
    .locals 1

    .line 25815
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMessageSetWireFormat()Z
    .locals 2

    .line 25705
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNoStandardDescriptorAccessor()Z
    .locals 1

    .line 25744
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

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

    .line 26018
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 26019
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedHashCode:I

    return v0

    .line 26022
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 26023
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 26026
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    .line 26025
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26028
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 26031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v1

    .line 26030
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26033
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 26036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getDeprecated()Z

    move-result v1

    .line 26035
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26038
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hasMapEntry()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 26041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v1

    .line 26040
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26043
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 26045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26047
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 26048
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26049
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 25675
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$17800()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 25676
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 25903
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 25907
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 25908
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 25909
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25913
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 25914
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return v2

    .line 25917
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 26124
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .line 26140
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 25571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25571
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 25571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 25589
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .line 26133
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 26134
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 25571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 25571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25926
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->newExtensionWriter()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 25927
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 25928
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25930
    :cond_0
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 25931
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25933
    :cond_1
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 25934
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->deprecated_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25936
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    .line 25937
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->mapEntry_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_3
    const/4 v1, 0x0

    .line 25939
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/16 v2, 0x3e7

    .line 25940
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/high16 v1, 0x20000000

    .line 25942
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 25943
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
