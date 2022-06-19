.class public final Lcom/google/android/gms/measurement/internal/hm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# direct methods
.method public static a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    array-length v0, p1

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    .line 25
    :goto_0
    if-ge v2, v3, :cond_3

    .line 26
    aget-object v0, p1, v2

    .line 27
    if-nez p0, :cond_0

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 32
    :goto_1
    if-eqz v0, :cond_2

    .line 33
    aget-object v0, p2, v2

    .line 35
    :goto_2
    return-object v0

    .line 29
    :cond_0
    if-nez p0, :cond_1

    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 34
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 35
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
