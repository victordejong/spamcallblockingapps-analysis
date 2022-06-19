.class public Lu7/b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu7/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient a:[Ljava/lang/Object;

.field public transient b:I

.field public transient c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lu7/b;->b:I

    iget v1, p0, Lu7/b;->c:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    invoke-virtual {p0}, Lu7/b;->size()I

    move-result v3

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v3, v1

    sub-int/2addr v3, v0

    .line 4
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lu7/b;->c:I

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu7/b;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-string v0, "e == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lu7/b;->b:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lu7/b;->b:I

    aput-object p1, v0, v1

    .line 3
    iget p1, p0, Lu7/b;->c:I

    if-ne v1, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lu7/b;->c()V

    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-string v0, "e == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lu7/b;->c:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lu7/b;->c:I

    iget v0, p0, Lu7/b;->b:I

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lu7/b;->c()V

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    iget v3, p0, Lu7/b;->b:I

    .line 4
    iget v4, p0, Lu7/b;->c:I

    sub-int v5, p1, v3

    and-int/2addr v5, v1

    sub-int v6, v4, p1

    and-int/2addr v6, v1

    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    if-gt v3, p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    .line 5
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aget-object p1, v0, v1

    aput-object p1, v0, v7

    add-int/lit8 p1, v3, 0x1

    sub-int v4, v1, v3

    .line 8
    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    .line 9
    aput-object p1, v0, v3

    add-int/2addr v3, v2

    and-int p1, v3, v1

    .line 10
    iput p1, p0, Lu7/b;->b:I

    return v7

    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 11
    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    .line 12
    iput v4, p0, Lu7/b;->c:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v1, p1

    .line 13
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    aget-object p1, v0, v7

    aput-object p1, v0, v1

    .line 15
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    and-int p1, v4, v1

    .line 16
    iput p1, p0, Lu7/b;->c:I

    :goto_1
    return v2

    .line 17
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final c()V
    .locals 6

    .line 1
    iget v0, p0, Lu7/b;->b:I

    .line 2
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    shl-int/lit8 v4, v2, 0x1

    if-ltz v4, :cond_0

    .line 3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 4
    invoke-static {v1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    invoke-static {v1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v4, p0, Lu7/b;->a:[Ljava/lang/Object;

    .line 7
    iput v5, p0, Lu7/b;->b:I

    .line 8
    iput v2, p0, Lu7/b;->c:I

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 5

    .line 1
    iget v0, p0, Lu7/b;->b:I

    .line 2
    iget v1, p0, Lu7/b;->c:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lu7/b;->c:I

    iput v2, p0, Lu7/b;->b:I

    .line 4
    iget-object v2, p0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 5
    :cond_0
    iget-object v3, p0, Lu7/b;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu7/b;

    .line 2
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    iget-object v2, v0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2
    iget v3, p0, Lu7/b;->b:I

    .line 3
    :goto_0
    iget-object v4, p0, Lu7/b;->a:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lu7/b;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget v0, p0, Lu7/b;->b:I

    iget v1, p0, Lu7/b;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu7/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu7/b$b;-><init>(Lu7/b;Lu7/b$a;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu7/b;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu7/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lu7/b;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu7/b;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lu7/b;->b:I

    .line 2
    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lu7/b;->b:I

    return-object v2
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu7/b;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 4
    iget v3, p0, Lu7/b;->b:I

    .line 5
    :goto_0
    iget-object v4, p0, Lu7/b;->a:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Lu7/b;->b(I)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Lu7/b;->c:I

    iget v1, p0, Lu7/b;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lu7/b;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu7/b;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lu7/b;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lu7/b;->size()I

    move-result v0

    .line 3
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 5
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lu7/b;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 8
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method
