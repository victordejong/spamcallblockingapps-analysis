.class public final Lcom/esotericsoftware/kryo/c/h;
.super Lcom/esotericsoftware/kryo/c/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/c/l<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/c/l;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/c/l;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/h<",
            "TK;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/l;-><init>(Lcom/esotericsoftware/kryo/c/l;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/esotericsoftware/kryo/c/h;->f:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method final b(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/h;->b:[Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/h;->a(Ljava/lang/Object;)I

    move-result v1

    .line 69
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    iget v2, p0, Lcom/esotericsoftware/kryo/c/h;->g:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 7

    .line 76
    iget v0, p0, Lcom/esotericsoftware/kryo/c/h;->a:I

    .line 77
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/h;->b:[Ljava/lang/Object;

    .line 78
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/h;->c:[I

    .line 79
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 80
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 81
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
