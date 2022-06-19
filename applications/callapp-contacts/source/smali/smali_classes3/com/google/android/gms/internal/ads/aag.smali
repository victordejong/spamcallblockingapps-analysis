.class final Lcom/google/android/gms/internal/ads/aag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aag;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iput p2, p0, Lcom/google/android/gms/internal/ads/aag;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/aag;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->a(Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/aak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aag;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->a(Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/aak;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/aag;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/aag;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/aak;->a(II)V

    :cond_0
    return-void
.end method
