.class public final Lcom/esotericsoftware/kryo/c/j$a;
.super Lcom/esotericsoftware/kryo/c/j$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/c/j$c<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/c/j$b<",
        "TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/esotericsoftware/kryo/c/j$b<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final f:Lcom/esotericsoftware/kryo/c/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/j$b<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c/j;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/j$c;-><init>(Lcom/esotericsoftware/kryo/c/j;)V

    .line 536
    new-instance p1, Lcom/esotericsoftware/kryo/c/j$b;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/c/j$b;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/j$a;->f:Lcom/esotericsoftware/kryo/c/j$b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 535
    invoke-super {p0}, Lcom/esotericsoftware/kryo/c/j$c;->a()V

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 560
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->e:Z

    if-eqz v0, :cond_0

    .line 561
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->a:Z

    return v0

    .line 560
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/esotericsoftware/kryo/c/j$b<",
            "TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 1544
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->a:Z

    if-eqz v0, :cond_2

    .line 1545
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->e:Z

    if-eqz v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 1547
    iget v1, p0, Lcom/esotericsoftware/kryo/c/j$a;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->f:Lcom/esotericsoftware/kryo/c/j$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/esotericsoftware/kryo/c/j$b;->a:I

    .line 1549
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->f:Lcom/esotericsoftware/kryo/c/j$b;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j$a;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    iput-object v1, v0, Lcom/esotericsoftware/kryo/c/j$b;->b:Ljava/lang/Object;

    goto :goto_0

    .line 1551
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j$a;->f:Lcom/esotericsoftware/kryo/c/j$b;

    iget v2, p0, Lcom/esotericsoftware/kryo/c/j$a;->c:I

    aget v0, v0, v2

    iput v0, v1, Lcom/esotericsoftware/kryo/c/j$b;->a:I

    .line 1552
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->f:Lcom/esotericsoftware/kryo/c/j$b;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j$a;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/esotericsoftware/kryo/c/j$a;->c:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/esotericsoftware/kryo/c/j$b;->b:Ljava/lang/Object;

    .line 1554
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->c:I

    iput v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->d:I

    .line 1555
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/j$a;->b()V

    .line 1556
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$a;->f:Lcom/esotericsoftware/kryo/c/j$b;

    return-object v0

    .line 1545
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1544
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    .line 535
    invoke-super {p0}, Lcom/esotericsoftware/kryo/c/j$c;->remove()V

    return-void
.end method
