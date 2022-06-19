.class public final Lcom/esotericsoftware/kryo/c/l$a;
.super Lcom/esotericsoftware/kryo/c/l$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/c/l$c<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/c/l$b<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/esotericsoftware/kryo/c/l$b<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/esotericsoftware/kryo/c/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/l$b<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/l<",
            "TK;>;)V"
        }
    .end annotation

    .line 455
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/l$c;-><init>(Lcom/esotericsoftware/kryo/c/l;)V

    .line 452
    new-instance p1, Lcom/esotericsoftware/kryo/c/l$b;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/c/l$b;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/l$a;->a:Lcom/esotericsoftware/kryo/c/l$b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 451
    invoke-super {p0}, Lcom/esotericsoftware/kryo/c/l$c;->a()V

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->f:Z

    if-eqz v0, :cond_0

    .line 472
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->b:Z

    return v0

    .line 471
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 2460
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->b:Z

    if-eqz v0, :cond_1

    .line 2461
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->f:Z

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->c:Lcom/esotericsoftware/kryo/c/l;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 2463
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l$a;->a:Lcom/esotericsoftware/kryo/c/l$b;

    iget v2, p0, Lcom/esotericsoftware/kryo/c/l$a;->d:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/esotericsoftware/kryo/c/l$b;->a:Ljava/lang/Object;

    .line 2464
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->a:Lcom/esotericsoftware/kryo/c/l$b;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l$a;->c:Lcom/esotericsoftware/kryo/c/l;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/c/l;->c:[I

    iget v2, p0, Lcom/esotericsoftware/kryo/c/l$a;->d:I

    aget v1, v1, v2

    iput v1, v0, Lcom/esotericsoftware/kryo/c/l$b;->b:I

    .line 2465
    iget v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->d:I

    iput v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->e:I

    .line 2466
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/l$a;->b()V

    .line 2467
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l$a;->a:Lcom/esotericsoftware/kryo/c/l$b;

    return-object v0

    .line 2461
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2460
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    .line 451
    invoke-super {p0}, Lcom/esotericsoftware/kryo/c/l$c;->remove()V

    return-void
.end method
