.class public final Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tuple3Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple3Zipped;->exists(Lscala/Function3;)Z
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

.field private final elems3$4:Lscala/collection/Iterator;

.field private final f$4:Lscala/Function3;

.field private final nonLocalReturnKey4$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/Iterator;Lscala/Function3;Ljava/lang/Object;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->elems2$4:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->elems3$4:Lscala/collection/Iterator;

    iput-object p3, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->f$4:Lscala/Function3;

    iput-object p4, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->nonLocalReturnKey4$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->elems2$4:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->elems3$4:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->f$4:Lscala/Function3;

    iget-object v1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->elems2$4:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->elems3$4:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcZ$sp;

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->nonLocalReturnKey4$1:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;-><init>(Ljava/lang/Object;Z)V

    throw p1

    .line 102
    :cond_1
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcZ$sp;

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$exists$extension$1;->nonLocalReturnKey4$1:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;-><init>(Ljava/lang/Object;Z)V

    throw p1
.end method
