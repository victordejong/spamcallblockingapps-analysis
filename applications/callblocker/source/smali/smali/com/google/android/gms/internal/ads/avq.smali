.class public final Lcom/google/android/gms/internal/ads/avq;
.super Lcom/google/android/gms/internal/ads/amh;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/aud;

.field private final f:Lcom/google/android/gms/internal/ads/awx;

.field private final g:Lcom/google/android/gms/internal/ads/anc;

.field private final h:Lcom/google/android/gms/internal/ads/cme;

.field private final i:Lcom/google/android/gms/internal/ads/apx;

.field private j:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/aud;Lcom/google/android/gms/internal/ads/awx;Lcom/google/android/gms/internal/ads/anc;Lcom/google/android/gms/internal/ads/cme;Lcom/google/android/gms/internal/ads/apx;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/act;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/amh;-><init>(Lcom/google/android/gms/internal/ads/amk;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/avq;->j:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/avq;->c:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->d:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/avq;->e:Lcom/google/android/gms/internal/ads/aud;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/avq;->f:Lcom/google/android/gms/internal/ads/awx;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/avq;->g:Lcom/google/android/gms/internal/ads/anc;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/avq;->h:Lcom/google/android/gms/internal/ads/cme;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/avq;->i:Lcom/google/android/gms/internal/ads/apx;

    .line 10
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->g:Lcom/google/android/gms/internal/ads/anc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anc;->e()Z

    move-result v0

    return v0
.end method

.method public final a(Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ae:Lcom/google/android/gms/internal/ads/ect;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    const-string/jumbo v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->i:Lcom/google/android/gms/internal/ads/apx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apx;->a()V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->af:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->h:Lcom/google/android/gms/internal/ads/cme;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/avq;->a:Lcom/google/android/gms/internal/ads/chd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/cme;->a(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-nez v0, :cond_3

    move v0, v1

    .line 33
    :goto_1
    return v0

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/avq;->j:Z

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->e:Lcom/google/android/gms/internal/ads/aud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aud;->a()V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->f:Lcom/google/android/gms/internal/ads/awx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/avq;->c:Landroid/content/Context;

    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/awx;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbxy; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/avq;->j:Z

    move v0, v2

    .line 33
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/avq;->i:Lcom/google/android/gms/internal/ads/apx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/apx;->a(Lcom/google/android/gms/internal/ads/zzbxy;)V

    move v0, v1

    .line 31
    goto :goto_1
.end method

.method public final finalize()V
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avq;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/act;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dz:Lcom/google/android/gms/internal/ads/ect;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/avq;->j:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/avt;->a(Lcom/google/android/gms/internal/ads/act;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    return-void

    .line 41
    :cond_1
    if-eqz v0, :cond_0

    .line 42
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    throw v0
.end method
