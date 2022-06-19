.class public final Lscala/collection/immutable/StringLike$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "StringLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StringLike;->linesWithSeparators()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StringLike;

.field private index:I

.field private final len:I

.field private final str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StringLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StringLike<",
            "TRepr;>;)V"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StringLike$$anon$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 110
    invoke-interface {p1}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/immutable/StringLike$$anon$1;->str:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->str()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lscala/collection/immutable/StringLike$$anon$1;->len:I

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lscala/collection/immutable/StringLike$$anon$1;->index:I

    return-void
.end method

.method private index()I
    .locals 1

    .line 112
    iget v0, p0, Lscala/collection/immutable/StringLike$$anon$1;->index:I

    return v0
.end method

.method private index_$eq(I)V
    .locals 0

    .line 112
    iput p1, p0, Lscala/collection/immutable/StringLike$$anon$1;->index:I

    return-void
.end method

.method private len()I
    .locals 1

    .line 111
    iget v0, p0, Lscala/collection/immutable/StringLike$$anon$1;->len:I

    return v0
.end method

.method private str()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lscala/collection/immutable/StringLike$$anon$1;->str:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 113
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->len()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/StringLike$$anon$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .line 115
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->len()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 116
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v0

    .line 117
    :goto_0
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v1

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->len()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lscala/collection/immutable/StringLike$$anon$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v2

    invoke-interface {v1, v2}, Lscala/collection/immutable/StringLike;->apply(I)C

    move-result v2

    invoke-static {v1, v2}, Lscala/collection/immutable/StringLike$class;->scala$collection$immutable$StringLike$$isLineBreak(Lscala/collection/immutable/StringLike;C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/immutable/StringLike$$anon$1;->index_$eq(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/immutable/StringLike$$anon$1;->index_$eq(I)V

    .line 119
    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->str()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->index()I

    move-result v3

    invoke-direct {p0}, Lscala/collection/immutable/StringLike$$anon$1;->len()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next on empty iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
