.class final Lcom/google/android/gms/internal/measurement/ja;
.super Lcom/google/android/gms/internal/measurement/iz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/iz;-><init>()V

    return-void
.end method


# virtual methods
.method final b([BII)I
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1
    aget-byte v0, p1, p2

    if-ltz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-lt p2, p3, :cond_1

    goto/16 :goto_3

    :cond_1
    :goto_1
    if-lt p2, p3, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    if-gez p2, :cond_b

    const/16 v3, -0x20

    const/16 v4, -0x41

    if-ge p2, v3, :cond_5

    if-ge v2, p3, :cond_4

    const/16 v3, -0x3e

    if-lt p2, v3, :cond_3

    add-int/lit8 p2, v2, 0x1

    .line 3
    aget-byte v2, p1, v2

    if-le v2, v4, :cond_1

    :cond_3
    :goto_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    move v0, p2

    goto :goto_3

    :cond_5
    const/16 v5, -0x10

    if-ge p2, v5, :cond_9

    add-int/lit8 v5, p3, -0x1

    if-lt v2, v5, :cond_6

    .line 6
    invoke-static {p1, v2, p3}, Lcom/google/android/gms/internal/measurement/jc;->c([BII)I

    move-result v0

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v2, 0x1

    .line 4
    aget-byte v2, p1, v2

    if-gt v2, v4, :cond_3

    const/16 v6, -0x60

    if-ne p2, v3, :cond_7

    if-lt v2, v6, :cond_3

    :cond_7
    const/16 v3, -0x13

    if-ne p2, v3, :cond_8

    if-ge v2, v6, :cond_3

    :cond_8
    add-int/lit8 p2, v5, 0x1

    aget-byte v2, p1, v5

    if-le v2, v4, :cond_1

    goto :goto_2

    :cond_9
    add-int/lit8 v3, p3, -0x2

    if-lt v2, v3, :cond_a

    .line 7
    invoke-static {p1, v2, p3}, Lcom/google/android/gms/internal/measurement/jc;->c([BII)I

    move-result v0

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v2, 0x1

    .line 5
    aget-byte v2, p1, v2

    if-gt v2, v4, :cond_3

    shl-int/lit8 p2, p2, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p2, v2

    shr-int/lit8 p2, p2, 0x1e

    if-nez p2, :cond_3

    add-int/lit8 p2, v3, 0x1

    aget-byte v2, p1, v3

    if-gt v2, v4, :cond_3

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    if-le p2, v4, :cond_b

    goto :goto_2

    :goto_3
    return v0

    :cond_b
    move p2, v2

    goto :goto_1
.end method
