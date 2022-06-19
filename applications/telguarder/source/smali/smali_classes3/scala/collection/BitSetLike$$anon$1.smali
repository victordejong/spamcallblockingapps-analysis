.class public final Lscala/collection/BitSetLike$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "BitSetLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/BitSetLike;->keysIteratorFrom(I)Lscala/collection/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/BitSetLike;

.field private current:I

.field private final end:I


# direct methods
.method public constructor <init>(Lscala/collection/BitSetLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/BitSetLike<",
            "TThis;>;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/BitSetLike$$anon$1;->$outer:Lscala/collection/BitSetLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 107
    iput p2, p0, Lscala/collection/BitSetLike$$anon$1;->current:I

    .line 108
    invoke-interface {p1}, Lscala/collection/BitSetLike;->nwords()I

    move-result p1

    mul-int/lit8 p1, p1, 0x40

    iput p1, p0, Lscala/collection/BitSetLike$$anon$1;->end:I

    return-void
.end method

.method private current()I
    .locals 1

    .line 107
    iget v0, p0, Lscala/collection/BitSetLike$$anon$1;->current:I

    return v0
.end method

.method private current_$eq(I)V
    .locals 0

    .line 107
    iput p1, p0, Lscala/collection/BitSetLike$$anon$1;->current:I

    return-void
.end method

.method private end()I
    .locals 1

    .line 108
    iget v0, p0, Lscala/collection/BitSetLike$$anon$1;->end:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 110
    :goto_0
    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->current()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->end()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/BitSetLike$$anon$1;->$outer:Lscala/collection/BitSetLike;

    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->current()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/BitSetLike;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->current()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lscala/collection/BitSetLike$$anon$1;->current_$eq(I)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->current()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->end()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public next()I
    .locals 2

    .line 114
    invoke-virtual {p0}, Lscala/collection/BitSetLike$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->current()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/BitSetLike$$anon$1;->current()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/BitSetLike$$anon$1;->current_$eq(I)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/BitSetLike$$anon$1;->next()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
