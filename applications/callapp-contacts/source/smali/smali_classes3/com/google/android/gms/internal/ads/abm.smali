.class final synthetic Lcom/google/android/gms/internal/ads/abm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbcv;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abm;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iput p2, p0, Lcom/google/android/gms/internal/ads/abm;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/abm;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abm;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iget v1, p0, Lcom/google/android/gms/internal/ads/abm;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/abm;->c:I

    .line 1303
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    if-eqz v3, :cond_0

    .line 1304
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->d:Lcom/google/android/gms/internal/ads/aak;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aak;->a(II)V

    :cond_0
    return-void
.end method
