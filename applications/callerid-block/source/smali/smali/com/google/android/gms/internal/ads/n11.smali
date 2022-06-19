.class final synthetic Lcom/google/android/gms/internal/ads/n11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/q11;

.field private final b:Lcom/google/android/gms/internal/ads/ml1;

.field private final c:Lcom/google/android/gms/internal/ads/al1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q11;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n11;->a:Lcom/google/android/gms/internal/ads/q11;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n11;->b:Lcom/google/android/gms/internal/ads/ml1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n11;->c:Lcom/google/android/gms/internal/ads/al1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n11;->a:Lcom/google/android/gms/internal/ads/q11;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n11;->b:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n11;->c:Lcom/google/android/gms/internal/ads/al1;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/q11;->c(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;)Lcom/google/android/gms/internal/ads/u10;

    move-result-object v0

    return-object v0
.end method
