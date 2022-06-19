.class public final Lcom/google/android/gms/internal/ads/i6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/j9;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/j9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i6;->a:Lcom/google/android/gms/internal/ads/j9;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/i6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/i6;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:Lcom/google/android/gms/internal/ads/j9;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/i6;->a:Lcom/google/android/gms/internal/ads/j9;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/j9;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:Lcom/google/android/gms/internal/ads/j9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j9;->hashCode()I

    move-result v0

    return v0
.end method
