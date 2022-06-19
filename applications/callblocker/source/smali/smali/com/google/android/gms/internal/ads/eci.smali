.class public final Lcom/google/android/gms/internal/ads/eci;
.super Lcom/google/android/gms/internal/ads/eat;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/l;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eat;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eci;->a:Lcom/google/android/gms/ads/l;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dyf;)V
    .locals 4

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eci;->a:Lcom/google/android/gms/ads/l;

    if-eqz v0, :cond_0

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/dyf;->b:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dyf;->c:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dyf;->d:J

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/f;->a(ILjava/lang/String;J)Lcom/google/android/gms/ads/f;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eci;->a:Lcom/google/android/gms/ads/l;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/l;->a(Lcom/google/android/gms/ads/f;)V

    .line 8
    :cond_0
    return-void
.end method
