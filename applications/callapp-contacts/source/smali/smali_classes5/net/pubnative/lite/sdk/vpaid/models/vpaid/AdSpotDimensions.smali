.class public Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->width:I

    .line 7
    iput p2, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 23
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 15
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 27
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 19
    iput p1, p0, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->width:I

    return-void
.end method
