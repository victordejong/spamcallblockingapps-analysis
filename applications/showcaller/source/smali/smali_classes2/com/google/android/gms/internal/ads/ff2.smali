.class final Lcom/google/android/gms/internal/ads/ff2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/p42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/p42<",
        "Lcom/google/android/gms/internal/ads/qw0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/gf2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gf2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/qw0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/gf2;->l:Lcom/google/android/gms/internal/ads/qw0;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xy0;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/gf2;->l:Lcom/google/android/gms/internal/ads/qw0;

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/qw0;->g(Lcom/google/android/gms/internal/ads/el;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gf2;->F6(Lcom/google/android/gms/internal/ads/gf2;)Lcom/google/android/gms/internal/ads/xe2;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/rw0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/gf2;->F6(Lcom/google/android/gms/internal/ads/gf2;)Lcom/google/android/gms/internal/ads/xe2;

    move-result-object v4

    .line 4
    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/rw0;-><init>(Lcom/google/android/gms/internal/ads/qw0;Lcom/google/android/gms/internal/ads/ts;Lcom/google/android/gms/internal/ads/xe2;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xe2;->y(Lcom/google/android/gms/internal/ads/kl;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->a()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ff2;->a:Lcom/google/android/gms/internal/ads/gf2;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/gf2;->l:Lcom/google/android/gms/internal/ads/qw0;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
