.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apiFramework:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private bitrate:I
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private delivery:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private height:I
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private maintainAspectRatio:Z
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private scalable:Z
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Text;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private width:I
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .line 54
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->bitrate:I

    return v0
.end method

.method public getDelivery()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->delivery:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 62
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 58
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->width:I

    return v0
.end method

.method public isMaintainAspectRatio()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->maintainAspectRatio:Z

    return v0
.end method

.method public isScalable()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->scalable:Z

    return v0
.end method
