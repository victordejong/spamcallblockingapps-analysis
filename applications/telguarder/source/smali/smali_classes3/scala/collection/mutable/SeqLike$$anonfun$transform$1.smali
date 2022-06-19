.class public final Lscala/collection/mutable/SeqLike$$anonfun$transform$1;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/SeqLike;->transform(Lscala/Function1;)Lscala/collection/mutable/SeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/SeqLike;

.field private final f$1:Lscala/Function1;

.field private final i$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/SeqLike;Lscala/runtime/IntRef;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/SeqLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->$outer:Lscala/collection/mutable/SeqLike;

    iput-object p2, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->i$1:Lscala/runtime/IntRef;

    iput-object p3, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->$outer:Lscala/collection/mutable/SeqLike;

    iget-object v1, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->i$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    iget-object v2, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->f$1:Lscala/Function1;

    invoke-interface {v2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lscala/collection/mutable/SeqLike;->update(ILjava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;->i$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
