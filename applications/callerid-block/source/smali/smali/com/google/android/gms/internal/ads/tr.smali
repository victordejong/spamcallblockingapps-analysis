.class final synthetic Lcom/google/android/gms/internal/ads/tr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/xq2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xq2;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xq2;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tr;->a:Lcom/google/android/gms/internal/ads/xq2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tr;->b:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/yq2;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr;->a:Lcom/google/android/gms/internal/ads/xq2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tr;->b:[B

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xq2;->zza()Lcom/google/android/gms/internal/ads/yq2;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/wq2;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/wq2;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zr;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zr;-><init>(Lcom/google/android/gms/internal/ads/yq2;ILcom/google/android/gms/internal/ads/yq2;)V

    return-object v3
.end method
