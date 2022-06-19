.class public Lscala/collection/Searching$SearchImpl;
.super Ljava/lang/Object;
.source "Searching.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/Searching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final coll:Lscala/collection/SeqLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lscala/collection/Searching$SearchImpl;->coll:Lscala/collection/SeqLike;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private binarySearch(Ljava/lang/Object;IILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;II",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/Searching$SearchResult;"
        }
    .end annotation

    :goto_0
    if-ne p3, p2, :cond_0

    .line 91
    new-instance p1, Lscala/collection/Searching$InsertionPoint;

    invoke-direct {p1, p2}, Lscala/collection/Searching$InsertionPoint;-><init>(I)V

    goto :goto_1

    :cond_0
    sub-int v0, p3, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 92
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 93
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0}, Lscala/collection/Searching$SearchImpl;->coll()Lscala/collection/SeqLike;

    move-result-object v3

    invoke-interface {v3, v0}, Lscala/collection/SeqLike;->apply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, p1, v3}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lscala/math/package$;->signum(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_1

    .line 96
    new-instance p1, Lscala/collection/Searching$Found;

    invoke-direct {p1, v0}, Lscala/collection/Searching$Found;-><init>(I)V

    :goto_1
    return-object p1

    :cond_1
    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_0
.end method

.method private linearSearch(Lscala/collection/SeqView;Ljava/lang/Object;ILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/SeqView<",
            "TA;TRepr;>;TB;I",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/Searching$SearchResult;"
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Lscala/collection/SeqView;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 105
    :goto_0
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 107
    invoke-interface {p4, p2, v0}, Lscala/math/Ordering;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lscala/collection/Searching$Found;

    invoke-direct {p1, p3}, Lscala/collection/Searching$Found;-><init>(I)V

    return-object p1

    .line 108
    :cond_0
    invoke-interface {p4, p2, v0}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lscala/collection/Searching$InsertionPoint;

    invoke-direct {p1, p3}, Lscala/collection/Searching$InsertionPoint;-><init>(I)V

    return-object p1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    new-instance p1, Lscala/collection/Searching$InsertionPoint;

    invoke-direct {p1, p3}, Lscala/collection/Searching$InsertionPoint;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public coll()Lscala/collection/SeqLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lscala/collection/Searching$SearchImpl;->coll:Lscala/collection/SeqLike;

    return-object v0
.end method

.method public final search(Ljava/lang/Object;IILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;II",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/Searching$SearchResult;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lscala/collection/Searching$SearchImpl;->coll()Lscala/collection/SeqLike;

    move-result-object v0

    .line 84
    instance-of v0, v0, Lscala/collection/IndexedSeq;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/Searching$SearchImpl;->binarySearch(Ljava/lang/Object;IILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lscala/collection/Searching$SearchImpl;->coll()Lscala/collection/SeqLike;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lscala/collection/SeqLike;->view(II)Lscala/collection/SeqView;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2, p4}, Lscala/collection/Searching$SearchImpl;->linearSearch(Lscala/collection/SeqView;Ljava/lang/Object;ILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final search(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/Searching$SearchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/Searching$SearchResult;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lscala/collection/Searching$SearchImpl;->coll()Lscala/collection/SeqLike;

    move-result-object v0

    .line 57
    instance-of v0, v0, Lscala/collection/IndexedSeq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/Searching$SearchImpl;->coll()Lscala/collection/SeqLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    invoke-direct {p0, p1, v1, v0, p2}, Lscala/collection/Searching$SearchImpl;->binarySearch(Ljava/lang/Object;IILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lscala/collection/Searching$SearchImpl;->coll()Lscala/collection/SeqLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqLike;->view()Lscala/collection/SeqView;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1, p2}, Lscala/collection/Searching$SearchImpl;->linearSearch(Lscala/collection/SeqView;Ljava/lang/Object;ILscala/math/Ordering;)Lscala/collection/Searching$SearchResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method
