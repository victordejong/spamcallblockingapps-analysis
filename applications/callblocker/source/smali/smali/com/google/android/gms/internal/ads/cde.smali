.class final Lcom/google/android/gms/internal/ads/cde;
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
        "Lcom/google/android/gms/internal/ads/ake;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bto;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cdd;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ccy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/bto;Lcom/google/android/gms/internal/ads/cdd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cde;->a:Lcom/google/android/gms/internal/ads/bto;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cde;->b:Lcom/google/android/gms/internal/ads/cdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/gms/internal/ads/ake;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->a:Lcom/google/android/gms/internal/ads/bto;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bto;->a(Ljava/lang/Object;)V

    .line 22
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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/ccy;)Lcom/google/android/gms/internal/ads/cev;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cev;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ajy;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajy;->b()Lcom/google/android/gms/internal/ads/apt;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/apt;->a(I)V

    .line 15
    :goto_0
    const-string/jumbo v0, "AppOpenAdLoader.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chp;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->a:Lcom/google/android/gms/internal/ads/bto;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bto;->a()V

    .line 17
    monitor-exit v1

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ccy;->b(Lcom/google/android/gms/internal/ads/ccy;)Lcom/google/android/gms/internal/ads/cdn;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cdn;->a(I)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/ccy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cde;->b:Lcom/google/android/gms/internal/ads/cdd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ajx;->a()Lcom/google/android/gms/internal/ads/ajy;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajy;->c()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ang;->c()Lcom/google/android/gms/internal/ads/ass;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ass;->i_()V

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
