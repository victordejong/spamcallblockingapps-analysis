.class final synthetic Lcom/google/android/gms/internal/ads/gn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y6;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/y6;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/y6;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gn0;->a:Lcom/google/android/gms/internal/ads/y6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gn0;->b:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/w7;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gn0;->a:Lcom/google/android/gms/internal/ads/y6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gn0;->b:[B

    sget v2, Lcom/google/android/gms/internal/ads/mn0;->f:I

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/y6;->zza()Lcom/google/android/gms/internal/ads/w7;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/pn3;

    .line 3
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/pn3;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/an0;

    .line 4
    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/an0;-><init>(Lcom/google/android/gms/internal/ads/w7;ILcom/google/android/gms/internal/ads/w7;)V

    return-object v3
.end method
