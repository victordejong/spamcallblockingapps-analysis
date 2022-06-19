.class public final Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tuple2Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple2Zipped;->exists(Lscala/Function2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TEl1;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final elems2$4:Lscala/collection/Iterator;

.field private final f$4:Lscala/Function2;

.field private final nonLocalReturnKey4$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->elems2$4:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->f$4:Lscala/Function2;

    iput-object p3, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->nonLocalReturnKey4$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->elems2$4:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->f$4:Lscala/Function2;

    iget-object v1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->elems2$4:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcZ$sp;

    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->nonLocalReturnKey4$1:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;-><init>(Ljava/lang/Object;Z)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcZ$sp;

    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$exists$extension$1;->nonLocalReturnKey4$1:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;-><init>(Ljava/lang/Object;Z)V

    throw p1
.end method
