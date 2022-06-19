.class public Lcom/amazon/device/ads/MraidCloseCommand;
.super Lcom/amazon/device/ads/MraidCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/device/ads/MraidCommand;-><init>()V

    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 1

    const-string v0, "close"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "close"

    return-object v0
.end method

.method final a(Lorg/json/JSONObject;Lcom/amazon/device/ads/DTBAdMRAIDController;)V
    .locals 0

    .line 27
    invoke-virtual {p2}, Lcom/amazon/device/ads/DTBAdMRAIDController;->e()V

    return-void
.end method
