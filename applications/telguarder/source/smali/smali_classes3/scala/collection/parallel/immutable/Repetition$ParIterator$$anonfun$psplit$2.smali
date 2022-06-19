.class public final Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;
.super Lscala/runtime/AbstractFunction1;
.source "package.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/Repetition$ParIterator;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
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
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/immutable/Repetition<",
        "TT;>.ParIterator;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/Repetition$ParIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/Repetition<",
            "TT;>.ParIterator;)V"
        }
    .end annotation

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->apply(Lscala/Tuple2;)Lscala/collection/parallel/immutable/Repetition$ParIterator;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/immutable/Repetition$ParIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/immutable/Repetition<",
            "TT;>.ParIterator;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Lscala/collection/parallel/immutable/Repetition$ParIterator;

    iget-object v1, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/immutable/Repetition$ParIterator;->scala$collection$parallel$immutable$Repetition$ParIterator$$$outer()Lscala/collection/parallel/immutable/Repetition;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/immutable/Repetition$ParIterator;->i()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v4, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;

    invoke-virtual {v4}, Lscala/collection/parallel/immutable/Repetition$ParIterator;->i()I

    move-result v4

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    add-int/2addr v4, p1

    iget-object p1, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;

    invoke-virtual {p1}, Lscala/collection/parallel/immutable/Repetition$ParIterator;->until()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    iget-object v3, p0, Lscala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/immutable/Repetition$ParIterator;

    iget-object v3, v3, Lscala/collection/parallel/immutable/Repetition$ParIterator;->scala$collection$parallel$immutable$Repetition$ParIterator$$elem:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lscala/collection/parallel/immutable/Repetition$ParIterator;-><init>(Lscala/collection/parallel/immutable/Repetition;IILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
