.class public Lcom/amazon/device/ads/MraidFirePixelCommand;
.super Lcom/amazon/device/ads/MraidCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/amazon/device/ads/MraidCommand;-><init>()V

    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 1

    const-string v0, "impFired"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "impFired"

    return-object v0
.end method

.method final a(Lorg/json/JSONObject;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-virtual {p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->k()V

    return-void
.end method
