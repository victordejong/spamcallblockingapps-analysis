.class final synthetic Lcom/google/android/gms/internal/ads/cue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cua;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cue;->a:Lcom/google/android/gms/internal/ads/cua;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cue;->a:Lcom/google/android/gms/internal/ads/cua;

    .line 1029
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cua;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1030
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cua;->a:Lcom/google/android/gms/internal/ads/cty;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cua;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ctz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    goto :goto_0

    :cond_0
    return-void
.end method
