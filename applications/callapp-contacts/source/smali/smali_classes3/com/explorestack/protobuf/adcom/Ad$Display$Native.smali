.class public final Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Native"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$AssetOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAssetOrBuilder;
    }
.end annotation


# static fields
.field public static final ASSET_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

.field public static final EXT_FIELD_NUMBER:I = 0x4

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x3

.field public static final LINK_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private asset_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;",
            ">;"
        }
    .end annotation
.end field

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

.field private link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17060
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 17068
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4833
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 15637
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedIsInitialized:B

    .line 4834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    .line 4835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4854
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;-><init>()V

    .line 4856
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4860
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 4864
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_7

    const/16 v5, 0x12

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    .line 4914
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 4902
    :cond_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_2

    .line 4903
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v6

    .line 4905
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v6, :cond_0

    .line 4907
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 4908
    invoke-virtual {v6}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 4893
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 4896
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    .line 4897
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 4896
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_6

    .line 4884
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 4887
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    .line 4888
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 4887
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4871
    :cond_7
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v4, :cond_8

    .line 4872
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;

    move-result-object v6

    .line 4874
    :cond_8
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v6, :cond_0

    .line 4876
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;

    .line 4877
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;
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

    .line 4925
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 4926
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4923
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 4929
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_b

    .line 4932
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    .line 4934
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->makeExtensionsImmutable()V

    .line 4936
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_d

    .line 4929
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_e

    .line 4932
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    .line 4934
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4824
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 4831
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 15637
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 4824
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$12300()Z
    .locals 1

    .line 4824
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12502(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;
    .locals 0

    .line 4824
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    return-object p1
.end method

.method static synthetic access$12600(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Ljava/util/List;
    .locals 0

    .line 4824
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12602(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4824
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 4824
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Ljava/util/List;
    .locals 0

    .line 4824
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12802(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4824
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12900()Z
    .locals 1

    .line 4824
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13000()Z
    .locals 1

    .line 4824
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13100(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 4824
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$13200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 4824
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1

    .line 17064
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4940
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 1

    .line 15822
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 1

    .line 15825
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15795
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15796
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15802
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15803
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15763
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15769
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15808
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15809
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15815
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15816
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15783
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15784
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15790
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15791
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15752
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15758
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15773
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15779
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            ">;"
        }
    .end annotation

    .line 17079
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15698
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-nez v1, :cond_1

    .line 15699
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15701
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 15703
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasLink()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasLink()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 15704
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasLink()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v1

    .line 15706
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 15708
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getAssetList()Ljava/util/List;

    move-result-object v1

    .line 15709
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getAssetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 15710
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 15711
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 15713
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 15715
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 15716
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 15717
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public final getAsset(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;
    .locals 1

    .line 15535
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    return-object p1
.end method

.method public final getAssetCount()I
    .locals 1

    .line 15525
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAssetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;",
            ">;"
        }
    .end annotation

    .line 15504
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    return-object v0
.end method

.method public final getAssetOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$AssetOrBuilder;
    .locals 1

    .line 15546
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$AssetOrBuilder;

    return-object p1
.end method

.method public final getAssetOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$AssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15515
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1

    .line 17089
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 15569
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 15579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 15623
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 15613
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

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

    .line 15592
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 15634
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

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

    .line 15603
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;
    .locals 1

    .line 15479
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLinkOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAssetOrBuilder;
    .locals 1

    .line 15491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            ">;"
        }
    .end annotation

    .line 17084
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 15668
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15672
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 15676
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    .line 15677
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    .line 15678
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15680
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 15681
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    .line 15682
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15684
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 15686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15688
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15689
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 4848
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 15559
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLink()Z
    .locals 1

    .line 15467
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 15723
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 15724
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedHashCode:I

    return v0

    .line 15727
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 15728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasLink()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 15730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15732
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getAssetCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 15734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getAssetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15736
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 15738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15740
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 15742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 15744
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15745
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4946
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    .line 4947
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 15640
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 15644
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4824
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 1

    .line 15820
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 2

    .line 15836
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 4842
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 2

    .line 15829
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 15830
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

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

    .line 15651
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->link_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    if-eqz v0, :cond_0

    .line 15652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15654
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 15655
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->asset_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15657
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 15658
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15660
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 15661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 15663
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
