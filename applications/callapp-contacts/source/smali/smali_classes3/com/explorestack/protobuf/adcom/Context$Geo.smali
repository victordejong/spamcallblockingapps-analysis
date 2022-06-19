.class public final Lcom/explorestack/protobuf/adcom/Context$Geo;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Geo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    }
.end annotation


# static fields
.field public static final ACCUR_FIELD_NUMBER:I = 0x4

.field public static final CITY_FIELD_NUMBER:I = 0xa

.field public static final COUNTRY_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field public static final EXT_FIELD_NUMBER:I = 0xe

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0xd

.field public static final IPSERV_FIELD_NUMBER:I = 0x6

.field public static final LASTFIX_FIELD_NUMBER:I = 0x5

.field public static final LAT_FIELD_NUMBER:I = 0x2

.field public static final LON_FIELD_NUMBER:I = 0x3

.field public static final METRO_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGION_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UTCOFFSET_FIELD_NUMBER:I = 0xc

.field public static final ZIP_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private accur_:I

.field private volatile city_:Ljava/lang/Object;

.field private volatile country_:Ljava/lang/Object;

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

.field private ipserv_:I

.field private lastfix_:J

.field private lat_:F

.field private lon_:F

.field private memoizedIsInitialized:B

.field private volatile metro_:Ljava/lang/Object;

.field private volatile region_:Ljava/lang/Object;

.field private type_:I

.field private utcoffset_:I

.field private volatile zip_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20002
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 20010
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17596
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 18175
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 17597
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    .line 17598
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    const-string v0, ""

    .line 17599
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    .line 17600
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    .line 17601
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    .line 17602
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    .line 17603
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    .line 17604
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17623
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>()V

    .line 17625
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17629
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 17633
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 17728
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    :sswitch_0
    const/4 v4, 0x0

    .line 17716
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_1

    .line 17717
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 17719
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 17721
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 17722
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    .line 17707
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 17710
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    .line 17711
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 17710
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17702
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->utcoffset_:I

    goto :goto_0

    .line 17695
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 17697
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    goto :goto_0

    .line 17689
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 17691
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    goto :goto_0

    .line 17683
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 17685
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    goto :goto_0

    .line 17677
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 17679
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    goto :goto_0

    .line 17671
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 17673
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    goto :goto_0

    .line 17665
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 17667
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    goto :goto_0

    .line 17661
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lastfix_:J

    goto/16 :goto_0

    .line 17656
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->accur_:I

    goto/16 :goto_0

    .line 17651
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lon_:F

    goto/16 :goto_0

    .line 17646
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lat_:F

    goto/16 :goto_0

    .line 17639
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 17641
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
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

    .line 17739
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 17740
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17737
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_3

    .line 17743
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    .line 17745
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 17746
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->makeExtensionsImmutable()V

    .line 17747
    throw p1

    :cond_4
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_5

    .line 17743
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    .line 17745
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 17746
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x15 -> :sswitch_c
        0x1d -> :sswitch_b
        0x20 -> :sswitch_a
        0x28 -> :sswitch_9
        0x30 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17587
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 17594
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 18175
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 17587
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$15900()Z
    .locals 1

    .line 17587
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16100(Lcom/explorestack/protobuf/adcom/Context$Geo;)I
    .locals 0

    .line 17587
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    return p0
.end method

