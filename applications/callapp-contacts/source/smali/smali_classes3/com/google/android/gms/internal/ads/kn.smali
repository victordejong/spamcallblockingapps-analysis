.class final Lcom/google/android/gms/internal/ads/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/lc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/kz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ju;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kn;->c:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kn;->b:Lcom/google/android/gms/internal/ads/ju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kn;->c:Lcom/google/android/gms/internal/ads/ke;

    .line 1077
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kz;

    .line 2018
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kz;

    .line 3018
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->c:Lcom/google/android/gms/internal/ads/ke;

    const/4 v0, 0x0

    .line 3078
    iput v0, p2, Lcom/google/android/gms/internal/ads/ke;->g:I

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->c:Lcom/google/android/gms/internal/ads/ke;

    .line 3081
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ke;->e:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kn;->b:Lcom/google/android/gms/internal/ads/ju;

    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/internal/util/zzar;->zzg(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kn;->b:Lcom/google/android/gms/internal/ads/ju;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zs;->a(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kn;->c:Lcom/google/android/gms/internal/ads/ke;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/kz;

    .line 4080
    iput-object v0, p2, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    const-string p2, "Successfully loaded JS Engine."

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 12
    monitor-exit p1

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
