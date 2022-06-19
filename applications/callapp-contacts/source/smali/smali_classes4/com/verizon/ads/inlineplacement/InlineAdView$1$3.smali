.class Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView$1;->onResized()V
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

    .line 132
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$3;->a:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v1, v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0, v1}, Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;->onResized(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    :cond_0
    return-void
.end method
