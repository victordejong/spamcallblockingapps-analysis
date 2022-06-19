.class final Lcom/google/android/gms/internal/ads/cpq;
.super Lcom/google/android/gms/internal/ads/cpg;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpg",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/cpg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpg",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:Ljava/lang/Object;

.field private final transient c:[Ljava/lang/Object;

.field private final transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/google/android/gms/internal/ads/cpq;

    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cpq;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/cpg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpg;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpq;->b:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cpq;->c:[Ljava/lang/Object;

    .line 67
    iput p3, p0, Lcom/google/android/gms/internal/ads/cpq;->d:I

    .line 68
    return-void
.end method

.method static a(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpq;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/cpq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const v11, 0xffff

    const/4 v0, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x5

    .line 1
    array-length v1, p1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/cor;->b(II)I

    .line 2
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/cpk;->a(I)I

    move-result v1

    .line 4
    add-int/lit8 v3, v1, -0x1

    .line 5
    const/16 v2, 0x80

    if-gt v1, v2, :cond_3

    .line 6
    new-array v1, v1, [B

    .line 7
    invoke-static {v1, v10}, Ljava/util/Arrays;->fill([BB)V

    move v2, v0

    .line 8
    :goto_0
    if-ge v2, v9, :cond_2

    .line 9
    mul-int/lit8 v4, v2, 0x2

    .line 10
    aget-object v5, p1, v4

    .line 11
    xor-int/lit8 v0, v4, 0x1

    aget-object v6, p1, v0

    .line 12
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cow;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v0

    .line 14
    :goto_1
    and-int/2addr v0, v3

    .line 15
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xff

    .line 16
    const/16 v8, 0xff

    if-ne v7, v8, :cond_0

    .line 17
    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 19
    :cond_0
    aget-object v8, p1, v7

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 20
    invoke-static {v5, v6, p1, v7}, Lcom/google/android/gms/internal/ads/cpq;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 21
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 62
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/cpq;

    invoke-direct {v1, v0, p1, v9}, Lcom/google/android/gms/internal/ads/cpq;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1

    .line 24
    :cond_3
    const v2, 0x8000

    if-gt v1, v2, :cond_7

    .line 25
    new-array v1, v1, [S

    .line 26
    invoke-static {v1, v10}, Ljava/util/Arrays;->fill([SS)V

    move v2, v0

    .line 27
    :goto_3
    if-ge v2, v9, :cond_6

    .line 28
    mul-int/lit8 v4, v2, 0x2

    .line 29
    aget-object v5, p1, v4

    .line 30
    xor-int/lit8 v0, v4, 0x1

    aget-object v6, p1, v0

    .line 31
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cow;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v0

    .line 33
    :goto_4
    and-int/2addr v0, v3

    .line 34
    aget-short v7, v1, v0

    and-int/2addr v7, v11

    .line 35
    if-ne v7, v11, :cond_4

    .line 36
    int-to-short v4, v4

    aput-short v4, v1, v0

    .line 41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 38
    :cond_4
    aget-object v8, p1, v7

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 39
    invoke-static {v5, v6, p1, v7}, Lcom/google/android/gms/internal/ads/cpq;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 40
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_7
    new-array v1, v1, [I

    .line 44
    invoke-static {v1, v10}, Ljava/util/Arrays;->fill([II)V

    move v2, v0

    .line 45
    :goto_5
    if-ge v2, v9, :cond_a

    .line 46
    mul-int/lit8 v4, v2, 0x2

    .line 47
    aget-object v5, p1, v4

    .line 48
    xor-int/lit8 v0, v4, 0x1

    aget-object v6, p1, v0

    .line 49
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cow;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v0

    .line 51
    :goto_6
    and-int/2addr v0, v3

    .line 52
    aget v7, v1, v0

    .line 53
    if-ne v7, v10, :cond_8

    .line 54
    aput v4, v1, v0

    .line 59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 56
    :cond_8
    aget-object v8, p1, v7

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 57
    invoke-static {v5, v6, p1, v7}, Lcom/google/android/gms/internal/ads/cpq;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 58
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move-object v0, v1

    .line 60
    goto :goto_2
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 7

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, p3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    xor-int/lit8 v4, p3, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Multiple entries with same key: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/cpk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpk",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/gms/internal/ads/cpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpq;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/cpq;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cpp;-><init>(Lcom/google/android/gms/internal/ads/cpg;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/ads/cpk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpk",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpq;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/cpq;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cpu;-><init>([Ljava/lang/Object;II)V

    .line 114
    new-instance v1, Lcom/google/android/gms/internal/ads/cpr;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/cpr;-><init>(Lcom/google/android/gms/internal/ads/cpg;Lcom/google/android/gms/internal/ads/cpc;)V

    return-object v1
.end method

.method final c()Lcom/google/android/gms/internal/ads/cpb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/gms/internal/ads/cpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpq;->c:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/cpq;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cpu;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    const v7, 0xffff

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpq;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cpq;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cpq;->d:I

    .line 71
    if-nez p1, :cond_0

    move-object v0, v2

    .line 110
    :goto_0
    return-object v0

    .line 73
    :cond_0
    if-ne v1, v4, :cond_2

    .line 74
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    aget-object v0, v3, v4

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-nez v0, :cond_3

    move-object v0, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    instance-of v1, v0, [B

    if-eqz v1, :cond_6

    .line 81
    check-cast v0, [B

    .line 82
    array-length v1, v0

    add-int/lit8 v4, v1, -0x1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v1

    .line 84
    :goto_1
    and-int/2addr v1, v4

    .line 85
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    .line 86
    const/16 v6, 0xff

    if-ne v5, v6, :cond_4

    move-object v0, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 89
    xor-int/lit8 v0, v5, 0x1

    aget-object v0, v3, v0

    goto :goto_0

    .line 90
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_6
    instance-of v1, v0, [S

    if-eqz v1, :cond_9

    .line 92
    check-cast v0, [S

    .line 93
    array-length v1, v0

    add-int/lit8 v4, v1, -0x1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v1

    .line 95
    :goto_2
    and-int/2addr v1, v4

    .line 96
    aget-short v5, v0, v1

    and-int/2addr v5, v7

    .line 97
    if-ne v5, v7, :cond_7

    move-object v0, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_7
    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 100
    xor-int/lit8 v0, v5, 0x1

    aget-object v0, v3, v0

    goto :goto_0

    .line 101
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_9
    check-cast v0, [I

    .line 103
    array-length v1, v0

    add-int/lit8 v4, v1, -0x1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/coy;->a(I)I

    move-result v1

    .line 105
    :goto_3
    and-int/2addr v1, v4

    .line 106
    aget v5, v0, v1

    .line 107
    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    move-object v0, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_a
    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 110
    xor-int/lit8 v0, v5, 0x1

    aget-object v0, v3, v0

    goto/16 :goto_0

    .line 111
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpq;->d:I

    return v0
.end method
