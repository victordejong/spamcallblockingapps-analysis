.class public Lnet/pubnative/lite/sdk/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;,
        Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;,
        Lnet/pubnative/lite/sdk/DeviceInfo$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"


# instance fields
.field private deviceHeight:Ljava/lang/String;

.field private deviceWidth:Ljava/lang/String;

.field private mAdvertisingId:Ljava/lang/String;

.field private mAdvertisingIdMd5:Ljava/lang/String;

.field private mAdvertisingIdSha1:Ljava/lang/String;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mLimitTracking:Z

.field private mListener:Lnet/pubnative/lite/sdk/DeviceInfo$Listener;

.field private soundSetting:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mLimitTracking:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 113
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getDeviceScreenDimensions()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/DeviceInfo$Listener;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mLimitTracking:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mListener:Lnet/pubnative/lite/sdk/DeviceInfo$Listener;

    const-string p2, "connectivity"

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 105
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/DeviceInfo;->fetchAdvertisingId()V

    .line 107
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/DeviceInfo;->getDeviceScreenDimensions()V

    return-void
.end method

.method static synthetic access$002(Lnet/pubnative/lite/sdk/DeviceInfo;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mLimitTracking:Z

    return p1
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/DeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/DeviceInfo;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingIdMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingIdSha1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lnet/pubnative/lite/sdk/DeviceInfo;)Lnet/pubnative/lite/sdk/DeviceInfo$Listener;
    .locals 0

    .line 47
    iget-object p0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mListener:Lnet/pubnative/lite/sdk/DeviceInfo$Listener;

    return-object p0
.end method

.method private fetchAdvertisingId()V
    .locals 3

    .line 123
    :try_start_0
    new-instance v0, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v2, Lnet/pubnative/lite/sdk/DeviceInfo$1;

    invoke-direct {v2, p0}, Lnet/pubnative/lite/sdk/DeviceInfo$1;-><init>(Lnet/pubnative/lite/sdk/DeviceInfo;)V

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/PNAsyncUtils;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 142
    :catch_0
    sget-object v0, Lnet/pubnative/lite/sdk/DeviceInfo;->TAG:Ljava/lang/String;

    const-string v1, "Error executing HyBidAdvertisingId AsyncTask"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkSoundSetting()V
    .locals 2

    .line 197
    new-instance v0, Lnet/pubnative/lite/sdk/utils/SoundUtils;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/utils/SoundUtils;-><init>()V

    .line 198
    iget-object v1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/utils/SoundUtils;->isSoundMuted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 201
    iput-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->soundSetting:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "1"

    .line 203
    iput-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->soundSetting:Ljava/lang/String;

    return-void
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisingIdMd5()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingIdMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisingIdSha1()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mAdvertisingIdSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 216
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceHeight()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->deviceHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceScreenDimensions()V
    .locals 2

    .line 147
    new-instance v0, Lnet/pubnative/lite/sdk/utils/ScreenDimensionsUtils;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/utils/ScreenDimensionsUtils;-><init>()V

    .line 148
    iget-object v1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/utils/ScreenDimensionsUtils;->getScreenDimensionsToPoint(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 149
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->deviceWidth:Ljava/lang/String;

    .line 150
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->deviceHeight:Ljava/lang/String;

    return-void
.end method

.method public getDeviceWidth()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->deviceWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 179
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 208
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .line 212
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;
    .locals 2

    .line 183
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 191
    sget-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->NONE:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->LANDSCAPE:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    return-object v0

    .line 185
    :cond_1
    sget-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->PORTRAIT:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    return-object v0
.end method

.method public getSoundSetting()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->soundSetting:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lnet/pubnative/lite/sdk/DeviceInfo$Listener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mListener:Lnet/pubnative/lite/sdk/DeviceInfo$Listener;

    .line 118
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/DeviceInfo;->fetchAdvertisingId()V

    return-void
.end method

.method public limitTracking()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo;->mLimitTracking:Z

    return v0
.end method
