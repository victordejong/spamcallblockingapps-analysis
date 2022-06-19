.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike$CombinationsItr;->next()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/SeqLike$CombinationsItr;

.field public final buf$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr;)V"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    iput-object p2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->buf$1:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 9

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 223
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    invoke-virtual {v1}, Lscala/collection/SeqLike$CombinationsItr;->scala$collection$SeqLike$CombinationsItr$$nums()[I

    move-result-object v1

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v0

    new-instance v1, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;-><init>(Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;I)V

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->end()I

    move-result p1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v0}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz p1, :cond_2

    if-eq v3, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {v1, v3}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1$$anonfun$apply$mcVI$sp$1;->apply(I)Lscala/collection/mutable/Builder;

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v6

    goto :goto_2

    :cond_4
    return-void
.end method

.method public synthetic scala$collection$SeqLike$CombinationsItr$$anonfun$$$outer()Lscala/collection/SeqLike$CombinationsItr;
    .locals 1

    .line 223
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$next$1;->$outer:Lscala/collection/SeqLike$CombinationsItr;

    return-object v0
.end method
