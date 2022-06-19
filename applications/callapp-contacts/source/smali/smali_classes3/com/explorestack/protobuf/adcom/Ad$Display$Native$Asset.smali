.class public final Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$Display$Native$AssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Asset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAssetOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAssetOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAssetOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAssetOrBuilder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

.field public static final EXT_FIELD_NUMBER:I = 0x9

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IMAGE_FIELD_NUMBER:I = 0x4

.field public static final LINK_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQ_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field public static final VIDEO_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

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

.field private id_:I

.field private image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

.field private link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

.field private memoizedIsInitialized:B

.field private req_:Z

.field private title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

.field private video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15421
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    .line 15429
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6961
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 13492
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedIsInitialized:B

    .line 6962
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6981
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;-><init>()V

    .line 6983
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6987
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 6991
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v5, 0x8

    if-eq v4, v5, :cond_10

    const/16 v5, 0x10

    if-eq v4, v5, :cond_f

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eq v4, v5, :cond_d

    const/16 v5, 0x22

    if-eq v4, v5, :cond_b

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_9

    const/16 v5, 0x32

    if-eq v4, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x42

    if-eq v4, v5, :cond_3

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_1

    .line 7094
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 7082
    :cond_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_2

    .line 7083
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v6

    .line 7085
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v6, :cond_0

    .line 7087
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 7088
    invoke-virtual {v6}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 7073
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 7076
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    .line 7077
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 7076
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7060
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v4, :cond_6

    .line 7061
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;

    move-result-object v6

    .line 7063
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v6, :cond_0

    .line 7065
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;

    .line 7066
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    goto/16 :goto_0

    .line 7047
    :cond_7
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    if-eqz v4, :cond_8

    .line 7048
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset$Builder;

    move-result-object v6

    .line 7050
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    if-eqz v6, :cond_0

    .line 7052
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset$Builder;

    .line 7053
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    goto/16 :goto_0

    .line 7034
    :cond_9
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    if-eqz v4, :cond_a

    .line 7035
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset$Builder;

    move-result-object v6

    .line 7037
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    if-eqz v6, :cond_0

    .line 7039
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset$Builder;

    .line 7040
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    goto/16 :goto_0

    .line 7021
    :cond_b
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    if-eqz v4, :cond_c

    .line 7022
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset$Builder;

    move-result-object v6

    .line 7024
    :cond_c
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    if-eqz v6, :cond_0

    .line 7026
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset$Builder;

    .line 7027
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    goto/16 :goto_0

    .line 7008
    :cond_d
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    if-eqz v4, :cond_e

    .line 7009
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset$Builder;

    move-result-object v6

    .line 7011
    :cond_e
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    if-eqz v6, :cond_0

    .line 7013
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset$Builder;

    .line 7014
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    goto/16 :goto_0

    .line 7003
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->req_:Z

    goto/16 :goto_0

    .line 6998
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->id_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7105
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 7106
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7103
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_12

    .line 7109
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    .line 7111
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 7112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->makeExtensionsImmutable()V

    .line 7113
    throw p1

    :cond_13
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_14

    .line 7109
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    .line 7111
    :cond_14
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 7112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6952
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 6959
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 13492
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 6952
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10600()Z
    .locals 1

    .line 6952
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;I)I
    .locals 0

    .line 6952
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->id_:I

    return p1
.end method

.method static synthetic access$10902(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Z)Z
    .locals 0

    .line 6952
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->req_:Z

    return p1
.end method

.method static synthetic access$11002(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    return-object p1
.end method

.method static synthetic access$11202(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Ljava/util/List;
    .locals 0

    .line 6952
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11602(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 6952
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11700()Z
    .locals 1

    .line 6952
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11800(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 6952
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$11900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 6952
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1

    .line 15425
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7117
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;
    .locals 1

    .line 13751
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;
    .locals 1

    .line 13754
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13724
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 13725
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13731
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 13732
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13692
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13698
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13737
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 13738
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13744
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 13745
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13712
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 13713
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13719
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 13720
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13681
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13687
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13702
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13708
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;",
            ">;"
        }
    .end annotation

    .line 15440
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13588
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    if-nez v1, :cond_1

    .line 13589
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 13591
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    .line 13593
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getId()I

    move-result v1

    .line 13594
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 13595
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getReq()Z

    move-result v1

    .line 13596
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getReq()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 13597
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasTitle()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasTitle()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 13598
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v1

    .line 13600
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 13602
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasImage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasImage()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13603
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v1

    .line 13605
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 13607
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasVideo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasVideo()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 13608
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 13609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v1

    .line 13610
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 13612
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasData()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 13613
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasData()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 13614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v1

    .line 13615
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 13617
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasLink()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasLink()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 13618
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasLink()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 13619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v1

    .line 13620
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 13622
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 13623
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 13624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 13625
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 13627
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 13628
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 13629
    :cond_10
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v3

    :cond_11
    return v0
.end method

.method public final getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;
    .locals 1

    .line 13354
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDataOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAssetOrBuilder;
    .locals 1

    .line 13365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1

    .line 15450
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 13424
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 13434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 13478
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 13468
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

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

    .line 13447
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 13489
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

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

    .line 13458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 13208
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->id_:I

    return v0
.end method

.method public final getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;
    .locals 1

    .line 13282
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getImageOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAssetOrBuilder;
    .locals 1

    .line 13293
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;
    .locals 1

    .line 13390
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLinkOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAssetOrBuilder;
    .locals 1

    .line 13401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;",
            ">;"
        }
    .end annotation

    .line 15445
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getReq()Z
    .locals 1

    .line 13221
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->req_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 13538
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 13542
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->id_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 13544
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13546
    :goto_0
    iget-boolean v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->req_:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 13548
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13550
    :cond_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 13552
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13554
    :cond_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 13556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13558
    :cond_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 13560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13562
    :cond_5
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 13564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13566
    :cond_6
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 13568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13570
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x8

    .line 13571
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    .line 13572
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13574
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 13576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13578
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 13579
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedSize:I

    return v0
.end method

.method public final getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;
    .locals 1

    .line 13246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getTitleOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAssetOrBuilder;
    .locals 1

    .line 13257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 6975
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;
    .locals 1

    .line 13318
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAssetOrBuilder;
    .locals 1

    .line 13329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v0

    return-object v0
.end method

.method public final hasData()Z
    .locals 1

    .line 13343
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 13414
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasImage()Z
    .locals 1

    .line 13271
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLink()Z
    .locals 1

    .line 13379
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTitle()Z
    .locals 1

    .line 13235
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVideo()Z
    .locals 1

    .line 13307
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 13635
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 13636
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedHashCode:I

    return v0

    .line 13639
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 13641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 13644
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getReq()Z

    move-result v1

    .line 13643
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 13645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 13647
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13649
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 13651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13653
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 13655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13657
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasData()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13661
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasLink()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 13663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13665
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 13667
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13669
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 13671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 13673
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13674
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7123
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    .line 7124
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 13495
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 13499
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6952
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;
    .locals 1

    .line 13749
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;
    .locals 2

    .line 13765
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 6969
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;
    .locals 2

    .line 13758
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 13759
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder;

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

    .line 13506
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->id_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 13507
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 13509
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->req_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 13510
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13512
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->title_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 13513
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 13515
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->image_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 13516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 13518
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->video_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 13519
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 13521
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->data_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 13522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 13524
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 13525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_6
    const/4 v0, 0x0

    .line 13527
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    .line 13528
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13530
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 13531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 13533
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
