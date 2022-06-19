.class public final Lio/objectbox/query/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/query/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/query/b;

.field private b:I


# direct methods
.method public constructor <init>(Lio/objectbox/query/b;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lio/objectbox/query/b$a;->a:Lio/objectbox/query/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p2, p0, Lio/objectbox/query/b$a;->b:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    .line 98
    iget v0, p0, Lio/objectbox/query/b$a;->b:I

    iget-object v1, p0, Lio/objectbox/query/b$a;->a:Lio/objectbox/query/b;

    iget v1, v1, Lio/objectbox/query/b;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 68
    iget v0, p0, Lio/objectbox/query/b$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 103
    iget v0, p0, Lio/objectbox/query/b$a;->b:I

    iget-object v1, p0, Lio/objectbox/query/b$a;->a:Lio/objectbox/query/b;

    iget v1, v1, Lio/objectbox/query/b;->a:I

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lio/objectbox/query/b$a;->a:Lio/objectbox/query/b;

    iget v1, p0, Lio/objectbox/query/b$a;->b:I

    invoke-virtual {v0, v1}, Lio/objectbox/query/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v1, p0, Lio/objectbox/query/b$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/objectbox/query/b$a;->b:I

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 73
    iget v0, p0, Lio/objectbox/query/b$a;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 79
    iget v0, p0, Lio/objectbox/query/b$a;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 82
    iput v0, p0, Lio/objectbox/query/b$a;->b:I

    .line 83
    iget-object v1, p0, Lio/objectbox/query/b$a;->a:Lio/objectbox/query/b;

    invoke-virtual {v1, v0}, Lio/objectbox/query/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 88
    iget v0, p0, Lio/objectbox/query/b$a;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
