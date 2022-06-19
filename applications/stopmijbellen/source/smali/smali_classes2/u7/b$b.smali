.class public Lu7/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lu7/b;


# direct methods
.method public constructor <init>(Lu7/b;Lu7/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu7/b$b;->d:Lu7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p2, p1, Lu7/b;->b:I

    .line 3
    iput p2, p0, Lu7/b$b;->a:I

    .line 4
    iget p1, p1, Lu7/b;->c:I

    .line 5
    iput p1, p0, Lu7/b$b;->b:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lu7/b$b;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lu7/b$b;->a:I

    iget v1, p0, Lu7/b$b;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lu7/b$b;->a:I

    iget v1, p0, Lu7/b$b;->b:I

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lu7/b$b;->d:Lu7/b;

    .line 3
    iget-object v3, v2, Lu7/b;->a:[Ljava/lang/Object;

    .line 4
    aget-object v4, v3, v0

    .line 5
    iget v2, v2, Lu7/b;->c:I

    if-ne v2, v1, :cond_0

    if-eqz v4, :cond_0

    .line 6
    iput v0, p0, Lu7/b$b;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 7
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lu7/b$b;->a:I

    return-object v4

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget v0, p0, Lu7/b$b;->c:I

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lu7/b$b;->d:Lu7/b;

    .line 3
    invoke-virtual {v1, v0}, Lu7/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lu7/b$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lu7/b$b;->d:Lu7/b;

    .line 5
    iget-object v2, v1, Lu7/b;->a:[Ljava/lang/Object;

    .line 6
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lu7/b$b;->a:I

    .line 7
    iget v0, v1, Lu7/b;->c:I

    .line 8
    iput v0, p0, Lu7/b$b;->b:I

    :cond_0
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lu7/b$b;->c:I

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
