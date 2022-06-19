.class public final Lcom/explorestack/protobuf/adcom/Context$Data;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Data$Builder;,
        Lcom/explorestack/protobuf/adcom/Context$Data$Segment;,
        Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_FIELD_NUMBER:I = 0x3

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

.field private segment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17308
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    .line 17316
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13855
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 15874
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    const-string v0, ""

    .line 13856
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    .line 13857
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    .line 13858
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    .line 13859
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13878
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>()V

    .line 13880
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13884
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 13888
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 13937
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$Data;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 13925
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 13926
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 13928
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 13930
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 13931
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 13916
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 13919
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 13920
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 13919
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_6

    .line 13907
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 13910
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    .line 13911
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 13910
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13900
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 13902
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13894
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 13896
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;
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

    .line 13948
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 13949
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 13946
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 13952
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_b

    .line 13955
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 13957
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 13958
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->makeExtensionsImmutable()V

    .line 13959
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_d

    .line 13952
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_e

    .line 13955
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 13957
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 13958
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13846
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 13853
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 15874
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 13846
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14300()Z
    .locals 1

    .line 13846
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14500(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;
    .locals 0

    .line 13846
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14502(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13846
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14600(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;
    .locals 0

    .line 13846
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14602(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13846
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;
    .locals 0

    .line 13846
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14702(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13846
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/explorestack/protobuf/adcom/Context$Data;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 13846
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;
    .locals 0

    .line 13846
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14902(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13846
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15000()Z
    .locals 1

    .line 13846
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15100()Z
    .locals 1

    .line 13846
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Data;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15200(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13846
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$15300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13846
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13846
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13846
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 17312
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13963
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16063
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16066
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16036
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16037
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16043
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16044
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16004
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16010
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16049
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16050
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16056
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16057
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16024
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16025
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16031
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 16032
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15993
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15999
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16014
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16020
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation

    .line 17327
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15940
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    if-nez v1, :cond_1

    .line 15941
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15943
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    .line 15945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v1

    .line 15946
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 15947
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v1

    .line 15948
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 15949
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentList()Ljava/util/List;

    move-result-object v1

    .line 15950
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 15951
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 15952
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 15954
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 15956
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 15957
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 15958
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 17337
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 15806
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 15816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 15860
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 15850
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

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

    .line 15829
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 15871
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

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

    .line 15840
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 15657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    .line 15658
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15659
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 15661
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 15663
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15664
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 15677
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    .line 15678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15679
    check-cast v0, Ljava/lang/String;

    .line 15680
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 15682
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    return-object v0

    .line 15685
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 15699
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    .line 15700
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15701
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 15703
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 15705
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 15706
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 15719
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    .line 15720
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15721
    check-cast v0, Ljava/lang/String;

    .line 15722
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 15724
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    return-object v0

    .line 15727
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
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation

    .line 17332
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSegment(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 15772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p1
.end method

.method public final getSegmentCount()I
    .locals 1

    .line 15762
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 15741
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object v0
.end method

.method public final getSegmentOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;
    .locals 1

    .line 15783
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;

    return-object p1
.end method

.method public final getSegmentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15752
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 15908
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15912
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 15913
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15915
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 15916
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x0

    .line 15918
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 15919
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    .line 15920
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15922
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 15923
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    .line 15924
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15926
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 15928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15930
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15931
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 13872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 15796
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 15964
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 15965
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedHashCode:I

    return v0

    .line 15968
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 15970
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 15972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 15975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getSegmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15977
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 15979
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15981
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 15983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 15985
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15986
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 13969
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 13970
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 15877
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 15881
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13846
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16061
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16077
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 13866
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16070
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Data;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Data;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 16071
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 15888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15889
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15891
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 15892
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15894
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 15895
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->segment_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15897
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 15898
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15900
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 15901
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 15903
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
