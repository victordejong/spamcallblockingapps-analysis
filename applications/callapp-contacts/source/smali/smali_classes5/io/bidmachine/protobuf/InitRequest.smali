.class public final Lio/bidmachine/protobuf/InitRequest;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitRequest$Builder;
    }
.end annotation


# static fields
.field public static final APP_VER_FIELD_NUMBER:I = 0xd

.field public static final BM_IFV_FIELD_NUMBER:I = 0xc

.field public static final BUNDLE_FIELD_NUMBER:I = 0x2

.field public static final CONTYPE_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x9

.field public static final GEO_FIELD_NUMBER:I = 0x5

.field public static final IFA_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0xb

.field public static final OSV_FIELD_NUMBER:I = 0x4

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x7

.field public static final SDK_FIELD_NUMBER:I = 0x6

.field public static final SELLER_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private volatile appVer_:Ljava/lang/Object;

.field private volatile bmIfv_:Ljava/lang/Object;

.field private volatile bundle_:Ljava/lang/Object;

.field private contype_:I

.field private deviceType_:I

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private volatile ifa_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private os_:I

.field private volatile osv_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private volatile sellerId_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2504
    new-instance v0, Lio/bidmachine/protobuf/InitRequest;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    .line 2512
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 715
    iput-byte v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    .line 28
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    .line 29
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 156
    invoke-virtual {p0, p1, v0, p2, v3}, Lio/bidmachine/protobuf/InitRequest;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 150
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 152
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 144
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 146
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 140
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    goto :goto_0

    .line 132
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 134
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    goto :goto_0

    .line 126
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 128
    iput v3, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    goto :goto_0

    .line 120
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 122
    iput v3, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    goto :goto_0

    .line 114
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 116
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    goto :goto_0

    .line 108
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 110
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    goto :goto_0

    .line 102
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 104
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_9
    const/4 v3, 0x0

    .line 90
    iget-object v4, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v3

    .line 93
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v4, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 96
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 83
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 85
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 79
    iput v3, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    goto :goto_0

    .line 71
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 73
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 67
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;
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
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 167
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 168
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 165
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->makeExtensionsImmutable()V

    .line 172
    throw p1

    .line 170
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 715
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lio/bidmachine/protobuf/InitRequest;)I
    .locals 0

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    return p0
.end method

