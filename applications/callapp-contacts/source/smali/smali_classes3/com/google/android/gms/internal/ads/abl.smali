.class final synthetic Lcom/google/android/gms/internal/ads/abl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abl;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abl;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 1312
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    if-eqz v1, :cond_0

    .line 1313
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aak;->c()V

    :cond_0
    return-void
.end method
