.class public Lnet/pubnative/lite/sdk/vpaid/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/vpaid/utils/Utils$StretchOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static debugMode:Z = true

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateNewLayoutParams(Landroid/widget/FrameLayout$LayoutParams;IIIILnet/pubnative/lite/sdk/vpaid/utils/Utils$StretchOption;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    const/16 v0, 0x11

    .line 98
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-le p1, p2, :cond_0

    .line 104
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, p3

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 105
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 107
    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int p1, p4, p1

    .line 108
    iget p2, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x64

    .line 109
    iget p2, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/2addr p1, p2

    goto :goto_0

    .line 112
    :cond_0
    iput p4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 113
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 115
    iget p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int p1, p3, p1

    .line 116
    iget p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x64

    .line 117
    iget p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/2addr p1, p2

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 121
    :goto_1
    sget-object p2, Lnet/pubnative/lite/sdk/vpaid/utils/Utils$1;->$SwitchMap$net$pubnative$lite$sdk$vpaid$utils$Utils$StretchOption:[I

    invoke-virtual {p5}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils$StretchOption;->ordinal()I

    move-result p5

    aget p2, p2, p5

    const/4 p5, 0x1

    if-eq p2, p5, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    goto :goto_2

    :cond_2
    const/high16 p2, 0x41300000    # 11.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 130
    :cond_3
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 131
    iput p4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    .line 150
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 151
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    const-string p0, "UTF-8"

    .line 153
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemVolume()F
    .locals 3

    .line 67
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->sContext:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "audio"

    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 72
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 73
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int/lit8 v2, v2, 0x64

    .line 74
    div-int/2addr v2, v0

    int-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    :cond_1
    return v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 33
    sput-object p0, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 41
    sget-boolean v0, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->debugMode:Z

    return v0
.end method

.method public static isEmulator()Z
    .locals 2

    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOnline()Z
    .locals 3

    const/4 v0, 0x0

    .line 46
    :try_start_0
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->sContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isPhoneMuted()Z
    .locals 3

    .line 82
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "audio"

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return v1

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static parseDuration(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, ":"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 163
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 164
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 165
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr p0, v1

    mul-int/lit16 v0, v0, 0xe10

    add-int/2addr p0, v0

    return p0

    .line 168
    :catch_0
    sget-object p0, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->TAG:Ljava/lang/String;

    const-string v0, "Error while parsing ad duration"

    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa

    return p0
.end method

.method public static parsePercent(Ljava/lang/String;)I
    .locals 2

    const-string v0, "%"

    const-string v1, ""

    .line 174
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static readAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->debugMode:Z

    return-void
.end method
