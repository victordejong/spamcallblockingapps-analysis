.class final Lio/bidmachine/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/g$a;,
        Lio/bidmachine/g$b;
    }
.end annotation


# static fields
.field private static DEFAULT_PRINTER:Lio/bidmachine/g$a; = null

.field private static protoKnownPackages:[Ljava/lang/String; = null

.field private static protoRootPackage:Ljava/lang/String; = "bidmachine"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.bidmachine"

    const-string v1, "com.explorestack"

    .line 211
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/g;->protoKnownPackages:[Ljava/lang/String;

    .line 213
    new-instance v0, Lio/bidmachine/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/g$a;-><init>(Lio/bidmachine/g$1;)V

    sput-object v0, Lio/bidmachine/g;->DEFAULT_PRINTER:Lio/bidmachine/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lio/bidmachine/g;->protoKnownPackages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lio/bidmachine/g;->protoRootPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lio/bidmachine/g;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method static synthetic access$600(ILjava/lang/Object;Lio/bidmachine/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lio/bidmachine/g;->printUnknownFieldValue(ILjava/lang/Object;Lio/bidmachine/g$b;)V

    return-void
.end method

.method static addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static dump(Ljava/lang/String;Lcom/explorestack/protobuf/MessageOrBuilder;)V
    .locals 1

    .line 121
    invoke-static {}, Lio/bidmachine/core/Logger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " dump:\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/bidmachine/g;->printToString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 81
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 86
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/16 p0, 0x9

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_ETHERNET:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 108
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_WIFI:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    .line 102
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_4G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 93
    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_2G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 99
    :cond_4
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_5G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 96
    :cond_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_3G:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 90
    :cond_6
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_CELLULAR_NETWORK_UNKNOWN:Lcom/explorestack/protobuf/adcom/ConnectionType;

    goto :goto_1

    .line 114
    :cond_7
    :goto_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :goto_1
    return-object p0
.end method

.method private static getLocationType(Landroid/location/Location;)Lcom/explorestack/protobuf/adcom/LocationType;
    .locals 2

    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object p0, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_GPS:Lcom/explorestack/protobuf/adcom/LocationType;

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 53
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_IP:Lcom/explorestack/protobuf/adcom/LocationType;

    return-object p0

    .line 56
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/LocationType;

    return-object p0
.end method

.method static locationToGeo(Landroid/location/Location;Z)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    .line 61
    invoke-static {v0, p0, p1}, Lio/bidmachine/g;->locationToGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V

    return-object v0
.end method

.method static locationToGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 69
    invoke-static {}, Lio/bidmachine/core/Utils;->getUtcOffsetMinutes()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    invoke-static {p1}, Lio/bidmachine/g;->getLocationType(Landroid/location/Location;)Lcom/explorestack/protobuf/adcom/LocationType;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setType(Lcom/explorestack/protobuf/adcom/LocationType;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 73
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 74
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 75
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 76
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_1
    return-void
.end method

.method static obtainBestLocation(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    .line 170
    invoke-static {p1, p2}, Lio/bidmachine/core/Utils;->oneOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    .line 171
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    :cond_0
    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method static obtainInitRequest(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/protobuf/InitRequest;
    .locals 2

    .line 130
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 135
    :cond_0
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 136
    sget-object p1, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 137
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 138
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    :cond_1
    const-string p1, "BidMachine"

    .line 142
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    const-string p1, "1.7.1"

    .line 143
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 144
    invoke-interface {p3}, Lio/bidmachine/models/DataRestrictions;->canSendIfa()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {p0, p1}, Lio/bidmachine/c;->getAdvertisingId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 145
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/bidmachine/d;->obtainIFV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 146
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 148
    invoke-static {p0}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object p1

    .line 149
    iget-boolean p1, p1, Lio/bidmachine/DeviceInfo;->isTablet:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_TABLET:Lcom/explorestack/protobuf/adcom/DeviceType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_PHONE_DEVICE:Lcom/explorestack/protobuf/adcom/DeviceType;

    :goto_0
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 152
    invoke-interface {p3}, Lio/bidmachine/models/DataRestrictions;->canSendDeviceInfo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    invoke-static {p0}, Lio/bidmachine/g;->getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 155
    :cond_3
    invoke-interface {p3}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 156
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 158
    invoke-virtual {p2, p1}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    :cond_4
    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {p2}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    move-result-object p2

    goto :goto_1

    :cond_5
    move-object p2, p3

    .line 161
    :goto_1
    invoke-static {p0, p2, p3}, Lio/bidmachine/g;->obtainBestLocation(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    .line 160
    invoke-static {p1, p0, v1}, Lio/bidmachine/g;->locationToGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V

    .line 164
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 166
    :cond_6
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    move-result-object p0

    return-object p0
.end method

.method static prepareEvents(Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 185
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getTypeValue()I

    move-result v1

    invoke-static {v1}, Lio/bidmachine/TrackEventType;->fromNumber(I)Lio/bidmachine/TrackEventType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/bidmachine/g;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lio/bidmachine/g;->DEFAULT_PRINTER:Lio/bidmachine/g$a;

    new-instance v1, Lio/bidmachine/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/bidmachine/g$b;-><init>(Ljava/lang/Appendable;Lio/bidmachine/g$1;)V

    invoke-static {v0, p0, v1}, Lio/bidmachine/g$a;->access$200(Lio/bidmachine/g$a;Lcom/explorestack/protobuf/MessageOrBuilder;Lio/bidmachine/g$b;)V

    return-void
.end method

.method private static printToString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-static {p0, v0}, Lio/bidmachine/g;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lio/bidmachine/g$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-static {p0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 528
    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Bad tag: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_1
    sget-object p0, Lio/bidmachine/g;->DEFAULT_PRINTER:Lio/bidmachine/g$a;

    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-static {p0, p1, p2}, Lio/bidmachine/g$a;->access$700(Lio/bidmachine/g$a;Lcom/explorestack/protobuf/UnknownFieldSet;Lio/bidmachine/g$b;)V

    return-void

    :cond_2
    const-string p0, "\""

    .line 517
    invoke-virtual {p2, p0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 518
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {p2, p0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    .line 514
    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 511
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lio/bidmachine/g;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/bidmachine/g$b;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static unsignedToString(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 534
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    .line 535
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
