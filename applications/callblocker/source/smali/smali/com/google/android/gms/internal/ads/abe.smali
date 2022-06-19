.class final synthetic Lcom/google/android/gms/internal/ads/abe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dro;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dro;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dro;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abe;->a:Lcom/google/android/gms/internal/ads/dro;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abe;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/drp;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abe;->a:Lcom/google/android/gms/internal/ads/dro;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abe;->b:[B

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dro;->a()Lcom/google/android/gms/internal/ads/drp;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/drm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/drm;-><init>([B)V

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/abj;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/abj;-><init>(Lcom/google/android/gms/internal/ads/drp;ILcom/google/android/gms/internal/ads/drp;)V

    .line 5
    return-object v3
.end method
