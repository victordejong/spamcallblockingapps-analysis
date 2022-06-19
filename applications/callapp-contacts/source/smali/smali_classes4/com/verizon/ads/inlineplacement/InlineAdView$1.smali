.class Lcom/verizon/ads/inlineplacement/InlineAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/inlineplacement/InlineAdView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication()V
    .locals 4

    const/4 v0, 0x3

    .line 168
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad left application for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1$5;

    invoke-direct {v1, p0}, Lcom/verizon/ads/inlineplacement/InlineAdView$1$5;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClicked()V
    .locals 4

    const/4 v0, 0x3

    .line 147
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad clicked for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;

    invoke-direct {v1, p0}, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCollapsed()V
    .locals 4

    const/4 v0, 0x3

    .line 90
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad collapsed for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1$1;

    invoke-direct {v1, p0}, Lcom/verizon/ads/inlineplacement/InlineAdView$1$1;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Lcom/verizon/ads/ErrorInfo;)V
    .locals 4

    const/4 v0, 0x3

    .line 187
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad error for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExpanded()V
    .locals 4

    const/4 v0, 0x3

    .line 109
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad expanded for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1$2;

    invoke-direct {v1, p0}, Lcom/verizon/ads/inlineplacement/InlineAdView$1$2;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResized()V
    .locals 4

    const/4 v0, 0x3

    .line 128
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad resized for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdView;->f()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;

    invoke-direct {v1, p0}, Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
