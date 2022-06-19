.class public Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;
.implements Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final e:Lcom/verizon/ads/Logger;


# instance fields
.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/verizon/ads/webcontroller/WebController;

.field d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/verizon/ads/AdContent;

.field private volatile j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->f:Z

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->g:I

    .line 33
    iput v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->h:I

    .line 36
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 44
    new-instance v0, Lcom/verizon/ads/webcontroller/WebController;

    invoke-direct {v0}, Lcom/verizon/ads/webcontroller/WebController;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    .line 46
    invoke-virtual {v0, p0}, Lcom/verizon/ads/webcontroller/WebController;->setListener(Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    return-object p0
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    return-object p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Lcom/verizon/ads/Logger;
    .locals 1

    .line 19
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private e()Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;
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

    .line 173
    :try_start_0
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    const-string v1, "Attempting to abort load."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->ABORTED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
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

    .line 401
    invoke-direct {p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e()Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->finish()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 333
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->b()V

    return-void
.end method

.method public expand()V
    .locals 0

    return-void
.end method

.method public fireImpression()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->fireImpression()V

    :cond_0
    return-void
.end method

.method public getAdContent()Lcom/verizon/ads/AdContent;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->i:Lcom/verizon/ads/AdContent;

    return-object v0
.end method

.method public getEnterAnimationId()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->g:I

    return v0
.end method

.method public getExitAnimationId()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->h:I

    return v0
.end method

.method public isImmersiveEnabled()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->f:Z

    return v0
.end method

.method public declared-synchronized load(Landroid/content/Context;ILcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 128
    :try_start_0
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    const-string p2, "LoadViewListener cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_1

    .line 134
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    const-string p2, "Adapter must be in prepared state to load."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 136
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a:Ljava/lang/String;

    const-string v0, "Adapter not in prepared state."

    const/4 v1, -0x2

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 141
    :cond_1
    :try_start_2
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 143
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    new-instance v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;

    invoke-direct {v1, p0, p3}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$2;-><init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$LoadViewListener;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/verizon/ads/webcontroller/WebController;->load(Landroid/content/Context;ILcom/verizon/ads/webcontroller/WebController$LoadListener;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAdLeftApplication()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onClicked()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onError(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 61
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    const-string p2, "prepare failed; adapter is not in the default state."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 63
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a:Ljava/lang/String;

    const-string v0, "Adapter not in the default state."

    const/4 v1, -0x2

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/verizon/ads/webcontroller/WebController;->prepare(Lcom/verizon/ads/AdSession;Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 69
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 74
    :goto_0
    iput-object p2, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->i:Lcom/verizon/ads/AdContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
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

    .line 94
    :try_start_0
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 96
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->release()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    .line 101
    :cond_0
    new-instance v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$1;-><init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resize()V
    .locals 0

    return-void
.end method

.method public setEnterAnimation(I)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->g:I

    return-void
.end method

.method public setExitAnimation(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->h:I

    return-void
.end method

.method public setImmersiveEnabled(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->f:Z

    return-void
.end method

.method public declared-synchronized setListener(Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V
    .locals 2

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 219
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    const-string v0, "InterstitialAdAdapterListener can only be set in default, prepared, or loaded state."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
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

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_1

    .line 190
    sget-object p1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->e:Lcom/verizon/ads/Logger;

    const-string v0, "Show failed; Adapter not loaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz p1, :cond_0

    .line 193
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a:Ljava/lang/String;

    const-string v2, "Show failed; Adapter not loaded."

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onError(Lcom/verizon/ads/ErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    :try_start_1
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->SHOWING:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 201
    new-instance v0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;

    invoke-direct {v0, p0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;-><init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)V

    .line 202
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->isImmersiveEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->setImmersive(Z)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->getEnterAnimationId()I

    move-result v2

    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->getExitAnimationId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->setTransitionAnimation(II)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    .line 204
    invoke-static {p1, v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->launch(Landroid/content/Context;Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unload()V
    .locals 1

    .line 375
    sget-object v0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->UNLOADED:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->j:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 376
    invoke-virtual {p0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->b()V

    return-void
.end method
