.class public Lnet/pubnative/lite/sdk/models/AdExt;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"


# instance fields
.field protected meta:Ljava/util/Map;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/AdExt;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method
