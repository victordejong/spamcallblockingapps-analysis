.class public final Lcom/google/android/gms/internal/ads/vc1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y21;
.implements Lcom/google/android/gms/internal/ads/aa1;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/sf0;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/lg0;

.field private final g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/ads/zzazj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sf0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/lg0;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vc1;->d:Lcom/google/android/gms/internal/ads/sf0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vc1;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vc1;->f:Lcom/google/android/gms/internal/ads/lg0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vc1;->g:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vc1;->i:Lcom/google/android/gms/internal/ads/zzazj;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->f:Lcom/google/android/gms/internal/ads/lg0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vc1;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lg0;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vc1;->i:Lcom/google/android/gms/internal/ads/zzazj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzazj;->k:Lcom/google/android/gms/internal/ads/zzazj;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->h:Ljava/lang/String;

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vc1;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vc1;->f:Lcom/google/android/gms/internal/ads/lg0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vc1;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/lg0;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->d:Lcom/google/android/gms/internal/ads/sf0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sf0;->a(Z)V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vc1;->f:Lcom/google/android/gms/internal/ads/lg0;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vc1;->e:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/lg0;->g(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->f:Lcom/google/android/gms/internal/ads/lg0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vc1;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lg0;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vc1;->d:Lcom/google/android/gms/internal/ads/sf0;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sf0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/nd0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/nd0;->c()I

    move-result v5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/lg0;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc1;->d:Lcom/google/android/gms/internal/ads/sf0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sf0;->a(Z)V

    return-void
.end method
