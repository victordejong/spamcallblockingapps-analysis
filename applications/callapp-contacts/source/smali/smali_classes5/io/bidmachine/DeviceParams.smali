.class final Lio/bidmachine/DeviceParams;
.super Lio/bidmachine/models/RequestParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/models/RequestParams<",
        "Lio/bidmachine/DeviceParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/bidmachine/models/RequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method final build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 3

    .line 32
    invoke-static {p1}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object v0

    .line 33
    iget-boolean v1, v0, Lio/bidmachine/DeviceInfo;->isTablet:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_TABLET:Lcom/explorestack/protobuf/adcom/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_PHONE_DEVICE:Lcom/explorestack/protobuf/adcom/DeviceType;

    :goto_0
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 35
    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOs(Lcom/explorestack/protobuf/adcom/OS;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 36
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOsv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 38
    iget v1, v0, Lio/bidmachine/DeviceInfo;->screenDensity:F

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPxratio(F)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 39
    iget v1, v0, Lio/bidmachine/DeviceInfo;->screenDpi:I

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPpi(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 41
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 42
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 43
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 45
    invoke-interface {p5}, Lio/bidmachine/models/DataRestrictions;->canSendIfa()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {p1, v1}, Lio/bidmachine/c;->getAdvertisingId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setIfa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 46
    invoke-static {}, Lio/bidmachine/c;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setLmt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 48
    invoke-interface {p5}, Lio/bidmachine/models/DataRestrictions;->canSendDeviceInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 49
    invoke-static {p1}, Lio/bidmachine/g;->getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 50
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setMake(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 52
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->httpAgent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->httpAgent:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setUa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 55
    :cond_1
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->model:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setModel(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 58
    :cond_2
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setHwv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 63
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setLang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 67
    :cond_4
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->telephonyNetworkOperator:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->telephonyNetworkOperator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setMccmnc(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 70
    :cond_5
    iget-object v1, v0, Lio/bidmachine/DeviceInfo;->telephonyNetworkOperatorName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 71
    iget-object v0, v0, Lio/bidmachine/DeviceInfo;->telephonyNetworkOperatorName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setCarrier(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 74
    :cond_6
    invoke-interface {p5}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result p5

    if-eqz p5, :cond_7

    .line 76
    invoke-virtual {p3}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    move-result-object p3

    .line 77
    invoke-virtual {p4}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    move-result-object p4

    .line 75
    invoke-static {p1, p3, p4}, Lio/bidmachine/g;->obtainBestLocation(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    .line 78
    invoke-static {p1, v2}, Lio/bidmachine/g;->locationToGeo(Landroid/location/Location;Z)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    :cond_7
    return-void
.end method

.method final fillDeviceExtension(Landroid/content/Context;Lcom/explorestack/protobuf/Struct$Builder;Lio/bidmachine/UserRestrictionParams;)V
    .locals 9

    .line 85
    invoke-static {p1}, Lio/bidmachine/Utils;->getInputLanguageSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 87
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v1

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    const-string v1, "inputlanguage"

    .line 95
    invoke-virtual {p2, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 100
    :cond_2
    invoke-static {p1}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getAvailableDiskSpaceInMB()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 104
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v2, "diskspace"

    .line 103
    invoke-virtual {p2, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 108
    :cond_3
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getTotalDiskSpaceInMB()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 111
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v2, "totaldisk"

    .line 110
    invoke-virtual {p2, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 115
    :cond_4
    invoke-static {p1}, Lio/bidmachine/Utils;->isRingMuted(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_6

    .line 118
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 119
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide v7, v2

    goto :goto_1

    :cond_5
    move-wide v7, v4

    :goto_1
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "ringmute"

    .line 117
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 122
    :cond_6
    invoke-static {p1}, Lio/bidmachine/Utils;->isCharging(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 125
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 126
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    move-wide v7, v4

    goto :goto_2

    :cond_7
    move-wide v7, v2

    :goto_2
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "charging"

    .line 124
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 129
    :cond_8
    invoke-static {p1}, Lio/bidmachine/utils/BluetoothUtils;->isHeadsetConnected(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 132
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 133
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    move-wide v7, v4

    goto :goto_3

    :cond_9
    move-wide v7, v2

    :goto_3
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "headset"

    .line 131
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 136
    :cond_a
    invoke-static {p1}, Lio/bidmachine/Utils;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 139
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v7, v1

    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "batterylevel"

    .line 138
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 143
    :cond_b
    invoke-static {p1}, Lio/bidmachine/Utils;->isBatterySaverEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 146
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 147
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    move-wide v7, v4

    goto :goto_4

    :cond_c
    move-wide v7, v2

    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "batterysaver"

    .line 145
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 150
    :cond_d
    invoke-static {p1}, Lio/bidmachine/Utils;->isDarkModeEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 152
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    if-eqz v1, :cond_e

    move-wide v7, v4

    goto :goto_5

    :cond_e
    move-wide v7, v2

    .line 153
    :goto_5
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "darkmode"

    .line 151
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 155
    invoke-static {p1}, Lio/bidmachine/Utils;->isAirplaneModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 158
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 159
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    move-wide v7, v4

    goto :goto_6

    :cond_f
    move-wide v7, v2

    :goto_6
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "airplane"

    .line 157
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 162
    :cond_10
    invoke-static {p1}, Lio/bidmachine/Utils;->isDoNotDisturbOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 165
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v6

    .line 166
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    move-wide v7, v4

    goto :goto_7

    :cond_11
    move-wide v7, v2

    :goto_7
    invoke-virtual {v6, v7, v8}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    const-string v6, "dnd"

    .line 164
    invoke-virtual {p2, v6, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 169
    :cond_12
    invoke-virtual {p3}, Lio/bidmachine/UserRestrictionParams;->canSendDeviceInfo()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 170
    invoke-static {p1}, Lio/bidmachine/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 173
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, p3}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 175
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p3

    const-string v1, "devicename"

    .line 172
    invoke-virtual {p2, v1, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 179
    :cond_13
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {p3, v6, v7}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 181
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p3

    const-string v1, "time"

    .line 178
    invoke-virtual {p2, v1, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 182
    invoke-static {p1}, Lio/bidmachine/Utils;->getScreenBrightnessRatio(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 185
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double v6, p3

    invoke-virtual {v1, v6, v7}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 187
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p3

    const-string v1, "screenbright"

    .line 184
    invoke-virtual {p2, v1, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 190
    :cond_14
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 191
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->isDeviceRooted()Z

    move-result v1

    if-eqz v1, :cond_15

    move-wide v2, v4

    :cond_15
    invoke-virtual {p3, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 192
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p3

    const-string v1, "jailbreak"

    .line 189
    invoke-virtual {p2, v1, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 194
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p3, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 196
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p3

    const-string v1, "lastbootup"

    .line 193
    invoke-virtual {p2, v1, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 197
    invoke-static {p1}, Lio/bidmachine/utils/BluetoothUtils;->getConnectedHeadsets(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 198
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p3

    if-lez p3, :cond_16

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_16

    .line 202
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 203
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    const-string p3, "headsetname"

    .line 201
    invoke-virtual {p2, p3, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 207
    :cond_16
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getTotalRAMInB()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 210
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p3

    .line 211
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p1

    const-string p3, "totalmem"

    .line 209
    invoke-virtual {p2, p3, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    :cond_17
    return-void
.end method

.method public final merge(Lio/bidmachine/DeviceParams;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic merge(Lio/bidmachine/models/RequestParams;)V
    .locals 0

    .line 25
    check-cast p1, Lio/bidmachine/DeviceParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/DeviceParams;->merge(Lio/bidmachine/DeviceParams;)V

    return-void
.end method
