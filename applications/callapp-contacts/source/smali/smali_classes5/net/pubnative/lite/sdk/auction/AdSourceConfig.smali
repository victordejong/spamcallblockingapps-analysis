.class public Lnet/pubnative/lite/sdk/auction/AdSourceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eCPM:D

.field private enabled:Z

.field private name:Ljava/lang/String;

.field private vastTagUrl:Ljava/lang/String;

.field private zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getECPM()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->eCPM:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVastTagUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->vastTagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->enabled:Z

    return v0
.end method

.method public setECPM(D)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->eCPM:D

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->enabled:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->name:Ljava/lang/String;

    return-void
.end method

.method public setVastTagUrl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->vastTagUrl:Ljava/lang/String;

    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/AdSourceConfig;->zoneId:Ljava/lang/String;

    return-void
.end method
