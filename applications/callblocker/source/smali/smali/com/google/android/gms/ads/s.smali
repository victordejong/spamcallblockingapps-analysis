.class public final Lcom/google/android/gms/ads/s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method public static a(II)Lcom/google/android/gms/ads/e;
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/e;-><init>(II)V

    .line 3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/e;->a(I)V

    .line 5
    return-object v0
.end method

.method public static a(IILjava/lang/String;)Lcom/google/android/gms/ads/e;
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/ads/e;)Z
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/e;->d()Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/google/android/gms/ads/e;)Z
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/e;->e()Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/google/android/gms/ads/e;)I
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/ads/e;->f()I

    move-result v0

    return v0
.end method
