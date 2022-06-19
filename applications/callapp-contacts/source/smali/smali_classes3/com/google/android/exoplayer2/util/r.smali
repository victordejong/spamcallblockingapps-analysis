.class public Lcom/google/android/exoplayer2/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs a([I)Z
    .locals 4

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 68
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/r;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/util/r;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/util/r;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method
