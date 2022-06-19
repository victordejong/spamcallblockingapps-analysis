.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike$CombinationsItr;->init()Lscala/Tuple3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final cs$1:[I

.field public final ns$1:[I

.field public final r$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr;[I[ILscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr;)V"
        }
    .end annotation

    .line 263
    iput-object p2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->cs$1:[I

    iput-object p3, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->ns$1:[I

    iput-object p4, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->r$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 263
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 4

    .line 264
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->ns$1:[I

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->r$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    iget-object v3, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->cs$1:[I

    aget v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v1

    aput v1, v0, p1

    .line 265
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->r$1:Lscala/runtime/IntRef;

    iget v1, v0, Lscala/runtime/IntRef;->elem:I

    iget-object v2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$2;->ns$1:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
