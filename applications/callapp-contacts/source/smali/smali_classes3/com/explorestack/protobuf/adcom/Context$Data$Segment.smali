.class public final Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
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

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private volatile value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15613
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    .line 15621
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14113
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 14440
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    const-string v0, ""

    .line 14114
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    .line 14115
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    .line 14116
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    .line 14117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14136
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>()V

    .line 14138
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14142
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 14146
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 14192
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 14180
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 14181
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 14183
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 14185
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 14186
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 14171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 14174
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14175
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 14174
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14164
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 14166
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 14158
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 14160
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 14152
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 14154
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14203
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 14204
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14201
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_9

    .line 14207
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14209
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 14210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->makeExtensionsImmutable()V

    .line 14211
    throw p1

    :cond_a
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_b

    .line 14207
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14209
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 14210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14104
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 14111
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 14440
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 14104
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$12700()Z
    .locals 1

    .line 14104
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12900(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;
    .locals 0

    .line 14104
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12902(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14104
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13000(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;
    .locals 0

    .line 14104
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13002(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14104
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/lang/Object;
    .locals 0

    .line 14104
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13102(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14104
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13202(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 14104
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$13300(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Ljava/util/List;
    .locals 0

    .line 14104
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$13302(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14104
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13400()Z
    .locals 1

    .line 14104
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13500(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 14104
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$13600()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 14104
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14104
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14104
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14104
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 15617
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14215
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 14626
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 14629
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14599
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 14600
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14606
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 14607
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14567
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14573
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14612
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 14613
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14619
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 14620
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14587
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 14588
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14594
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 14595
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14556
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14562
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14577
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14583
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 15632
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 14505
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    if-nez v1, :cond_1

    .line 14506
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14508
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    .line 14510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v1

    .line 14511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 14512
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v1

    .line 14513
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 14514
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 14515
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 14516
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 14517
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 14519
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14521
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 14522
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 14523
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 15642
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 14372
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 14382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 14426
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 14416
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

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

    .line 14395
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 14437
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

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

    .line 14406
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 14236
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    .line 14237
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14238
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14240
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 14242
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14243
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 14256
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    .line 14257
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14258
    check-cast v0, Ljava/lang/String;

    .line 14259
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 14261
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    return-object v0

    .line 14264
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 14278
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    .line 14279
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14280
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14282
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 14284
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14285
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 14298
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    .line 14299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14300
    check-cast v0, Ljava/lang/String;

    .line 14301
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 14303
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    return-object v0

    .line 14306
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
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 15637
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 14474
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14478
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 14479
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14481
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 14482
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14484
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    .line 14485
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14487
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 14488
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    .line 14489
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14491
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 14493
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14495
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 14496
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 14130
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .line 14320
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    .line 14321
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14322
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14324
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 14326
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14327
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 14340
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    .line 14341
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14342
    check-cast v0, Ljava/lang/String;

    .line 14343
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 14345
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    return-object v0

    .line 14348
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 14362
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 14529
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 14530
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedHashCode:I

    return v0

    .line 14533
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 14535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 14539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 14542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14544
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 14546
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 14548
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14549
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14221
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_Segment_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    .line 14222
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 14443
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 14447
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14104
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 14624
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 14640
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 14124
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 14633
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 14634
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

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

    .line 14454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14455
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14457
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 14458
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14460
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 14461
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->value_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 14463
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 14464
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14466
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 14467
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 14469
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
