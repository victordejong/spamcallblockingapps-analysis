.class final Lcom/verizon/ads/VASAds$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ConfigurationProvider$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/VASAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 111
    invoke-static {}, Lcom/verizon/ads/VASAds;->e()Lcom/verizon/ads/Logger;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 112
    invoke-interface {p1}, Lcom/verizon/ads/ConfigurationProvider;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const-string p1, "An error occurred while updating configuration provider <%s>. Error Info: %s"

    .line 111
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x3

    .line 114
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 115
    invoke-static {}, Lcom/verizon/ads/VASAds;->e()Lcom/verizon/ads/Logger;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/verizon/ads/ConfigurationProvider;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Successfully updated configuration provider <%s>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
