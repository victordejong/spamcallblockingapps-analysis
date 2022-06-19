.class final synthetic Lcom/google/android/gms/internal/ads/bxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bxy;

.field private final b:Lcom/google/android/gms/internal/ads/bk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxy;Lcom/google/android/gms/internal/ads/bk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxx;->a:Lcom/google/android/gms/internal/ads/bxy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxx;->b:Lcom/google/android/gms/internal/ads/bk;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxx;->a:Lcom/google/android/gms/internal/ads/bxy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bxx;->b:Lcom/google/android/gms/internal/ads/bk;

    .line 1020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bxy;->a:Lcom/google/android/gms/internal/ads/bn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bn;->a(Lcom/google/android/gms/internal/ads/bm;)V

    return-void
.end method
