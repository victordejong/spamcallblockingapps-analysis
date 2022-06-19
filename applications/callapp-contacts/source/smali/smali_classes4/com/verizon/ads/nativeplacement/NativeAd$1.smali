.class Lcom/verizon/ads/nativeplacement/NativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeplacement/NativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAd;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication()V
    .locals 4

    const/4 v0, 0x3

    .line 106
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v3}, Lcom/verizon/ads/nativeplacement/NativeAd;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad left application for placementId \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAd$1$3;

    invoke-direct {v1, p0}, Lcom/verizon/ads/nativeplacement/NativeAd$1$3;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClicked(Lcom/verizon/ads/Component;)V
    .locals 4

    const/4 v0, 0x3

    .line 85
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v3}, Lcom/verizon/ads/nativeplacement/NativeAd;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad clicked for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAd$1$2;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAd$1$2;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd$1;Lcom/verizon/ads/Component;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    iget-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-virtual {p1}, Lcom/verizon/ads/nativeplacement/NativeAd;->a()V

    return-void
.end method

.method public onClosed()V
    .locals 4

    const/4 v0, 0x3

    .line 66
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v3}, Lcom/verizon/ads/nativeplacement/NativeAd;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad closed for placementId \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAd$1$1;

    invoke-direct {v1, p0}, Lcom/verizon/ads/nativeplacement/NativeAd$1$1;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 125
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v3}, Lcom/verizon/ads/nativeplacement/NativeAd;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad received event <%s> for placementId \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/verizon/ads/nativeplacement/NativeAd$1$4;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
