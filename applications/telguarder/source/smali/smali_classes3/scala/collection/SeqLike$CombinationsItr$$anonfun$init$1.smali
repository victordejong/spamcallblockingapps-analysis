.class public final Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;
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
.field private final cs$1:[I


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike$CombinationsItr;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>.CombinationsItr;)V"
        }
    .end annotation

    .line 259
    iput-object p2, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;->cs$1:[I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 2

    .line 259
    iget-object v0, p0, Lscala/collection/SeqLike$CombinationsItr$$anonfun$init$1;->cs$1:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method
