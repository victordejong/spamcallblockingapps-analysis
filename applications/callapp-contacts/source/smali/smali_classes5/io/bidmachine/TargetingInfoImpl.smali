.class Lio/bidmachine/TargetingInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/TargetingInfo;


# instance fields
.field private dataRestrictions:Lio/bidmachine/models/DataRestrictions;

.field private targetingParams:Lio/bidmachine/TargetingParams;


# direct methods
.method constructor <init>(Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/TargetingParams;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    .line 24
    iput-object p2, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceLocation()Landroid/location/Location;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGender()Lio/bidmachine/utils/Gender;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeywords()[Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getKeywords()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAge()Ljava/lang/Integer;
    .locals 3

    .line 56
    invoke-virtual {p0}, Lio/bidmachine/TargetingInfoImpl;->getUserBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserBirthdayYear()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->dataRestrictions:Lio/bidmachine/models/DataRestrictions;

    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->canSendGeoPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getZip()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPaid()Ljava/lang/Boolean;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/bidmachine/TargetingInfoImpl;->targetingParams:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams;->getPaid()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
