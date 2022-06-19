.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/AdSession;

.field final synthetic b:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

.field final synthetic c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->a:Lcom/verizon/ads/AdSession;

    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->b:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 11

    .line 904
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->a:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 905
    new-instance v10, Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-static {v1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-static {v1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getView()Landroid/view/View;

    move-result-object v4

    .line 906
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->getAdSize()Lcom/verizon/ads/inlineplacement/AdSize;

    move-result-object v5

    iget-object v6, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->a:Lcom/verizon/ads/AdSession;

    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-static {v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->c(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->b:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    new-instance v9, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-direct {v9, v0}, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/verizon/ads/inlineplacement/InlineAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/verizon/ads/inlineplacement/AdSize;Lcom/verizon/ads/AdSession;Ljava/util/List;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;)V

    .line 908
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-static {v0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->d(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    invoke-static {}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;

    invoke-direct {v2, p0, v0, v10}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$3$1;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$3;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
