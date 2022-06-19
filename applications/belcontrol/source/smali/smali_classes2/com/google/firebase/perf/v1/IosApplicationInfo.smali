.class public final Lcom/google/firebase/perf/v1/IosApplicationInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source ""

# interfaces
.implements Lcom/google/firebase/perf/v1/IosApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/IosApplicationInfo;",
        "Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/IosApplicationInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUNDLE_SHORT_VERSION_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

.field public static final MCC_MNC_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_CONNECTION_INFO_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/IosApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private bundleShortVersion_:Ljava/lang/String;

.field private mccMnc_:Ljava/lang/String;

.field private networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

.field private sdkVersion_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    const-class v1, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->sdkVersion_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bundleShortVersion_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mccMnc_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/perf/v1/IosApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mergeNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->clearNetworkConnectionInfo()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->clearSdkVersion()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setSdkVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/perf/v1/IosApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setBundleShortVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->clearBundleShortVersion()V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setBundleShortVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/perf/v1/IosApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setMccMnc(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/perf/v1/IosApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->clearMccMnc()V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/perf/v1/IosApplicationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->setMccMncBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearBundleShortVersion()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/IosApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getBundleShortVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bundleShortVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearMccMnc()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/IosApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mccMnc_:Ljava/lang/String;

    return-void
.end method

.method private clearNetworkConnectionInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/IosApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object v0
.end method

.method private mergeNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->newBuilder(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    iget p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/IosApplicationInfo;)Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/IosApplicationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBundleShortVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bundleShortVersion_:Ljava/lang/String;

    return-void
.end method

.method private setBundleShortVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bundleShortVersion_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setMccMnc(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mccMnc_:Ljava/lang/String;

    return-void
.end method

.method private setMccMncBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mccMnc_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setNetworkConnectionInfo(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    iget p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setSdkVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->sdkVersion_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/firebase/perf/v1/IosApplicationInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/IosApplicationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/IosApplicationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/firebase/perf/v1/IosApplicationInfo;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sdkVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "bundleShortVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "mccMnc_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "networkConnectionInfo_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0002\u0005\u0004\u0000\u0000\u0000\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1009\u0003"

    sget-object p3, Lcom/google/firebase/perf/v1/IosApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;-><init>(Lcom/google/firebase/perf/v1/IosApplicationInfo$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBundleShortVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bundleShortVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleShortVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bundleShortVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mccMnc_:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMncBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->mccMnc_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkConnectionInfo()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->networkConnectionInfo_:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->sdkVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBundleShortVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMccMnc()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNetworkConnectionInfo()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSdkVersion()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/IosApplicationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
