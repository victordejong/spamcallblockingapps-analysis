.class public final Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
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

.field private memoizedIsInitialized:B

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

    .line 33728
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 33736
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32744
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 32913
    iput-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 32745
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32764
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    .line 32766
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32770
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 32774
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0x108

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f3a

    if-eq v4, v5, :cond_1

    .line 32794
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 32786
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 32789
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v5, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 32790
    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 32789
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32780
    :cond_3
    iget v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/2addr v4, v2

    iput v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    .line 32781
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32805
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 32806
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 32803
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_5

    .line 32809
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 32811
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 32812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->makeExtensionsImmutable()V

    .line 32813
    throw p1

    :cond_6
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_7

    .line 32809
    iget-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 32811
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 32812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32734
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
            "*>;)V"
        }
    .end annotation

    .line 32742
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 32913
    iput-byte p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 32734
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$23402(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;Z)Z
    .locals 0

    .line 32734
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$23500(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;
    .locals 0

    .line 32734
    iget-object p0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$23502(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32734
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23602(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;I)I
    .locals 0

    .line 32734
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .line 33732
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 32817
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$22900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .line 33088
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .line 33091
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33061
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 33062
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33068
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 33069
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33029
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33035
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33074
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 33075
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33081
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 33082
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33049
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 33050
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33056
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 33057
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33018
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33024
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33039
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33045
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .line 33747
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 32975
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v1, :cond_1

    .line 32976
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 32978
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 32980
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 32981
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v1

    .line 32983
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 32985
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    .line 32986
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 32987
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 32988
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .line 33757
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 32734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 32734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDeprecated()Z
    .locals 1

    .line 32855
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .line 33752
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 32952
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 32956
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    .line 32957
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 32958
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 32960
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x3e7

    .line 32961
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 32962
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32964
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 32965
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 32966
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedSize:I

    return v0
.end method

.method public final getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 32899
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public final getUninterpretedOptionCount()I
    .locals 1

    .line 32889
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

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

    .line 32868
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUninterpretedOptionOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 32910
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

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

    .line 32879
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 32758
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasDeprecated()Z
    .locals 2

    .line 32842
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 32995
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 32996
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedHashCode:I

    return v0

    .line 32999
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 33000
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 33003
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v1

    .line 33002
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 33005
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 33007
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33009
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 33010
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33011
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 32823
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$23000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    .line 32824
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 32916
    iget-byte v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 32920
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 32921
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOption(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 32922
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32926
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 32927
    iput-byte v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    return v2

    .line 32930
    :cond_4
    iput-byte v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .line 33086
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    .line 33102
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 32734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 32734
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 32734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 32752
    new-instance p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    invoke-direct {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    .line 33095
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 33096
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 32734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 32734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$Builder;

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

    .line 32939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 32940
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    .line 32941
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_0
    const/4 v1, 0x0

    .line 32943
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x3e7

    .line 32944
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000000

    .line 32946
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/explorestack/protobuf/CodedOutputStream;)V

    .line 32947
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
