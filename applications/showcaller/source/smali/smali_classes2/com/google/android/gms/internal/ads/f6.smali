.class public final Lcom/google/android/gms/internal/ads/f6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/h9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/h9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h9;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Lcom/google/android/gms/internal/ads/h9;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/f6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/h9;->a(I)Lcom/google/android/gms/internal/ads/h9;

    return-object p0
.end method

.method public final b(IZ)Lcom/google/android/gms/internal/ads/f6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Lcom/google/android/gms/internal/ads/h9;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/h9;->a(I)Lcom/google/android/gms/internal/ads/h9;

    :cond_0
    return-object p0
.end method

.method public final varargs c([I)Lcom/google/android/gms/internal/ads/f6;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Lcom/google/android/gms/internal/ads/h9;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/h9;->a(I)Lcom/google/android/gms/internal/ads/h9;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/g6;)Lcom/google/android/gms/internal/ads/f6;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Lcom/google/android/gms/internal/ads/h9;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/g6;->a(Lcom/google/android/gms/internal/ads/g6;)Lcom/google/android/gms/internal/ads/j9;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j9;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/j9;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/h9;->a(I)Lcom/google/android/gms/internal/ads/h9;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/g6;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/g6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f6;->a:Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/h9;->b()Lcom/google/android/gms/internal/ads/j9;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/g6;-><init>(Lcom/google/android/gms/internal/ads/j9;Lcom/google/android/gms/internal/ads/k6;)V

    return-object v0
.end method
