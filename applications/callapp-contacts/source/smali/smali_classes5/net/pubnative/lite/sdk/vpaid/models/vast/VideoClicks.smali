.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clickThrough:Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickThrough;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "ClickThrough"
    .end annotation
.end field

.field private clickTrackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickTracking;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "ClickTracking"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickThrough()Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickThrough;
    .locals 1

    .line 20
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;->clickThrough:Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickThrough;

    return-object v0
.end method

.method public getClickTrackingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/ClickTracking;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/VideoClicks;->clickTrackingList:Ljava/util/List;

    return-object v0
.end method
