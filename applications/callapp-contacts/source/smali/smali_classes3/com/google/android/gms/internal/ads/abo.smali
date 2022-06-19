.class final synthetic Lcom/google/android/gms/internal/ads/abo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbcv;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abo;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iput p2, p0, Lcom/google/android/gms/internal/ads/abo;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abo;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/abo;->b:I

    .line 1297
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    if-eqz v2, :cond_0

    .line 1298
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aak;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method
