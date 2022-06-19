.class public final Lcom/explorestack/protobuf/adcom/Context$Regs;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Regs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    }
.end annotation


# static fields
.field public static final COPPA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

.field public static final EXT_FIELD_NUMBER:I = 0x4

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x3

.field public static final GDPR_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Regs;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private coppa_:Z

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private gdpr_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26119
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 26127
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Regs$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24936
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 25152
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedIsInitialized:B

    .line 24937
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24956
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;-><init>()V

    .line 24958
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24962
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 24966
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0x8

    if-eq v4, v5, :cond_6

    const/16 v5, 0x10

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    .line 25004
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$Regs;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 24992
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 24993
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 24995
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 24997
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 24998
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 24983
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 24986
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    .line 24987
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 24986
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24978
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->gdpr_:Z

    goto :goto_0

    .line 24973
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->coppa_:Z
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

    .line 25015
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 25016
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 25013
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_8

    .line 25019
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    .line 25021
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 25022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->makeExtensionsImmutable()V

    .line 25023
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_a

    .line 25019
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    .line 25021
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 25022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24927
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 24934
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 25152
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 24927
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$23500()Z
    .locals 1

    .line 24927
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$23702(Lcom/explorestack/protobuf/adcom/Context$Regs;Z)Z
    .locals 0

    .line 24927
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->coppa_:Z

    return p1
.end method

.method static synthetic access$23802(Lcom/explorestack/protobuf/adcom/Context$Regs;Z)Z
    .locals 0

    .line 24927
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->gdpr_:Z

    return p1
.end method

.method static synthetic access$23902(Lcom/explorestack/protobuf/adcom/Context$Regs;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 24927
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;
    .locals 0

    .line 24927
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$24002(Lcom/explorestack/protobuf/adcom/Context$Regs;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24927
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$24100()Z
    .locals 1

    .line 24927
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$24200(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 24927
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$24300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 24927
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1

    .line 26123
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 25027
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25332
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25335
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25305
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25306
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25312
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25313
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25273
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25279
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25318
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25319
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25325
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25326
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25293
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25294
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25300
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 25301
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25262
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25268
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25283
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25289
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Regs;",
            ">;"
        }
    .end annotation

    .line 26138
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 25213
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    if-nez v1, :cond_1

    .line 25214
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 25216
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    .line 25218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getCoppa()Z

    move-result v1

    .line 25219
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getCoppa()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 25220
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getGdpr()Z

    move-result v1

    .line 25221
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getGdpr()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 25222
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 25223
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 25225
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 25227
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 25228
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 25229
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method public final getCoppa()Z
    .locals 1

    .line 25048
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->coppa_:Z

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 24927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 24927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1

    .line 26148
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 25084
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 25094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 25138
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 25128
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 25107
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 25149
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25118
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getGdpr()Z
    .locals 1

    .line 25061
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->gdpr_:Z

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Regs;",
            ">;"
        }
    .end annotation

    .line 26143
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 25183
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 25187
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->coppa_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 25189
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 25191
    :goto_0
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->gdpr_:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 25193
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25195
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 25196
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    .line 25197
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25199
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 25201
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25203
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 25204
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 24950
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 25074
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 25235
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 25236
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedHashCode:I

    return v0

    .line 25239
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 25242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getCoppa()Z

    move-result v1

    .line 25241
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 25245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getGdpr()Z

    move-result v1

    .line 25244
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 25246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 25248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25250
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 25252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 25254
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25255
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 25033
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Regs_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25034
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 25155
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 25159
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 24927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 24927
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 24927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25330
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 2

    .line 25346
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 24944
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 24927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 24927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 2

    .line 25339
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Regs;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Regs;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 25340
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

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

    .line 25166
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->coppa_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 25167
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25169
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->gdpr_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 25170
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    const/4 v0, 0x0

    .line 25172
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 25173
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25175
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 25176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 25178
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
