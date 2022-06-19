.class public Lcom/google/android/gms/common/util/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 27
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/common/util/j;->a:[C

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/common/util/j;->b:[C

    return-void

    .line 27
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 28
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 11
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 13
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 14
    aget-byte v1, p0, v0

    and-int/lit16 v4, v1, 0xff

    .line 15
    add-int/lit8 v5, v2, 0x1

    sget-object v1, Lcom/google/android/gms/common/util/j;->b:[C

    ushr-int/lit8 v6, v4, 0x4

    aget-char v1, v1, v6

    aput-char v1, v3, v2

    .line 16
    add-int/lit8 v1, v5, 0x1

    sget-object v2, Lcom/google/android/gms/common/util/j;->b:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    aput-char v2, v3, v5

    .line 17
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 3
    array-length v1, p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6
    if-eqz p1, :cond_0

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_1

    .line 7
    :cond_0
    sget-object v3, Lcom/google/android/gms/common/util/j;->a:[C

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    sget-object v3, Lcom/google/android/gms/common/util/j;->a:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 20
    rem-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Hex string has odd number of characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 23
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 24
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 25
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 26
    :cond_1
    return-object v2
.end method
