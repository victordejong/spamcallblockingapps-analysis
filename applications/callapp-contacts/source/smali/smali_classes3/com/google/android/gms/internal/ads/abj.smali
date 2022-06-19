.class final synthetic Lcom/google/android/gms/internal/ads/abj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbcv;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abj;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abj;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abj;->b:Ljava/lang/String;

    .line 1293
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    if-eqz v2, :cond_0

    .line 1294
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    const-string v2, "ExoPlayerAdapter exception"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/aak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
