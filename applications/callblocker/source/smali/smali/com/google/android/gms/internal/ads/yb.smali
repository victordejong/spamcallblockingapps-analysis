.class public Lcom/google/android/gms/internal/ads/yb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 24
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_0
    return-object p0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/yb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/yb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
