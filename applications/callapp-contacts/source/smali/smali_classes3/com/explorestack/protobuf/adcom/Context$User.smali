.class public final Lcom/explorestack/protobuf/adcom/Context$User;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    }
.end annotation


# static fields
.field public static final BUYERUID_FIELD_NUMBER:I = 0x2

.field public static final CONSENT_FIELD_NUMBER:I = 0x6

.field public static final DATA_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

.field public static final EXT_FIELD_NUMBER:I = 0xa

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x9

.field public static final GENDER_FIELD_NUMBER:I = 0x4

.field public static final GEO_FIELD_NUMBER:I = 0x7

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final KEYWORDS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            ">;"
        }
    .end annotation
.end field

.field public static final YOB_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile buyeruid_:Ljava/lang/Object;

.field private volatile consent_:Ljava/lang/Object;

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
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

.field private volatile gender_:Ljava/lang/Object;

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private volatile id_:Ljava/lang/Object;

.field private volatile keywords_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private yob_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31397
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    .line 31405
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$User$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28850
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 29407
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    const-string v0, ""

    .line 28851
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    .line 28852
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    .line 28853
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    .line 28854
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    .line 28855
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    .line 28856
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    .line 28857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28876
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>()V

    .line 28878
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28882
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 28886
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 28971
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$User;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 28959
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 28960
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 28962
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 28964
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 28965
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 28950
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 28953
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 28954
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 28953
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3

    .line 28941
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 28944
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    .line 28945
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 28944
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28928
    :sswitch_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_4

    .line 28929
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v5

    .line 28931
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v5, :cond_0

    .line 28933
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 28934
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto/16 :goto_0

    .line 28921
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 28923
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28915
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 28917
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28909
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 28911
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28905
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    goto/16 :goto_0

    .line 28898
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 28900
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28892
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 28894
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 28982
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 28983
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28980
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_5

    .line 28986
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    :cond_5
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_6

    .line 28989
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 28991
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 28992
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->makeExtensionsImmutable()V

    .line 28993
    throw p1

    :cond_7
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_8

    .line 28986
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    :cond_8
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_9

    .line 28989
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 28991
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 28992
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28841
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 28848
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 29407
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 28841
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$26600()Z
    .locals 1

    .line 28841
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$26800(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26802(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26900(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26902(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27002(Lcom/explorestack/protobuf/adcom/Context$User;I)I
    .locals 0

    .line 28841
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    return p1
.end method

.method static synthetic access$27100(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27102(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27200(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27202(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27300(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27302(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/explorestack/protobuf/adcom/Context$User;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method static synthetic access$27500(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/util/List;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$27502(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27602(Lcom/explorestack/protobuf/adcom/Context$User;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$27700(Lcom/explorestack/protobuf/adcom/Context$User;)Ljava/util/List;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$27702(Lcom/explorestack/protobuf/adcom/Context$User;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28841
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27800()Z
    .locals 1

    .line 28841
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$27900()Z
    .locals 1

    .line 28841
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$User;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$28000(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 28841
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$28100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 28841
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$28200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28841
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28841
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28841
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28841
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28841
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1

    .line 31401
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28997
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 29653
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 29656
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29626
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 29627
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29633
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 29634
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29594
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29600
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29639
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 29640
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29646
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 29647
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29614
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 29615
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29621
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 29622
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29583
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29589
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29604
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29610
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$User;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            ">;"
        }
    .end annotation

    .line 31416
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29505
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$User;

    if-nez v1, :cond_1

    .line 29506
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 29508
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$User;

    .line 29510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 29511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 29512
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruid()Ljava/lang/String;

    move-result-object v1

    .line 29513
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 29514
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getYob()I

    move-result v1

    .line 29515
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getYob()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 29516
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 29517
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 29518
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 29519
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 29520
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsent()Ljava/lang/String;

    move-result-object v1

    .line 29521
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 29522
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 29523
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29524
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 29525
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 29527
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 29528
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 29529
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 29530
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 29531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 29532
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 29534
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 29535
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 29536
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getBuyeruid()Ljava/lang/String;
    .locals 2

    .line 29060
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    .line 29061
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29062
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 29064
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29066
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 29067
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 29080
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    .line 29081
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29082
    check-cast v0, Ljava/lang/String;

    .line 29083
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 29085
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    return-object v0

    .line 29088
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getConsent()Ljava/lang/String;
    .locals 2

    .line 29199
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    .line 29200
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29201
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 29203
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29205
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 29206
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getConsentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 29219
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    .line 29220
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29221
    check-cast v0, Ljava/lang/String;

    .line 29222
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 29224
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    return-object v0

    .line 29227
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getData(I)Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 29305
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    return-object p1
.end method

.method public final getDataCount()I
    .locals 1

    .line 29295
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data;",
            ">;"
        }
    .end annotation

    .line 29274
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object v0
.end method

.method public final getDataOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;
    .locals 1

    .line 29316
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;

    return-object p1
.end method

.method public final getDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 29285
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 28841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 28841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$User;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$User;
    .locals 1

    .line 31426
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 29339
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 29349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 29393
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 29383
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

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

    .line 29362
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 29404
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

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

    .line 29373
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getGender()Ljava/lang/String;
    .locals 2

    .line 29115
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    .line 29116
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29117
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 29119
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 29122
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getGenderBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 29135
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    .line 29136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29137
    check-cast v0, Ljava/lang/String;

    .line 29138
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 29140
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    return-object v0

    .line 29143
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 29251
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 29261
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 29018
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    .line 29019
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29020
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 29022
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29024
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 29025
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 29038
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    .line 29039
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29040
    check-cast v0, Ljava/lang/String;

    .line 29041
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 29043
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    return-object v0

    .line 29046
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 2

    .line 29157
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    .line 29158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29159
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 29161
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29163
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 29164
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 29177
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    .line 29178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29179
    check-cast v0, Ljava/lang/String;

    .line 29180
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 29182
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    return-object v0

    .line 29185
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
            "Lcom/explorestack/protobuf/adcom/Context$User;",
            ">;"
        }
    .end annotation

    .line 31421
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 29456
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 29460
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 29461
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 29463
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 29464
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29466
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 29468
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 29470
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGenderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 29471
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29473
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 29474
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29476
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 29477
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29479
    :cond_6
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 29481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    const/4 v2, 0x0

    .line 29483
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    const/16 v3, 0x8

    .line 29484
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    .line 29485
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29487
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    .line 29488
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    .line 29489
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 29491
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 29493
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29495
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 29496
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 28870
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getYob()I
    .locals 1

    .line 29102
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 29329
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasGeo()Z
    .locals 1

    .line 29241
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 29542
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 29543
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedHashCode:I

    return v0

    .line 29546
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 29548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 29550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 29552
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getYob()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 29554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 29556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 29558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29559
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 29561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29563
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 29565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29567
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 29569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29571
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 29573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 29575
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29576
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 29003
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$User;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 29004
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 29410
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 29414
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 28841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 28841
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 28841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 1

    .line 29651
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 2

    .line 29667
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 28864
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$User;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$User;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 28841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 28841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;
    .locals 2

    .line 29660
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$User;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$User;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 29661
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$User;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

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

    .line 29421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29422
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29424
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getBuyeruidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 29425
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->buyeruid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29427
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->yob_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 29428
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 29430
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGenderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 29431
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->gender_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29433
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getKeywordsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 29434
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->keywords_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29436
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getConsentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 29437
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->consent_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29439
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 29440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29442
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x8

    .line 29443
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$User;->data_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29445
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 29446
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$User;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29448
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 29449
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$User;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 29451
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$User;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
