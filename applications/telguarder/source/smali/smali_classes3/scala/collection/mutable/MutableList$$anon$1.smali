.class public final Lscala/collection/mutable/MutableList$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "MutableList.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/MutableList;->iterator()Lscala/collection/Iterator;
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
.field private count:I

.field private elems:Lscala/collection/mutable/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/MutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 119
    invoke-virtual {p1}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/MutableList$$anon$1;->elems:Lscala/collection/mutable/LinkedList;

    .line 120
    invoke-virtual {p1}, Lscala/collection/mutable/MutableList;->len()I

    move-result p1

    iput p1, p0, Lscala/collection/mutable/MutableList$$anon$1;->count:I

    return-void
.end method

.method private count()I
    .locals 1

    .line 120
    iget v0, p0, Lscala/collection/mutable/MutableList$$anon$1;->count:I

    return v0
.end method

.method private count_$eq(I)V
    .locals 0

    .line 120
    iput p1, p0, Lscala/collection/mutable/MutableList$$anon$1;->count:I

    return-void
.end method

.method private elems()Lscala/collection/mutable/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lscala/collection/mutable/MutableList$$anon$1;->elems:Lscala/collection/mutable/LinkedList;

    return-object v0
.end method

.method private elems_$eq(Lscala/collection/mutable/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lscala/collection/mutable/MutableList$$anon$1;->elems:Lscala/collection/mutable/LinkedList;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 121
    invoke-direct {p0}, Lscala/collection/mutable/MutableList$$anon$1;->count()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/MutableList$$anon$1;->elems()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

    .line 123
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lscala/collection/mutable/MutableList$$anon$1;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/MutableList$$anon$1;->count_$eq(I)V

    .line 125
    invoke-direct {p0}, Lscala/collection/mutable/MutableList$$anon$1;->elems()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->elem()Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lscala/collection/mutable/MutableList$$anon$1;->count()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/MutableList$$anon$1;->elems()Lscala/collection/mutable/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/LinkedList;->next()Lscala/collection/mutable/Seq;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/LinkedList;

    :goto_0
    invoke-direct {p0, v1}, Lscala/collection/mutable/MutableList$$anon$1;->elems_$eq(Lscala/collection/mutable/LinkedList;)V

    return-object v0

    .line 123
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
