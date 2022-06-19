.class Lio/bidmachine/DeviceInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/DeviceInfo;


# instance fields
.field private final dataRestrictions:Lio/bidmachine/models/DataRestrictions;


# direct methods
.method constructor <init>(Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/bidmachine/DeviceInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-void
.end method


# virtual methods
.method public getHttpAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/bidmachine/DeviceInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lio/bidmachine/DeviceInfo;->httpAgent:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIfa(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/bidmachine/DeviceInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendIfa()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/c;->getAdvertisingId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 35
    invoke-static {}, Lio/bidmachine/c;->isLimitAdTrackingEnabled()Z

    move-result v0

    return v0
.end method
