.class public final Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/SeqSplitter$Appended;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/collection/Seq<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final appendMiddle$1:Lscala/runtime/BooleanRef;

.field private final selfrem$1:I


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter$Appended;ILscala/runtime/BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Appended<TU;TPI;>;)V"
        }
    .end annotation

    .line 595
    iput p2, p0, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;->selfrem$1:I

    iput-object p3, p0, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;->appendMiddle$1:Lscala/runtime/BooleanRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 595
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;->apply(Lscala/Tuple2;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/Seq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/Tuple3;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/Tuple2;

    invoke-virtual {v2}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    .line 597
    iget v2, p0, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;->selfrem$1:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    if-le v0, v2, :cond_0

    .line 598
    iget-object p1, p0, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;->appendMiddle$1:Lscala/runtime/BooleanRef;

    iput-boolean v4, p1, Lscala/runtime/BooleanRef;->elem:Z

    .line 599
    sget-object p1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget v6, p0, Lscala/collection/parallel/SeqSplitter$Appended$$anonfun$7;->selfrem$1:I

    sub-int v1, v6, v1

    aput v1, v5, v3

    sub-int/2addr v0, v6

    aput v0, v5, v4

    invoke-virtual {v2, v5}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    goto :goto_0

    .line 600
    :cond_0
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    :goto_0
    return-object p1

    .line 596
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
