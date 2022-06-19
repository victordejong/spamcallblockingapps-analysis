.class abstract Lcom/google/android/gms/internal/ads/rs3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/yr3;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/yr3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rs3;->a:Lcom/google/android/gms/internal/ads/yr3;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/la;)Z
.end method

.method protected abstract b(Lcom/google/android/gms/internal/ads/la;J)Z
.end method

.method public final c(Lcom/google/android/gms/internal/ads/la;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/rs3;->a(Lcom/google/android/gms/internal/ads/la;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/rs3;->b(Lcom/google/android/gms/internal/ads/la;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
