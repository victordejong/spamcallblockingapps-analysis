.class final Lcom/google/android/gms/internal/ads/tp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tp;->b:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp;->b:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp;->b:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->a()V

    :cond_0
    return-void
.end method
