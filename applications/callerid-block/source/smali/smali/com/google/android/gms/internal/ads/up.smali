.class final Lcom/google/android/gms/internal/ads/up;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzbcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/up;->d:Lcom/google/android/gms/internal/ads/zzbcw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/up;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/up;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/up;->d:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/up;->d:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/up;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aq;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
