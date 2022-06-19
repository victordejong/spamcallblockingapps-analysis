.class final Lcom/google/android/gms/internal/ads/cfz;
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
        "Lcom/google/android/gms/internal/ads/bdr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bto;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cgd;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cfy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cfy;Lcom/google/android/gms/internal/ads/bto;Lcom/google/android/gms/internal/ads/cgd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cfz;->a:Lcom/google/android/gms/internal/ads/bto;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cfz;->b:Lcom/google/android/gms/internal/ads/cgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/bdr;

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfz;->a:Lcom/google/android/gms/internal/ads/bto;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bto;->a(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfy;->a(Lcom/google/android/gms/internal/ads/cfy;)Lcom/google/android/gms/internal/ads/cfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/a;->k_()V

    .line 23
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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfy;->b(Lcom/google/android/gms/internal/ads/cfy;)Lcom/google/android/gms/internal/ads/cev;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cev;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bdu;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdu;->b()Lcom/google/android/gms/internal/ads/apt;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/apt;->a(I)V

    .line 16
    :goto_0
    const-string/jumbo v0, "RewardedAdLoader.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chp;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfz;->a:Lcom/google/android/gms/internal/ads/bto;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bto;->a()V

    .line 18
    monitor-exit v1

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfy;->a(Lcom/google/android/gms/internal/ads/cfy;)Lcom/google/android/gms/internal/ads/cfa;

    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cfa;->a(I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfz;->c:Lcom/google/android/gms/internal/ads/cfy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfz;->b:Lcom/google/android/gms/internal/ads/cgd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cfy;->a(Lcom/google/android/gms/internal/ads/cfy;Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bdx;->a()Lcom/google/android/gms/internal/ads/bdu;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdu;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ang;->c()Lcom/google/android/gms/internal/ads/ass;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ass;->i_()V

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
