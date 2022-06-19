.class public final Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike$DroppedWhile;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike$DroppedWhile;

.field private final f$7:Lscala/Function1;

.field private final go$1:Lscala/runtime/BooleanRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$DroppedWhile;Lscala/runtime/BooleanRef;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.DroppedWhile;)V"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->$outer:Lscala/collection/TraversableViewLike$DroppedWhile;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->go$1:Lscala/runtime/BooleanRef;

    iput-object p3, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->f$7:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->go$1:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->$outer:Lscala/collection/TraversableViewLike$DroppedWhile;

    invoke-interface {v0}, Lscala/collection/TraversableViewLike$DroppedWhile;->pred()Lscala/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->go$1:Lscala/runtime/BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    .line 219
    :cond_0
    iget-object v0, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->go$1:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6;->f$7:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method
