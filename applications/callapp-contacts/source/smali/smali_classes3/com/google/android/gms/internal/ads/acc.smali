.class final synthetic Lcom/google/android/gms/internal/ads/acc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ecd;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ecd;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acc;->a:Lcom/google/android/gms/internal/ads/ecd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acc;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ecb;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acc;->a:Lcom/google/android/gms/internal/ads/ecd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acc;->b:[B

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecd;->a()Lcom/google/android/gms/internal/ads/ecb;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/ecc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ecc;-><init>([B)V

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/ack;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/ack;-><init>(Lcom/google/android/gms/internal/ads/ecb;ILcom/google/android/gms/internal/ads/ecb;)V

    return-object v3
.end method
