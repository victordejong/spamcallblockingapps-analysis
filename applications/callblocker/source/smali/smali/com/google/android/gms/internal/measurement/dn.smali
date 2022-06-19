.class final Lcom/google/android/gms/internal/measurement/dn;
.super Lcom/google/android/gms/internal/measurement/cn;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/el;
.implements Lcom/google/android/gms/internal/measurement/ga;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/cn",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/el",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/ga;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/dn;


# instance fields
.field private b:[D

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/google/android/gms/internal/measurement/dn;

    new-array v1, v2, [D

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/dn;-><init>([DI)V

    .line 133
    sput-object v0, Lcom/google/android/gms/internal/measurement/dn;->a:Lcom/google/android/gms/internal/measurement/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cn;->b()V

    .line 134
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/dn;-><init>([DI)V

    .line 2
    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cn;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    .line 6
    return-void
.end method

.method private final b(I)V
    .locals 2

    .prologue
    .line 78
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-lt p1, v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/dn;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    return-void
.end method

.method private final c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

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
.method public final synthetic a(I)Lcom/google/android/gms/internal/measurement/el;
    .locals 3

    .prologue
    .line 121
    .line 122
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-ge p1, v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/dn;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/dn;-><init>([DI)V

    .line 125
    return-object v0
.end method

.method public final a(D)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 47
    new-array v0, v0, [D

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget v1, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    aput-wide p1, v0, v1

    .line 51
    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 101
    check-cast p2, Ljava/lang/Double;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 104
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-le p1, v2, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/dn;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 107
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aput-wide v0, v2, p1

    .line 114
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    .line 115
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    .line 116
    return-void

    .line 108
    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 109
    new-array v2, v2, [D

    .line 110
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    invoke-static {v3, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int/2addr v5, p1

    invoke-static {v3, p1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    goto :goto_0
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 117
    check-cast p1, Ljava/lang/Double;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/dn;->a(D)V

    .line 119
    const/4 v0, 0x1

    .line 120
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/dn;

    if-nez v1, :cond_1

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/cn;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/dn;

    .line 57
    iget v1, p1, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-eqz v1, :cond_0

    .line 59
    const v1, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int/2addr v1, v2

    .line 60
    iget v2, p1, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-ge v1, v2, :cond_2

    .line 61
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 62
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/dn;->c:I

    add-int/2addr v1, v2

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    .line 65
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget v4, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    iget v5, p1, Lcom/google/android/gms/internal/measurement/dn;->c:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput v1, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/dn;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 16
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/dn;

    if-nez v0, :cond_2

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/cn;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 18
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/dn;

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-ne v0, v3, :cond_0

    .line 21
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    move v0, v1

    .line 22
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-ge v0, v4, :cond_3

    .line 23
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 26
    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 126
    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/dn;->b(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v0, v0, p1

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-ge v0, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 33
    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/dn;->size()I

    move-result v4

    .line 37
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    .line 38
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v6, v5, v1

    cmpl-double v5, v6, v2

    if-nez v5, :cond_2

    move v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/dn;->b(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v0, v0, p1

    .line 95
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget v5, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    .line 98
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    move v0, v1

    .line 70
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget v4, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    .line 74
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    .line 75
    const/4 v1, 0x1

    .line 77
    :cond_0
    return v1

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeRange(II)V
    .locals 3

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 8
    if-ge p2, p1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    iget v2, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/dn;->modCount:I

    .line 13
    return-void
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 82
    check-cast p2, Ljava/lang/Double;

    .line 83
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/dn;->b(I)V

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aget-wide v2, v2, p1

    .line 87
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/dn;->b:[D

    aput-wide v0, v4, p1

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/measurement/dn;->c:I

    return v0
.end method