.method static synthetic access$1402(Lio/bidmachine/protobuf/InitRequest;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    return p1
.end method

.method static synthetic access$1500(Lio/bidmachine/protobuf/InitRequest;)I
    .locals 0

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    return p0
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/InitRequest;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    return p1
.end method

.method static synthetic access$1600(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lio/bidmachine/protobuf/InitRequest;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/InitRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/InitRequest;)I
    .locals 0

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    return p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/InitRequest;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    return p1
.end method

.method static synthetic access$700(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method static synthetic access$900(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;
    .locals 1

    .line 2508
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 176
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 988
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 991
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 962
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 969
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 929
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 935
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 974
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 975
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 982
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 950
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 957
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 918
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 924
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 939
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 945
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest;",
            ">;"
        }
    .end annotation

    .line 2523
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 836
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/InitRequest;

    if-nez v1, :cond_1

    .line 837
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 839
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/InitRequest;

    .line 841
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 843
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 845
    :cond_3
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitRequest;->os_:I

    if-eq v1, v3, :cond_4

    return v2

    .line 846
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 848
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 849
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 850
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 851
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 853
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 855
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 857
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 859
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 861
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 862
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 863
    :cond_c
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    if-eq v1, v3, :cond_d

    return v2

    .line 864
    :cond_d
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    if-eq v1, v3, :cond_e

    return v2

    .line 865
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 867
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 869
    :cond_10
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getAppVer()Ljava/lang/String;
    .locals 2

    .line 641
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    .line 642
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 643
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 645
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 647
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 648
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 661
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    .line 662
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 663
    check-cast v0, Ljava/lang/String;

    .line 664
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 666
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 669
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getBmIfv()Ljava/lang/String;
    .locals 2

    .line 549
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    .line 550
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 551
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 553
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 555
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 556
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 569
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    .line 570
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 571
    check-cast v0, Ljava/lang/String;

    .line 572
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 574
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 577
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getBundle()Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    .line 240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 243
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 259
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    .line 260
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 261
    check-cast v0, Ljava/lang/String;

    .line 262
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 264
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 267
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 627
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 628
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_0
    return-object v0
.end method

.method public final getContypeValue()I
    .locals 1

    .line 616
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;
    .locals 1

    .line 2533
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    return-object v0
.end method

.method public final getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 602
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 603
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_0
    return-object v0
.end method

.method public final getDeviceTypeValue()I
    .locals 1

    .line 591
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    return v0
.end method

.method public final getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 358
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final getIfa()Ljava/lang/String;
    .locals 2

    .line 465
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    .line 466
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 467
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 469
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 471
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 472
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 485
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    .line 486
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 487
    check-cast v0, Ljava/lang/String;

    .line 488
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 490
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 493
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIfv()Ljava/lang/String;
    .locals 2

    .line 507
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    .line 508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 511
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 513
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 514
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 527
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    .line 528
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 529
    check-cast v0, Ljava/lang/String;

    .line 530
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 532
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 535
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 292
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_0
    return-object v0
.end method

.method public final getOsValue()I
    .locals 1

    .line 281
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    return v0
.end method

.method public final getOsv()Ljava/lang/String;
    .locals 2

    .line 306
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    .line 307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 308
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 310
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 312
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 313
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 326
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    .line 327
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 331
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object v0

    .line 334
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
            "Lio/bidmachine/protobuf/InitRequest;",
            ">;"
        }
    .end annotation

    .line 2528
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSdk()Ljava/lang/String;
    .locals 2

    .line 381
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    .line 382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 383
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 385
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 387
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 388
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 401
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    .line 402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 403
    check-cast v0, Ljava/lang/String;

    .line 404
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 406
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 409
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkver()Ljava/lang/String;
    .locals 2

    .line 423
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    .line 424
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 425
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 427
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 429
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 430
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 443
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    .line 444
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 445
    check-cast v0, Ljava/lang/String;

    .line 446
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 448
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 451
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSellerId()Ljava/lang/String;
    .locals 2

    .line 197
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    .line 198
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 199
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 201
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 203
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 204
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 217
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    .line 218
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 222
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 225
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 776
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 780
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 781
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 783
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 784
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 786
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x3

    .line 787
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    .line 788
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 790
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 791
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 793
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 795
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 797
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x6

    .line 798
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 800
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x7

    .line 801
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 803
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x8

    .line 804
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 806
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_9

    const/16 v0, 0x9

    .line 807
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    .line 808
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 810
    :cond_9
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_a

    const/16 v0, 0xa

    .line 811
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    .line 812
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 814
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    .line 815
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 817
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xc

    .line 818
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 820
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xd

    .line 821
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 823
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xe

    .line 824
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 826
    :cond_e
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 827
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedSize:I

    return v1
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 683
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    .line 684
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 685
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 687
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 689
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 690
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 703
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    .line 704
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 705
    check-cast v0, Ljava/lang/String;

    .line 706
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 708
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 711
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasGeo()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 875
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 876
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedHashCode:I

    return v0

    .line 879
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 881
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 883
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 885
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 887
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 888
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 890
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 895
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 897
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 899
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 901
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 903
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 905
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 907
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 909
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 910
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 911
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 182
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 718
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 722
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 986
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 2

    .line 1002
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 38
    new-instance p1, Lio/bidmachine/protobuf/InitRequest;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitRequest;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 2

    .line 995
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    .line 996
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

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

    .line 729
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 730
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 733
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 735
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 736
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 738
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 739
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 741
    :cond_3
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 742
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 744
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 745
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 747
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 748
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 750
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 751
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 753
    :cond_7
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 754
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 756
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0xa

    .line 757
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 759
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 760
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 762
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 763
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 765
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 766
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 768
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 769
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 771
    :cond_d
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
