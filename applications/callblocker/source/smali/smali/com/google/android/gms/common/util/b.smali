.class public final Lcom/google/android/gms/common/util/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# direct methods
.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    .line 2
    if-eqz p0, :cond_1

    array-length v0, p0

    :goto_0
    move v2, v1

    .line 3
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 8
    :goto_2
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 2
    goto :goto_0

    .line 6
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static varargs a([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    array-length v0, p0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 77
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 78
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 81
    aget-object v0, p0, v1

    array-length v2, v0

    .line 82
    const/4 v0, 0x1

    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 83
    aget-object v4, p0, v0

    .line 84
    array-length v5, v4

    invoke-static {v4, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v4, v4

    add-int/2addr v2, v4

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 87
    goto :goto_0
.end method
