.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

.field final synthetic b:Lcom/verizon/ads/inlineplacement/InlineAdView;

.field final synthetic c:Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;

    iget-object v1, v1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;->onLoaded(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    return-void
.end method
