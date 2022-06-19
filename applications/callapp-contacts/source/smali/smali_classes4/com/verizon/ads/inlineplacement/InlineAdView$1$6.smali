.class Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView$1;->onError(Lcom/verizon/ads/ErrorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/ErrorInfo;

.field final synthetic b:Lcom/verizon/ads/inlineplacement/InlineAdView$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView$1;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;->b:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;->b:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;->b:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;->b:Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    iget-object v1, v1, Lcom/verizon/ads/inlineplacement/InlineAdView$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$1$6;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;->onError(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method
