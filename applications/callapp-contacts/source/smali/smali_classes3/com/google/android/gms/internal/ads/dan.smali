.class final Lcom/google/android/gms/internal/ads/dan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dbt;

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/dbt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dan;->c:Lcom/google/android/gms/internal/ads/dak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dan;->a:Lcom/google/android/gms/internal/ads/dbt;

    iput p3, p0, Lcom/google/android/gms/internal/ads/dan;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dan;->a:Lcom/google/android/gms/internal/ads/dbt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dan;->c:Lcom/google/android/gms/internal/ads/dak;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak;)Lcom/google/android/gms/internal/ads/cyt;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dan;->c:Lcom/google/android/gms/internal/ads/dak;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dag;->cancel(Z)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dan;->c:Lcom/google/android/gms/internal/ads/dak;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dan;->b:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dan;->a:Lcom/google/android/gms/internal/ads/dbt;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dan;->c:Lcom/google/android/gms/internal/ads/dak;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/cyt;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dan;->c:Lcom/google/android/gms/internal/ads/dak;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/cyt;)V

    .line 9
    throw v1
.end method
