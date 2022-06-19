.class public Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private creativeData:Ljava/lang/String;

.field private desiredBitrate:I

.field private environmentVars:Ljava/lang/String;

.field private height:I

.field private viewMode:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->width:I

    .line 14
    iput p2, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->height:I

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->viewMode:Ljava/lang/String;

    .line 16
    iput p4, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->desiredBitrate:I

    return-void
.end method


# virtual methods
.method public getCreativeData()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->creativeData:Ljava/lang/String;

    return-object v0
.end method

.method public getDesiredBitrate()I
    .locals 1

    .line 40
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->desiredBitrate:I

    return v0
.end method

.method public getEnvironmentVars()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->environmentVars:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->height:I

    return v0
.end method

.method public getViewMode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->viewMode:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 28
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->width:I

    return v0
.end method

.method public setAdParameters(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->creativeData:Ljava/lang/String;

    return-void
.end method

.method public setEnvironmentVars(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams;->environmentVars:Ljava/lang/String;

    return-void
.end method
