.class public final Lscala/collection/LinearSeqLike$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "LinearSeqLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/LinearSeqLike;->iterator()Lscala/collection/Iterator;
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
.field private these:Lscala/collection/LinearSeqLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRepr;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/LinearSeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRepr;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 42
    iput-object p1, p0, Lscala/collection/LinearSeqLike$$anon$1;->these:Lscala/collection/LinearSeqLike;

    return-void
.end method

.method private these()Lscala/collection/LinearSeqLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/LinearSeqLike$$anon$1;->these:Lscala/collection/LinearSeqLike;

    return-object v0
.end method

.method private these_$eq(Lscala/collection/LinearSeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRepr;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lscala/collection/LinearSeqLike$$anon$1;->these:Lscala/collection/LinearSeqLike;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 43
    invoke-direct {p0}, Lscala/collection/LinearSeqLike$$anon$1;->these()Lscala/collection/LinearSeqLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/LinearSeqLike;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lscala/collection/LinearSeqLike$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lscala/collection/LinearSeqLike$$anon$1;->these()Lscala/collection/LinearSeqLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/LinearSeqLike;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/LinearSeqLike$$anon$1;->these()Lscala/collection/LinearSeqLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/LinearSeqLike;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/LinearSeqLike;

    invoke-direct {p0, v1}, Lscala/collection/LinearSeqLike$$anon$1;->these_$eq(Lscala/collection/LinearSeqLike;)V

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lscala/collection/LinearSeqLike$$anon$1;->these()Lscala/collection/LinearSeqLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/LinearSeqLike;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lscala/collection/LinearSeqLike$$anon$1;->these()Lscala/collection/LinearSeqLike;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lscala/collection/LinearSeqLike;->take(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/LinearSeqLike;

    invoke-direct {p0, v1}, Lscala/collection/LinearSeqLike$$anon$1;->these_$eq(Lscala/collection/LinearSeqLike;)V

    return-object v0
.end method
