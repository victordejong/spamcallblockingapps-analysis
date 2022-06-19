.class final Lcom/google/android/gms/internal/measurement/ec;
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
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/el",
        "<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/ga;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/ec;


# instance fields
.field private b:[F

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/google/android/gms/internal/measurement/ec;

    new-array v1, v2, [F

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ec;-><init>([FI)V

    .line 132
    sput-object v0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cn;->b()V

    .line 133
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ec;-><init>([FI)V

    .line 2
    return-void
.end method

.method private constructor <init>([FI)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cn;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    .line 6
    return-void
.end method

.method private final b(I)V
    .locals 2

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-lt p1, v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ec;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    return-void
.end method

.method private final c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

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
    .line 120
    .line 121
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-ge p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ec;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ec;-><init>([FI)V

    .line 124
    return-object v0
.end method

.method public final a(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 46
    new-array v0, v0, [F

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    aput p1, v0, v1

    .line 50
    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 100
    check-cast p2, Ljava/lang/Float;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 103
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-le p1, v1, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ec;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aput v0, v1, p1

    .line 113
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    .line 114
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    .line 115
    return-void

    .line 107
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 108
    new-array v1, v1, [F

    .line 109
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    goto :goto_0
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Float;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ec;->a(F)V

    .line 118
    const/4 v0, 0x1

    .line 119
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ec;

    if-nez v1, :cond_1

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/cn;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/ec;

    .line 56
    iget v1, p1, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int/2addr v1, v2

    .line 59
    iget v2, p1, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-ge v1, v2, :cond_2

    .line 60
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 61
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/ec;->c:I

    add-int/2addr v1, v2

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    .line 64
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget v4, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    iget v5, p1, Lcom/google/android/gms/internal/measurement/ec;->c:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ec;->indexOf(Ljava/lang/Object;)I

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
    .locals 6

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
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ec;

    if-nez v0, :cond_2

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/cn;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 18
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/ec;

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-ne v0, v3, :cond_0

    .line 21
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    move v0, v1

    .line 22
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-ge v0, v4, :cond_3

    .line 23
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    aget v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 26
    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ec;->b(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v0, v0, p1

    .line 129
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-ge v0, v2, :cond_0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 32
    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ec;->size()I

    move-result v3

    .line 36
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 37
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v2

    if-nez v4, :cond_2

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ec;->b(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v0, v0, p1

    .line 94
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget v4, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    .line 97
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    move v0, v1

    .line 69
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    if-ge v0, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget v4, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    .line 74
    const/4 v1, 0x1

    .line 76
    :cond_0
    return v1

    .line 75
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->modCount:I

    .line 13
    return-void
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 81
    check-cast p2, Ljava/lang/Float;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ec;->b(I)V

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aget v1, v1, p1

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:[F

    aput v0, v2, p1

    .line 88
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ec;->c:I

    return v0
.end method
