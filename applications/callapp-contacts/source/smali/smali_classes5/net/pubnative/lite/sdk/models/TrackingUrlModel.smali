.class public Lnet/pubnative/lite/sdk/models/TrackingUrlModel;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"


# instance fields
.field public startTimestamp:J
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->startTimestamp:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->startTimestamp:J

    .line 18
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method