.method static synthetic access$16102(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I
    .locals 0

    .line 17587
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    return p1
.end method

.method static synthetic access$16202(Lcom/explorestack/protobuf/adcom/Context$Geo;F)F
    .locals 0

    .line 17587
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lat_:F

    return p1
.end method

.method static synthetic access$16302(Lcom/explorestack/protobuf/adcom/Context$Geo;F)F
    .locals 0

    .line 17587
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lon_:F

    return p1
.end method

.method static synthetic access$16402(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I
    .locals 0

    .line 17587
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->accur_:I

    return p1
.end method

.method static synthetic access$16502(Lcom/explorestack/protobuf/adcom/Context$Geo;J)J
    .locals 0

    .line 17587
    iput-wide p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lastfix_:J

    return-wide p1
.end method

.method static synthetic access$16600(Lcom/explorestack/protobuf/adcom/Context$Geo;)I
    .locals 0

    .line 17587
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    return p0
.end method

.method static synthetic access$16602(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I
    .locals 0

    .line 17587
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    return p1
.end method

.method static synthetic access$16700(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16702(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16800(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16802(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16900(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16902(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17002(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17100(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17102(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17202(Lcom/explorestack/protobuf/adcom/Context$Geo;I)I
    .locals 0

    .line 17587
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->utcoffset_:I

    return p1
.end method

.method static synthetic access$17302(Lcom/explorestack/protobuf/adcom/Context$Geo;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$17400(Lcom/explorestack/protobuf/adcom/Context$Geo;)Ljava/util/List;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17402(Lcom/explorestack/protobuf/adcom/Context$Geo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 17587
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17500()Z
    .locals 1

    .line 17587
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17600(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 17587
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$17700()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 17587
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17587
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17587
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17587
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17587
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17587
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 20006
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17751
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 18461
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 18464
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18434
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 18435
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18441
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 18442
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18402
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18408
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18447
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 18448
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18454
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 18455
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18422
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 18423
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18429
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 18430
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18391
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18397
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18412
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18418
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            ">;"
        }
    .end annotation

    .line 20021
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18301
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v1, :cond_1

    .line 18302
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18304
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 18306
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 18307
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 18309
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v2

    .line 18308
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 18310
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 18312
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v2

    .line 18311
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 18313
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v1

    .line 18314
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 18315
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v1

    .line 18316
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_6

    return v3

    .line 18317
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    if-eq v1, v2, :cond_7

    return v3

    .line 18318
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 18319
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18320
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 18321
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 18322
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v1

    .line 18323
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 18324
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 18325
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 18326
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v1

    .line 18327
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 18328
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v1

    .line 18329
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 18330
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 18331
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 18333
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 18335
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 18336
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 18337
    :cond_10
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v3

    :cond_11
    return v0
.end method

.method public final getAccur()I
    .locals 1

    .line 17823
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->accur_:I

    return v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 2

    .line 18000
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    .line 18001
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18002
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 18004
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 18006
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18007
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCityBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 18020
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    .line 18021
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18022
    check-cast v0, Ljava/lang/String;

    .line 18023
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 18025
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    return-object v0

    .line 18028
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 2

    .line 17874
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    .line 17875
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17876
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17878
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17880
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17881
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCountryBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17894
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    .line 17895
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17896
    check-cast v0, Ljava/lang/String;

    .line 17897
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17899
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    return-object v0

    .line 17902
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 20031
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 18107
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 18117
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 18161
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 18151
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

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

    .line 18130
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 18172
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

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

    .line 18141
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getIpserv()Lcom/explorestack/protobuf/adcom/IpLocationService;
    .locals 1

    .line 17860
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/IpLocationService;->valueOf(I)Lcom/explorestack/protobuf/adcom/IpLocationService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17861
    sget-object v0, Lcom/explorestack/protobuf/adcom/IpLocationService;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/IpLocationService;

    :cond_0
    return-object v0
.end method

.method public final getIpservValue()I
    .locals 1

    .line 17849
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    return v0
.end method

.method public final getLastfix()J
    .locals 2

    .line 17836
    iget-wide v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lastfix_:J

    return-wide v0
.end method

.method public final getLat()F
    .locals 1

    .line 17797
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lat_:F

    return v0
.end method

.method public final getLon()F
    .locals 1

    .line 17810
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lon_:F

    return v0
.end method

.method public final getMetro()Ljava/lang/String;
    .locals 2

    .line 17958
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    .line 17959
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17960
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17962
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17964
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17965
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMetroBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17978
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    .line 17979
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17980
    check-cast v0, Ljava/lang/String;

    .line 17981
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17983
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    return-object v0

    .line 17986
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
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            ">;"
        }
    .end annotation

    .line 20026
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 2

    .line 17916
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    .line 17917
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17918
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17920
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17922
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17923
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRegionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17936
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    .line 17937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17938
    check-cast v0, Ljava/lang/String;

    .line 17939
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17941
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    return-object v0

    .line 17944
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .line 18236
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 18240
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/LocationType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/LocationType;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 18241
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    const/4 v1, 0x1

    .line 18242
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 18244
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lat_:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    .line 18246
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 18248
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lon_:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 18250
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 18252
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->accur_:I

    if-eqz v1, :cond_4

    const/4 v3, 0x4

    .line 18254
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18256
    :cond_4
    iget-wide v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lastfix_:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 18258
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18260
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/IpLocationService;->IP_LOCATION_SERVICE_INVALID:Lcom/explorestack/protobuf/adcom/IpLocationService;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/IpLocationService;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_6

    const/4 v1, 0x6

    .line 18261
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    .line 18262
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18264
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountryBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 18265
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18267
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 18268
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18270
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetroBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 18271
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18273
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCityBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 18274
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18276
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZipBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 18277
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18279
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->utcoffset_:I

    if-eqz v1, :cond_c

    const/16 v3, 0xc

    .line 18281
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18283
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    const/16 v1, 0xd

    .line 18284
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    .line 18285
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18287
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 18289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18291
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 18292
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedSize:I

    return v0
.end method

.method public final getType()Lcom/explorestack/protobuf/adcom/LocationType;
    .locals 1

    .line 17783
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/LocationType;->valueOf(I)Lcom/explorestack/protobuf/adcom/LocationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17784
    sget-object v0, Lcom/explorestack/protobuf/adcom/LocationType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/LocationType;

    :cond_0
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 17772
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 17617
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUtcoffset()I
    .locals 1

    .line 18084
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->utcoffset_:I

    return v0
.end method

.method public final getZip()Ljava/lang/String;
    .locals 2

    .line 18042
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    .line 18043
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18044
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 18046
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 18048
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 18049
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getZipBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 18062
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    .line 18063
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18064
    check-cast v0, Ljava/lang/String;

    .line 18065
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 18067
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    return-object v0

    .line 18070
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 18097
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 18343
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 18344
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedHashCode:I

    return v0

    .line 18347
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 18349
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 18352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLat()F

    move-result v1

    .line 18351
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 18355
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLon()F

    move-result v1

    .line 18354
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 18357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getAccur()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 18360
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getLastfix()J

    move-result-wide v1

    .line 18359
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 18362
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 18364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18366
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 18370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 18372
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 18374
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getUtcoffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 18375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 18377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18379
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 18381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 18383
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18384
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17757
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Geo_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 17758
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 18178
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 18182
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17587
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 18459
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2

    .line 18475
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 17611
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17587
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 2

    .line 18468
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Geo;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Geo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 18469
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18189
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/LocationType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/LocationType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 18190
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->type_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18192
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lat_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 18193
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 18195
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lon_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 18196
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 18198
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->accur_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 18199
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 18201
    :cond_3
    iget-wide v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->lastfix_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v2, 0x5

    .line 18202
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 18204
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/IpLocationService;->IP_LOCATION_SERVICE_INVALID:Lcom/explorestack/protobuf/adcom/IpLocationService;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/IpLocationService;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 18205
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ipserv_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18207
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCountryBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 18208
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->country_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18210
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getRegionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 18211
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->region_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18213
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getMetroBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 18214
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->metro_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18216
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getCityBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 18217
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->city_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18219
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getZipBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 18220
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->zip_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18222
    :cond_a
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->utcoffset_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 18223
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_b
    const/4 v0, 0x0

    .line 18225
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/16 v1, 0xd

    .line 18226
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18228
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 18229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 18231
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Geo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
