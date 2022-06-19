.class public final Lcom/google/android/gms/internal/ads/ib3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wb3;

.field private final b:Lcom/google/android/gms/internal/ads/wb3;


# direct methods
.method public constructor <init>([B[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wb3;->a([BII)Lcom/google/android/gms/internal/ads/wb3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ib3;->a:Lcom/google/android/gms/internal/ads/wb3;

    array-length p1, p2

    .line 2
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/ads/wb3;->a([BII)Lcom/google/android/gms/internal/ads/wb3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ib3;->b:Lcom/google/android/gms/internal/ads/wb3;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ib3;->a:Lcom/google/android/gms/internal/ads/wb3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb3;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ib3;->b:Lcom/google/android/gms/internal/ads/wb3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb3;->b()[B

    move-result-object v0

    return-object v0
.end method
