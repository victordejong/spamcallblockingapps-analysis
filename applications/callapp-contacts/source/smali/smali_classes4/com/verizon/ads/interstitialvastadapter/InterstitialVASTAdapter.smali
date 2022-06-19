.class public Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;
.implements Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    }
.end annotation


# static fields
.field private static final c:Lcom/verizon/ads/Logger;

.field private static final d:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/interstitialvastadapter/VASTActivity;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

.field private e:Lcom/verizon/ads/vastcontroller/VASTController;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/verizon/ads/AdContent;

.field private volatile j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->g:I

    .line 38
    iput v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->h:I

    .line 41
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 65
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-direct {v0}, Lcom/verizon/ads/vastcontroller/VASTController;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    .line 67
    invoke-virtual {v0, p0}, Lcom/verizon/ads/vastcontroller/VASTController;->setListener(Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    return-object p0
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    return-object p1
.end method

.method static synthetic b(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)Lcom/verizon/ads/vastcontroller/VASTController;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Lcom/verizon/ads/Logger;
    .locals 1

    .line 26
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abortLoad()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    const-string v1, "Attempting to abort load."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->ABORTED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1401
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;

    :goto_0
    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    invoke-virtual {v0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->finish()V

    :cond_1
    return-void
.end method

.method final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->onBackPressed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    .line 479
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b()V

    return-void
.end method

.method public fireImpression()V
    .locals 0

    return-void
.end method

.method public getAdContent()Lcom/verizon/ads/AdContent;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->i:Lcom/verizon/ads/AdContent;

    return-object v0
.end method

.method public getEnterAnimationId()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->g:I

    return v0
.end method

.method public getExitAnimationId()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->h:I

    return v0
.end method

.method public isImmersiveEnabled()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->f:Z

    return v0
.end method

.method public declared-synchronized load(Landroid/content/Context;ILcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 119
    :try_start_0
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    const-string p2, "LoadViewListener cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_1

    .line 125
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    const-string p2, "Adapter must be in prepared state to load."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 128
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d:Ljava/lang/String;

    const-string v0, "Adapter not in prepared state."

    const/4 v1, -0x2

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_2
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 135
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    new-instance v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$1;-><init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/verizon/ads/vastcontroller/VASTController;->load(Landroid/content/Context;ILcom/verizon/ads/vastcontroller/VASTController$LoadListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAdLeftApplication()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onClicked()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_0

    .line 468
    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "onVideoComplete"

    invoke-interface {v0, v1, v3, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 82
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    const-string p2, "prepare failed; adapter is not in the default state."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 84
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d:Ljava/lang/String;

    const-string v0, "Adapter not in the default state."

    const/4 v1, -0x2

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/verizon/ads/vastcontroller/VASTController;->prepare(Lcom/verizon/ads/AdSession;Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 90
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->ERROR:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 95
    :goto_0
    iput-object p2, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->i:Lcom/verizon/ads/AdContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 370
    :try_start_0
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 372
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->close()V

    .line 374
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->release()V

    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e:Lcom/verizon/ads/vastcontroller/VASTController;

    .line 379
    :cond_0
    new-instance v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$3;

    invoke-direct {v0, p0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$3;-><init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnterAnimation(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->g:I

    return-void
.end method

.method public setExitAnimation(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->h:I

    return-void
.end method

.method public setImmersiveEnabled(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->f:Z

    return-void
.end method

.method public declared-synchronized setListener(Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V
    .locals 2

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 212
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    const-string v0, "InterstitialAdAdapterListener can only be set in default or prepared state."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized show(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_1

    .line 182
    sget-object p1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->c:Lcom/verizon/ads/Logger;

    const-string v0, "Show failed; Adapter not loaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz p1, :cond_0

    .line 185
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->d:Ljava/lang/String;

    const-string v2, "Show failed; Adapter not loaded."

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onError(Lcom/verizon/ads/ErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->SHOWING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->j:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 193
    new-instance v0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;

    invoke-direct {v0, p0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;-><init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)V

    .line 194
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->isImmersiveEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->setImmersive(Z)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->getEnterAnimationId()I

    move-result v2

    invoke-virtual {p0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->getExitAnimationId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->setTransitionAnimation(II)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    .line 196
    invoke-static {p1, v0}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->launch(Landroid/content/Context;Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
