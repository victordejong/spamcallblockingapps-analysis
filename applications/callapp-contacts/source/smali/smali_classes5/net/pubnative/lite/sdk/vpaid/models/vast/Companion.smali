.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apiFramework:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private companionClickThrough:Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickThrough;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private companionClickTracking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickTracking;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private expandedHeight:I
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private expandedWidth:I
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

.field private staticResource:Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private trackingEvents:Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private width:I
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanionClickThrough()Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickThrough;
    .locals 1

    .line 73
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->companionClickThrough:Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickThrough;

    return-object v0
.end method

.method public getCompanionClickTracking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/CompanionClickTracking;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->companionClickTracking:Ljava/util/List;

    return-object v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->expandedHeight:I

    return v0
.end method

.method public getExpandedWidth()I
    .locals 1

    .line 53
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->expandedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 49
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticResource()Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;
    .locals 1

    .line 65
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->staticResource:Lnet/pubnative/lite/sdk/vpaid/models/vast/StaticResource;

    return-object v0
.end method

.method public getTrackingEvents()Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;
    .locals 1

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->trackingEvents:Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Companion;->width:I

    return v0
.end method
