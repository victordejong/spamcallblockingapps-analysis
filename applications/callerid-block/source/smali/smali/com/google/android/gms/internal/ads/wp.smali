.class final Lcom/google/android/gms/internal/ads/wp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzbcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcw;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wp;->d:Lcom/google/android/gms/internal/ads/zzbcw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/wp;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/wp;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wp;->d:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wp;->d:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/wp;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/wp;->c:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aq;->d(II)V

    :cond_0
    return-void
.end method
