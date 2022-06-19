.class Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/webcontroller/WebController$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->load(Landroid/content/Context;ILcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

.field final synthetic b:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->b:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    iput-object p2, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->b:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->b:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    invoke-static {v1}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    move-result-object v1

    sget-object v2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->b:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    sget-object v2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    invoke-static {v1, v2}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->b:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    sget-object v2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    invoke-static {v1, v2}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

    invoke-interface {v1, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adapter not in the loading state."

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    .line 161
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
