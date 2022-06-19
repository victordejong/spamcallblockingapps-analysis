.class public Lcom/adcolony/sdk/AdColonyInterstitialActivity;
.super Ld2/w;
.source "SourceFile"


# instance fields
.field public j:Ld2/q;

.field public k:Ld2/e1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld2/w;-><init>()V

    .line 2
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld2/f1;->o:Ld2/q;

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    return-void
.end method


# virtual methods
.method public c(Ld2/t0;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ld2/w;->c(Ld2/t0;)V

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "v4iap"

    .line 4
    invoke-virtual {p1, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    const-string v1, "product_ids"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 8
    iget-object v4, v1, Ld2/d4;->a:Lorg/json/JSONArray;

    monitor-enter v4

    .line 9
    :try_start_0
    iget-object v5, v1, Ld2/d4;->a:Lorg/json/JSONArray;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    iget-object v1, v1, Ld2/d4;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Ljava/lang/String;

    monitor-exit v4

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v4

    goto :goto_0

    .line 14
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 15
    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    .line 16
    iget-object v4, v2, Ld2/q;->a:Landroid/support/v4/media/a;

    const-string v5, "engagement_type"

    .line 17
    invoke-static {p1, v5}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v2, v1, p1}, Landroid/support/v4/media/a;->C(Ld2/q;Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 19
    :cond_2
    :goto_1
    iget-object p1, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {v0, p1}, Ld2/k0;->d(Ld2/j0;)V

    .line 20
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    if-eqz p1, :cond_4

    .line 21
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    iget-object p1, p1, Ld2/q;->g:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    .line 25
    iget-object v0, p1, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->x(Ld2/q;)V

    .line 27
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    .line 28
    iput-object v3, p1, Ld2/q;->c:Ld2/j0;

    .line 29
    iput-object v3, p1, Ld2/q;->a:Landroid/support/v4/media/a;

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    invoke-virtual {p1}, Ld2/q;->b()V

    .line 31
    iput-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->k:Ld2/e1;

    if-eqz p1, :cond_6

    .line 33
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 36
    :cond_5
    iput-object v3, p1, Ld2/e1;->b:Ld2/q;

    .line 37
    iput-object v3, p1, Ld2/e1;->a:Landroid/media/AudioManager;

    .line 38
    iput-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->k:Ld2/e1;

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Ld2/q;->f:I

    .line 3
    :goto_0
    iput v0, p0, Ld2/w;->b:I

    .line 4
    invoke-super {p0, p1}, Ld2/w;->onCreate(Landroid/os/Bundle;)V

    .line 5
    invoke-static {}, Ld2/t;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p1, Ld2/q;->e:Ld2/t1;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {p1, v0}, Ld2/t1;->b(Ld2/j0;)V

    .line 8
    :cond_2
    new-instance p1, Ld2/e1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    invoke-direct {p1, v0, v1}, Ld2/e1;-><init>(Landroid/os/Handler;Ld2/q;)V

    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->k:Ld2/e1;

    .line 9
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->j:Ld2/q;

    .line 10
    iget-object v0, p1, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->E(Ld2/q;)V

    :cond_3
    :goto_1
    return-void
.end method
