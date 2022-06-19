.class final Lcom/google/android/gms/internal/measurement/eg;
.super Lcom/google/android/gms/internal/measurement/cn;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ej;
.implements Lcom/google/android/gms/internal/measurement/ga;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/cn",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/ej;",
        "Lcom/google/android/gms/internal/measurement/ga;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/eg;


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/measurement/eg;

    new-array v1, v2, [I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/eg;-><init>([II)V

    .line 131
    sput-object v0, Lcom/google/android/gms/internal/measurement/eg;->a:Lcom/google/android/gms/internal/measurement/eg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cn;->b()V

    .line 132
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 2
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/eg;-><init>([II)V

    .line 3
    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cn;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    .line 7
    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/measurement/eg;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/eg;->a:Lcom/google/android/gms/internal/measurement/eg;

    return-object v0
.end method

.method private final e(I)V
    .locals 2

    .prologue
    .line 83
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-lt p1, v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    return-void
.end method

.method private final f(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

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
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->b(I)Lcom/google/android/gms/internal/measurement/ej;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 106
    check-cast p2, Ljava/lang/Integer;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 109
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-le p1, v1, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aput v0, v1, p1

    .line 119
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    .line 120
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    .line 121
    return-void

    .line 113
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 114
    new-array v1, v1, [I

    .line 115
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    goto :goto_0
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    .line 124
    const/4 v0, 0x1

    .line 125
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/eg;

    if-nez v1, :cond_1

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/cn;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/eg;

    .line 62
    iget v1, p1, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-eqz v1, :cond_0

    .line 64
    const v1, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int/2addr v1, v2

    .line 65
    iget v2, p1, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-ge v1, v2, :cond_2

    .line 66
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 67
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/eg;->c:I

    add-int/2addr v1, v2

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    .line 70
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    iget v5, p1, Lcom/google/android/gms/internal/measurement/eg;->c:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/ej;
    .locals 3

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-ge p1, v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/eg;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/eg;-><init>([II)V

    return-object v0
.end method

.method public final c(I)I
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->e(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->indexOf(Ljava/lang/Object;)I

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

.method public final d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 52
    new-array v0, v0, [I

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    aput p1, v0, v1

    .line 56
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

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
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/eg;

    if-nez v0, :cond_2

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/cn;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 19
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/eg;

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-ne v0, v3, :cond_0

    .line 22
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    move v0, v1

    .line 23
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-ge v0, v4, :cond_3

    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v4, v4, v0

    aget v5, v3, v0

    if-ne v4, v5, :cond_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 27
    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-ge v0, v2, :cond_0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 38
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/eg;->size()I

    move-result v3

    .line 42
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 43
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v4, v4, v1

    if-ne v4, v2, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->e(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v0, v0, p1

    .line 100
    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    .line 103
    iget v1, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    move v0, v1

    .line 75
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    if-ge v0, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    .line 80
    const/4 v1, 0x1

    .line 82
    :cond_0
    return v1

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeRange(II)V
    .locals 3

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 9
    if-ge p2, p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/eg;->modCount:I

    .line 14
    return-void
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 87
    check-cast p2, Ljava/lang/Integer;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cn;->q_()V

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/eg;->e(I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aget v1, v1, p1

    .line 92
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/eg;->b:[I

    aput v0, v2, p1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/measurement/eg;->c:I

    return v0
.end method
