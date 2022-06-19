.class Lcom/verizon/ads/nativeplacement/NativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/verizon/ads/nativeplacement/NativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAd;J)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    iput-wide p2, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 525
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v0}, Lcom/verizon/ads/nativeplacement/NativeAd;->b(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Expiration timer already running"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v0}, Lcom/verizon/ads/nativeplacement/NativeAd;->c(Lcom/verizon/ads/nativeplacement/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 537
    :cond_1
    iget-wide v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 539
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v5}, Lcom/verizon/ads/nativeplacement/NativeAd;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Ad will expire in %d ms for placement Id \'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 543
    :cond_2
    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    new-instance v3, Lcom/verizon/ads/nativeplacement/NativeAd$2$1;

    invoke-direct {v3, p0}, Lcom/verizon/ads/nativeplacement/NativeAd$2$1;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd$2;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/nativeplacement/NativeAd;->a(Lcom/verizon/ads/nativeplacement/NativeAd;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 552
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->d()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v3}, Lcom/verizon/ads/nativeplacement/NativeAd;->b(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
