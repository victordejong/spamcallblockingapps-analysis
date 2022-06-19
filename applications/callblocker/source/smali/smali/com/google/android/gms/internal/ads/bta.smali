.class final Lcom/google/android/gms/internal/ads/bta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/alh;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bsx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bsx;Lcom/google/android/gms/internal/ads/alh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bta;->a:Lcom/google/android/gms/internal/ads/alh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/akk;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/bsx;->a(Lcom/google/android/gms/internal/ads/bsx;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bsx;->a(Lcom/google/android/gms/internal/ads/bsx;)Lcom/google/android/gms/internal/ads/akk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bsx;->a(Lcom/google/android/gms/internal/ads/bsx;)Lcom/google/android/gms/internal/ads/akk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->k()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/bsx;->a(Lcom/google/android/gms/internal/ads/bsx;Lcom/google/android/gms/internal/ads/akk;)Lcom/google/android/gms/internal/ads/akk;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bsx;->b(Lcom/google/android/gms/internal/ads/bsx;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 19
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bsx;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already has a parent view. Removing its old parent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bsx;->b(Lcom/google/android/gms/internal/ads/bsx;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amh;->g_()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bsx;->c(Lcom/google/android/gms/internal/ads/bsx;)Lcom/google/android/gms/internal/ads/arz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/akk;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/arz;->a(I)V

    .line 27
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/bsx;->a(Lcom/google/android/gms/internal/ads/bsx;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->a:Lcom/google/android/gms/internal/ads/alh;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alh;->a()Lcom/google/android/gms/internal/ads/apt;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/apt;->a(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bta;->b:Lcom/google/android/gms/internal/ads/bsx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bsx;->c(Lcom/google/android/gms/internal/ads/bsx;)Lcom/google/android/gms/internal/ads/arz;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/arz;->a(I)V

    .line 8
    const-string/jumbo v0, "BannerAdManagerShim.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chp;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
