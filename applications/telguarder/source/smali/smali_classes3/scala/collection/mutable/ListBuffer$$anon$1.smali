.class public final Lscala/collection/mutable/ListBuffer$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "ListBuffer.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ListBuffer;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private cursor:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ListBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 399
    invoke-virtual {p1}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor:Lscala/collection/immutable/List;

    return-void
.end method

.method private cursor()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor:Lscala/collection/immutable/List;

    return-object v0
.end method

.method private cursor_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor:Lscala/collection/immutable/List;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 401
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor()Lscala/collection/immutable/List;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    .line 406
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer$$anon$1;->cursor_$eq(Lscala/collection/immutable/List;)V

    return-object v0

    .line 403
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next on empty Iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
