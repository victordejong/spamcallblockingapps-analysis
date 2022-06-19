.class Lio/bidmachine/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdRequestParams;


# instance fields
.field private final dataRestrictions:Lio/bidmachine/models/DataRestrictions;

.field private final deviceInfo:Lio/bidmachine/models/DeviceInfo;

.field private final targetingInfo:Lio/bidmachine/models/TargetingInfo;


# direct methods
.method constructor <init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lio/bidmachine/TargetingInfoImpl;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/TargetingInfoImpl;-><init>(Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/TargetingParams;)V

    iput-object v0, p0, Lio/bidmachine/l;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    .line 23
    new-instance p1, Lio/bidmachine/DeviceInfoImpl;

    invoke-direct {p1, p2}, Lio/bidmachine/DeviceInfoImpl;-><init>(Lio/bidmachine/models/DataRestrictions;)V

    iput-object p1, p0, Lio/bidmachine/l;->deviceInfo:Lio/bidmachine/models/DeviceInfo;

    .line 24
    iput-object p2, p0, Lio/bidmachine/l;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-void
.end method


# virtual methods
.method public getAdRequest()Lio/bidmachine/AdRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataRestrictions()Lio/bidmachine/models/DataRestrictions;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/bidmachine/l;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    return-object v0
.end method

.method public getDeviceInfo()Lio/bidmachine/models/DeviceInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/bidmachine/l;->deviceInfo:Lio/bidmachine/models/DeviceInfo;

    return-object v0
.end method

.method public getTargetingParams()Lio/bidmachine/models/TargetingInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/bidmachine/l;->targetingInfo:Lio/bidmachine/models/TargetingInfo;

    return-object v0
.end method

.method public isTestMode()Z
    .locals 1

    .line 52
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->isTestMode()Z

    move-result v0

    return v0
.end method
