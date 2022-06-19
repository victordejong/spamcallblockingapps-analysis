.class final Lcom/google/android/gms/internal/ads/ddu;
.super Lcom/google/android/gms/internal/ads/dbc;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ddf;
.implements Lcom/google/android/gms/internal/ads/det;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dbc",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ddf;",
        "Lcom/google/android/gms/internal/ads/det;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/ddu;


# instance fields
.field private b:[J

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/google/android/gms/internal/ads/ddu;

    new-array v1, v2, [J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ddu;-><init>([JI)V

    .line 121
    sput-object v0, Lcom/google/android/gms/internal/ads/ddu;->a:Lcom/google/android/gms/internal/ads/ddu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbc;->b()V

    .line 122
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 2
    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ddu;-><init>([JI)V

    .line 3
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbc;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    .line 7
    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/ddu;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/ddu;->a:Lcom/google/android/gms/internal/ads/ddu;

    return-object v0
.end method

.method private final d(I)V
    .locals 2

    .prologue
    .line 73
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-lt p1, v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    return-void
.end method

.method private final e(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    const/16 v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Index:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Lcom/google/android/gms/internal/ads/dde;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->b(I)Lcom/google/android/gms/internal/ads/ddf;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 42
    new-array v0, v0, [J

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    aput-wide p1, v0, v1

    .line 46
    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 96
    check-cast p2, Ljava/lang/Long;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    .line 99
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-le p1, v2, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 102
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aput-wide v0, v2, p1

    .line 109
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    .line 110
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    .line 111
    return-void

    .line 103
    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 104
    new-array v2, v2, [J

    .line 105
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    invoke-static {v3, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int/2addr v5, p1

    invoke-static {v3, p1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    goto :goto_0
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 112
    check-cast p1, Ljava/lang/Long;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    .line 114
    const/4 v0, 0x1

    .line 115
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/ddu;

    if-nez v1, :cond_1

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dbc;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/ddu;

    .line 52
    iget v1, p1, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-eqz v1, :cond_0

    .line 54
    const v1, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int/2addr v1, v2

    .line 55
    iget v2, p1, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-ge v1, v2, :cond_2

    .line 56
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 57
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/ddu;->c:I

    add-int/2addr v1, v2

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    .line 60
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    iget v5, p1, Lcom/google/android/gms/internal/ads/ddu;->c:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput v1, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    .line 62
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/ddf;
    .locals 3

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-ge p1, v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ddu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ddu;-><init>([JI)V

    return-object v0
.end method

.method public final c(I)J
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->d(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 27
    :cond_0
    :goto_0
    return v1

    .line 17
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ddu;

    if-nez v0, :cond_2

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dbc;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 19
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/ddu;

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-ne v0, v3, :cond_0

    .line 22
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    move v0, v1

    .line 23
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-ge v0, v4, :cond_3

    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aget-wide v4, v4, v0

    aget-wide v6, v3, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 27
    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->c(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-ge v0, v2, :cond_0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->d(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aget-wide v0, v0, p1

    .line 90
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget v5, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    .line 93
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    move v0, v1

    .line 65
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    if-ge v0, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    .line 69
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    .line 70
    const/4 v1, 0x1

    .line 72
    :cond_0
    return v1

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeRange(II)V
    .locals 3

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    .line 9
    if-ge p2, p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ddu;->modCount:I

    .line 14
    return-void
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 77
    check-cast p2, Ljava/lang/Long;

    .line 78
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbc;->c()V

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ddu;->d(I)V

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aget-wide v2, v2, p1

    .line 82
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ddu;->b:[J

    aput-wide v0, v4, p1

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/ads/ddu;->c:I

    return v0
.end method
