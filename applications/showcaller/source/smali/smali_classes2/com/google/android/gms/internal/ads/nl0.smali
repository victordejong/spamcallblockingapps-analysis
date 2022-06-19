.class final synthetic Lcom/google/android/gms/internal/ads/nl0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ph;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ph;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ph;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl0;->a:Lcom/google/android/gms/internal/ads/ph;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nl0;->b:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/qh;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl0;->a:Lcom/google/android/gms/internal/ads/ph;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nl0;->b:[B

    sget v2, Lcom/google/android/gms/internal/ads/rl0;->f:I

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ph;->zza()Lcom/google/android/gms/internal/ads/qh;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/oh;

    .line 3
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/oh;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/sl0;

    .line 4
    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/sl0;-><init>(Lcom/google/android/gms/internal/ads/qh;ILcom/google/android/gms/internal/ads/qh;)V

    return-object v3
.end method
