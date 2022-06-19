.class public Lcom/amazon/device/ads/MraidExpandCommand;
.super Lcom/amazon/device/ads/MraidCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/device/ads/MraidCommand;-><init>()V

    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 1

    const-string v0, "expand"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "expand"

    return-object v0
.end method

.method final a(Lorg/json/JSONObject;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/amazon/device/ads/SDKUtilities;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->b(Ljava/util/Map;)V

    return-void
.end method
