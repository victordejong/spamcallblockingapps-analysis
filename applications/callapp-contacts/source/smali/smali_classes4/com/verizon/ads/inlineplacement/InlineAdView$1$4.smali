.class Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView$1;->onClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 1684
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1685
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Attempt to record a click event off main thread and/or ad has been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    :cond_0
    iget-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->k:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1695
    iput-boolean v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->k:Z

    .line 1698
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->b()V

    .line 1700
    new-instance v1, Lcom/verizon/ads/support/ClickEvent;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-direct {v1, v0}, Lcom/verizon/ads/support/ClickEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    const-string v0, "com.verizon.ads.click"

    invoke-static {v0, v1}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v1, v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0, v1}, Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;->onClicked(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    :cond_2
    return-void
.end method
