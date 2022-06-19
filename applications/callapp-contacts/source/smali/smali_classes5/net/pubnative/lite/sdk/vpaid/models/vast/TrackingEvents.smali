.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "Tracking"
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
.method public getTrackingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/TrackingEvents;->trackingList:Ljava/util/List;

    return-object v0
.end method
