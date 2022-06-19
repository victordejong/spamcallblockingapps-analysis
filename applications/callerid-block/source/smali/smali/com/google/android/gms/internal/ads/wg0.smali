.class public final Lcom/google/android/gms/internal/ads/wg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/s70;
.implements Lcom/google/android/gms/internal/ads/fe0;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/em;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/wm;

.field private final e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/zzuq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/em;Landroid/content/Context;Lcom/google/android/gms/internal/ads/wm;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg0;->b:Lcom/google/android/gms/internal/ads/em;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wg0;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wg0;->d:Lcom/google/android/gms/internal/ads/wm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wg0;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/wg0;->g:Lcom/google/android/gms/internal/ads/zzuq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg0;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg0;->d:Lcom/google/android/gms/internal/ads/wm;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wg0;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/wm;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->b:Lcom/google/android/gms/internal/ads/em;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/em;->a(Z)V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->b:Lcom/google/android/gms/internal/ads/em;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/em;->a(Z)V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->d:Lcom/google/android/gms/internal/ads/wm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg0;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wm;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg0;->g:Lcom/google/android/gms/internal/ads/zzuq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzuq;->i:Lcom/google/android/gms/internal/ads/zzuq;

    if-ne v1, v2, :cond_0

    const-string v1, "/Rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "/Interstitial"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->f:Ljava/lang/String;

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wg0;->d:Lcom/google/android/gms/internal/ads/wm;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/wg0;->c:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/wm;->g(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->d:Lcom/google/android/gms/internal/ads/wm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg0;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wm;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wg0;->b:Lcom/google/android/gms/internal/ads/em;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/em;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zj;->c()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/wm;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 0

    return-void
.end method
