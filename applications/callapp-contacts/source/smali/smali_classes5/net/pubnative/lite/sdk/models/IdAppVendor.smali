.class public Lnet/pubnative/lite/sdk/models/IdAppVendor;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"


# instance fields
.field public APL:Lnet/pubnative/lite/sdk/models/IdApl;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public LR:Lnet/pubnative/lite/sdk/models/IdLr;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public TTD:Lnet/pubnative/lite/sdk/models/IdTtd;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/IdAppVendor;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method
