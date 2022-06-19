.class public final Lscala/collection/Iterator$$anon$14;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->collect(Lscala/PartialFunction;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final pf$1:Lscala/PartialFunction;

.field private final self$1:Lscala/collection/BufferedIterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/BufferedIterator;Lscala/PartialFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 475
    iput-object p2, p0, Lscala/collection/Iterator$$anon$14;->self$1:Lscala/collection/BufferedIterator;

    iput-object p3, p0, Lscala/collection/Iterator$$anon$14;->pf$1:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method

.method private skip()V
    .locals 2

    .line 476
    :goto_0
    iget-object v0, p0, Lscala/collection/Iterator$$anon$14;->self$1:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$14;->pf$1:Lscala/PartialFunction;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$14;->self$1:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/PartialFunction;->isDefinedAt(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$14;->self$1:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 477
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$14;->skip()V

    iget-object v0, p0, Lscala/collection/Iterator$$anon$14;->self$1:Lscala/collection/BufferedIterator;

    invoke-interface {v0}, Lscala/collection/BufferedIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 478
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$14;->skip()V

    iget-object v0, p0, Lscala/collection/Iterator$$anon$14;->pf$1:Lscala/PartialFunction;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$14;->self$1:Lscala/collection/BufferedIterator;

    invoke-interface {v1}, Lscala/collection/BufferedIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
