.class final Lcom/google/android/gms/internal/ads/dge;
.super Lcom/google/android/gms/internal/ads/dgf;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dgf;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I[BII)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v9, -0x20

    const/16 v8, -0x60

    const/4 v1, -0x1

    const/16 v7, -0x41

    .line 2
    if-eqz p1, :cond_f

    .line 3
    if-lt p3, p4, :cond_1

    .line 51
    :cond_0
    :goto_0
    return p1

    .line 5
    :cond_1
    int-to-byte v6, p1

    .line 6
    if-ge v6, v9, :cond_3

    .line 7
    const/16 v0, -0x3e

    if-lt v6, v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    aget-byte v3, p2, p3

    if-le v3, v7, :cond_e

    :cond_2
    move p1, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_3
    const/16 v0, -0x10

    if-ge v6, v0, :cond_9

    .line 10
    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    add-int/lit8 v3, p3, 0x1

    aget-byte v0, p2, p3

    .line 13
    if-lt v3, p4, :cond_5

    .line 14
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/dgd;->a(II)I

    move-result p1

    goto :goto_0

    :cond_4
    move v3, p3

    .line 15
    :cond_5
    if-gt v0, v7, :cond_8

    if-ne v6, v9, :cond_6

    if-lt v0, v8, :cond_8

    :cond_6
    const/16 v4, -0x13

    if-ne v6, v4, :cond_7

    if-ge v0, v8, :cond_8

    :cond_7
    add-int/lit8 p3, v3, 0x1

    aget-byte v0, p2, v3

    if-le v0, v7, :cond_f

    :cond_8
    move p1, v1

    .line 16
    goto :goto_0

    .line 18
    :cond_9
    shr-int/lit8 v0, p1, 0x8

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v3, v0

    .line 20
    if-nez v3, :cond_a

    .line 21
    add-int/lit8 v4, p3, 0x1

    aget-byte v3, p2, p3

    .line 22
    if-lt v4, p4, :cond_1d

    .line 23
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/dgd;->a(II)I

    move-result p1

    goto :goto_0

    .line 24
    :cond_a
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    move v5, v3

    move v4, p3

    .line 25
    :goto_1
    if-nez v0, :cond_b

    .line 26
    add-int/lit8 v3, v4, 0x1

    aget-byte v0, p2, v4

    .line 27
    if-lt v3, p4, :cond_c

    .line 28
    invoke-static {v6, v5, v0}, Lcom/google/android/gms/internal/ads/dgd;->a(III)I

    move-result p1

    goto :goto_0

    :cond_b
    move v3, v4

    .line 29
    :cond_c
    if-gt v5, v7, :cond_d

    shl-int/lit8 v4, v6, 0x1c

    add-int/lit8 v5, v5, 0x70

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_d

    if-gt v0, v7, :cond_d

    add-int/lit8 p3, v3, 0x1

    aget-byte v0, p2, v3

    if-le v0, v7, :cond_f

    :cond_d
    move p1, v1

    .line 30
    goto :goto_0

    :cond_e
    move p3, v0

    :cond_f
    move v0, p3

    .line 32
    :goto_2
    if-ge v0, p4, :cond_10

    aget-byte v3, p2, v0

    if-ltz v3, :cond_10

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34
    :cond_10
    if-lt v0, p4, :cond_12

    move p1, v2

    goto/16 :goto_0

    :cond_11
    move v0, v3

    .line 35
    :cond_12
    if-lt v0, p4, :cond_13

    move p1, v2

    .line 36
    goto/16 :goto_0

    .line 37
    :cond_13
    add-int/lit8 v3, v0, 0x1

    aget-byte p1, p2, v0

    if-gez p1, :cond_11

    .line 38
    if-ge p1, v9, :cond_15

    .line 39
    if-ge v3, p4, :cond_0

    .line 41
    const/16 v0, -0x3e

    if-lt p1, v0, :cond_14

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-le v3, v7, :cond_12

    :cond_14
    move p1, v1

    .line 42
    goto/16 :goto_0

    .line 43
    :cond_15
    const/16 v0, -0x10

    if-ge p1, v0, :cond_1a

    .line 44
    add-int/lit8 v0, p4, -0x1

    if-lt v3, v0, :cond_16

    .line 45
    invoke-static {p2, v3, p4}, Lcom/google/android/gms/internal/ads/dgd;->c([BII)I

    move-result p1

    goto/16 :goto_0

    .line 46
    :cond_16
    add-int/lit8 v4, v3, 0x1

    aget-byte v0, p2, v3

    if-gt v0, v7, :cond_19

    if-ne p1, v9, :cond_17

    if-lt v0, v8, :cond_19

    :cond_17
    const/16 v3, -0x13

    if-ne p1, v3, :cond_18

    if-ge v0, v8, :cond_19

    :cond_18
    add-int/lit8 v0, v4, 0x1

    aget-byte v3, p2, v4

    if-le v3, v7, :cond_12

    :cond_19
    move p1, v1

    .line 47
    goto/16 :goto_0

    .line 48
    :cond_1a
    add-int/lit8 v0, p4, -0x2

    if-lt v3, v0, :cond_1b

    .line 49
    invoke-static {p2, v3, p4}, Lcom/google/android/gms/internal/ads/dgd;->c([BII)I

    move-result p1

    goto/16 :goto_0

    .line 50
    :cond_1b
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-gt v3, v7, :cond_1c

    shl-int/lit8 v4, p1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_1c

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    if-gt v0, v7, :cond_1c

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-le v3, v7, :cond_12

    :cond_1c
    move p1, v1

    .line 51
    goto/16 :goto_0

    :cond_1d
    move v0, v2

    move v5, v3

    goto/16 :goto_1
.end method

.method final a(Ljava/lang/CharSequence;[BII)I
    .locals 10

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const/16 v7, 0x80

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 92
    const/4 v0, 0x0

    .line 93
    add-int v4, p3, p4

    .line 94
    :goto_0
    if-ge v0, v3, :cond_0

    add-int v1, v0, p3

    if-ge v1, v4, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_0

    .line 95
    add-int v2, p3, v0

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    if-ne v0, v3, :cond_1

    .line 98
    add-int v0, p3, v3

    .line 125
    :goto_1
    return v0

    .line 99
    :cond_1
    add-int v2, p3, v0

    .line 100
    :goto_2
    if-ge v0, v3, :cond_b

    .line 101
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 102
    if-ge v5, v7, :cond_2

    if-ge v2, v4, :cond_2

    .line 103
    add-int/lit8 v1, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    .line 124
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2

    .line 104
    :cond_2
    const/16 v1, 0x800

    if-ge v5, v1, :cond_3

    add-int/lit8 v1, v4, -0x2

    if-gt v2, v1, :cond_3

    .line 105
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    or-int/lit16 v1, v1, 0x3c0

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 106
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v6

    goto :goto_3

    .line 107
    :cond_3
    if-lt v5, v8, :cond_4

    if-ge v9, v5, :cond_5

    :cond_4
    add-int/lit8 v1, v4, -0x3

    if-gt v2, v1, :cond_5

    .line 108
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 109
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 110
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    goto :goto_3

    .line 111
    :cond_5
    add-int/lit8 v1, v4, -0x4

    if-gt v2, v1, :cond_8

    .line 112
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v1, v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-nez v6, :cond_7

    .line 113
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/dgh;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/dgh;-><init>(II)V

    throw v1

    .line 114
    :cond_7
    invoke-static {v5, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 115
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 116
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 117
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 118
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v6

    goto/16 :goto_3

    .line 120
    :cond_8
    if-gt v8, v5, :cond_a

    if-gt v5, v9, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 121
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_9

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-nez v1, :cond_a

    .line 122
    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/dgh;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/dgh;-><init>(II)V

    throw v1

    .line 123
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Failed writing "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v2

    .line 125
    goto/16 :goto_1
.end method

.method final a([BII)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 53
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "buffer length=%d, index=%d, size=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    add-int v8, p2, p3

    .line 58
    new-array v4, p3, [C

    move v5, v7

    move v1, p2

    .line 60
    :goto_0
    if-ge v1, v8, :cond_9

    .line 61
    aget-byte v2, p1, v1

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dgc;->a(B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    add-int/lit8 v0, v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(B[CI)V

    move v5, v0

    .line 65
    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p1, v1

    add-int/lit8 v1, v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(BB[CI)V

    move v5, v1

    .line 66
    :goto_1
    if-ge v2, v8, :cond_8

    .line 67
    add-int/lit8 v1, v2, 0x1

    aget-byte v0, p1, v2

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dgc;->a(B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(B[CI)V

    move v0, v2

    .line 70
    :goto_2
    if-ge v1, v8, :cond_7

    .line 71
    aget-byte v3, p1, v1

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dgc;->a(B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    add-int/lit8 v2, v0, 0x1

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/dgc;->a(B[CI)V

    move v0, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dgc;->b(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    if-lt v1, v8, :cond_1

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 80
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dgc;->c(B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    add-int/lit8 v2, v8, -0x1

    if-lt v1, v2, :cond_4

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 83
    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v6, p1, v1

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v1, v5, 0x1

    invoke-static {v0, v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgc;->a(BBB[CI)V

    move v5, v1

    goto :goto_1

    .line 84
    :cond_5
    add-int/lit8 v2, v8, -0x2

    if-lt v1, v2, :cond_6

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 86
    :cond_6
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v9, v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dgc;->a(BBBB[CI)V

    .line 87
    add-int/lit8 v0, v9, 0x1

    move v1, v6

    :cond_7
    move v5, v0

    move v2, v1

    .line 88
    goto :goto_1

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v7, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_9
    move v2, v1

    goto :goto_1
.end method
