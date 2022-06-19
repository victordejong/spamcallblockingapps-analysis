.class public Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;
.super Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.source ""


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final TAG:Ljava/lang/String; = "GreenServerAdapter"

.field private static final TRUE:Ljava/lang/String; = "true"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    const-string p2, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    const/16 p2, 0x26

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Error occurred when trying to inject ad url request parameter"

    invoke-static {p1, p2, p0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add parameter due to empty value for key <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> and value <"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static buildAdRequestParameters(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "dm"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dv"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ua"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAdInfo()Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAdvertisingId(Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "aaid"

    invoke-static {v0, v3, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isLimitAdTrackingEnabled(Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ate"

    goto :goto_0

    :cond_0
    const-string v1, "MD5"

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA1"

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmh_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mmdid"

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "density"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hpx"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wpx"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "do"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "olock"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sk"

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "vol"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->areHeadphonesPluggedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "headphones"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mic"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "language"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "country"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pkid"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pknm"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryLevel()Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bl"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDevicePlugged()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "plugged"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableStorageSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "space"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "conn"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCellSignalDbm()Ljava/lang/String;

    move-result-object v1

    const-string v3, "celldbm"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMcc()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mcc"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMnc()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mnc"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pip"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "cn"

    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocation()Landroid/location/Location;

    move-result-object v1

    const-string v3, "loc"

    const-string v4, "true"

    if-eqz v1, :cond_a

    sget-boolean v5, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lat"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "long"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ha"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v5, "spd"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v5, "brg"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "alt"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "tslr"

    invoke-static {v0, v5, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v3, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lsrc"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    invoke-static {v0, v3, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "sdkversion"

    const-string v2, "6.7.0-c5b3e1a.a"

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "video"

    invoke-static {v0, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cachedvideo"

    invoke-static {v0, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/MMSDK;->getAppInfo()Lcom/millennialmedia/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/millennialmedia/AppInfo;->getMediator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vendor"

    invoke-static {v0, v3, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/millennialmedia/AppInfo;->getCoppa()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "coppa"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    const-string v1, "placementId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    check-cast v1, Ljava/lang/String;

    const-string v2, "apid"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    const-string v1, "placementType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    const-string v3, "reqtype"

    const-string v5, "at"

    if-eqz v2, :cond_d

    check-cast v1, Ljava/lang/String;

    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "i"

    invoke-static {v0, v5, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fetch"

    goto :goto_2

    :cond_d
    const-string v1, "b"

    invoke-static {v0, v5, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "getad"

    :goto_2
    invoke-static {v0, v3, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "width"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "hswd"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    const-string v1, "height"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_f

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_f

    const-string v2, "hsht"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    const-string v1, "refreshRate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "refreshrate"

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "keywords"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_10

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getUserData()Lcom/millennialmedia/UserData;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getAge()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "age"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getChildren()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "children"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getEducation()Ljava/lang/String;

    move-result-object v3

    const-string v5, "education"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getEthnicity()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ethnicity"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getGender()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gender"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getIncome()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "income"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getMarital()Ljava/lang/String;

    move-result-object v3

    const-string v5, "marital"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getPolitics()Ljava/lang/String;

    move-result-object v3

    const-string v5, "politics"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "zip"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v5, "state"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getDob()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_12

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "dob"

    invoke-static {v0, v5, v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Lcom/millennialmedia/UserData;->getDma()Ljava/lang/String;

    move-result-object p0

    const-string v3, "dma"

    invoke-static {v0, v3, p0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const-string v3, ","

    if-lez p0, :cond_14

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExistingIds()Ljava/util/List;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appsids"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/millennialmedia/MMSDK;->getTestInfo()Lcom/millennialmedia/TestInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    const-string v1, "acid"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    if-eqz p1, :cond_16

    const-string p0, "securecontent"

    invoke-static {v0, p0, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p0, 0x0

    :cond_17
    return-object p0
.end method

.method public static parsePlayListResponse(Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)Lcom/millennialmedia/internal/PlayList;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/PlayList;

    invoke-direct {v1}, Lcom/millennialmedia/internal/PlayList;-><init>()V

    const-string v2, "2"

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handshakeId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placementId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->placementId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placementName_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "siteId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;

    const-string v2, "itemId"

    invoke-direct {v0, v2, p0, p1}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)V

    if-eqz p1, :cond_0

    const-string p0, "X-MM-Acid"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->creativeId:Ljava/lang/String;

    :cond_0
    const-string p0, "mydas"

    iput-object p0, v0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->adnet:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/adwrapper/AdWrapper;)V

    return-object v1
.end method


# virtual methods
.method public loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;-><init>(Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;Ljava/util/Map;I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
