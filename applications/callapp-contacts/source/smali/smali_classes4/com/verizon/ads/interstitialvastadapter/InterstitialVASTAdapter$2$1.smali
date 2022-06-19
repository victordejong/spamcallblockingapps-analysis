.class Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object v0, v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object v1, v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    sget-object v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->ERROR:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    invoke-static {v1, v2}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 345
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object v1, v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object v1, v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-interface {v1, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onError(Lcom/verizon/ads/ErrorInfo;)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object p1, p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->SHOWN:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    invoke-static {p1, v1}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 350
    iget-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object p1, p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;

    iget-object p1, p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-interface {p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onShown()V

    .line 354
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
