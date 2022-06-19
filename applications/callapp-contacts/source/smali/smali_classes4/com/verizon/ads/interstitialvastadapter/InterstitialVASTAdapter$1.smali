.class Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->load(Landroid/content/Context;ILcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

.field final synthetic b:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->b:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    iput-object p2, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->b:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->b:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-static {v1}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    move-result-object v1

    sget-object v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->b:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    sget-object v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    invoke-static {v1, v2}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->b:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    sget-object v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->ERROR:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    invoke-static {v1, v2}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

    invoke-interface {v1, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    goto :goto_1

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adapter not in the loading state."

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    .line 153
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
