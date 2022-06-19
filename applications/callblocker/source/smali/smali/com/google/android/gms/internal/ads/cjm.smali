.class final Lcom/google/android/gms/internal/ads/cjm;
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
        "Lcom/google/android/gms/internal/ads/ciy",
        "<TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cjh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/ciy;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cjo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cjo;->a(Lcom/google/android/gms/internal/ads/ciy;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->b(Lcom/google/android/gms/internal/ads/cjh;)I

    move-result v0

    sget v2, Lcom/google/android/gms/internal/ads/ciw;->f:I

    if-eq v0, v2, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->d(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cir;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cjh;->c(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cjn;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/cir;->a(Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/ciy;)Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->b(Lcom/google/android/gms/internal/ads/cjh;)I

    move-result v0

    sget v2, Lcom/google/android/gms/internal/ads/ciw;->e:I

    if-ne v0, v2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cjh;->c(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cjn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/cjh;Lcom/google/android/gms/internal/ads/cjn;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    sget v2, Lcom/google/android/gms/internal/ads/ciw;->e:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/cjh;I)I

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->e(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/csa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csa;->b(Ljava/lang/Object;)Z

    .line 15
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
    .locals 2

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cjo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cjo;->a(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/cjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjh;->e(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/csa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csa;->a(Ljava/lang/Throwable;)Z

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
