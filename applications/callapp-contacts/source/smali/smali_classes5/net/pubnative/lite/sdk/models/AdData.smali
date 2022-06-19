.class public Lnet/pubnative/lite/sdk/models/AdData;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 51
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/AdData;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected getDataField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDoubleField(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/AdData;->getDataField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/AdData;->getDataField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "h"

    .line 85
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getIntField(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    const-string v0, "html"

    .line 77
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntField(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/AdData;->getDataField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getJS()Ljava/lang/String;
    .locals 1

    const-string v0, "js"

    .line 72
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/Double;
    .locals 1

    const-string v0, "number"

    .line 62
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getDoubleField(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/AdData;->getDataField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    .line 57
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    .line 67
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "w"

    .line 81
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getIntField(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
