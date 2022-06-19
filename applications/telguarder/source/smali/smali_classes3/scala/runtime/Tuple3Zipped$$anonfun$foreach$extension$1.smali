.class public final Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tuple3Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple3Zipped;->foreach(Lscala/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TEl1;TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final elems2$5:Lscala/collection/Iterator;

.field private final elems3$5:Lscala/collection/Iterator;

.field private final f$6:Lscala/Function3;

.field private final nonLocalReturnKey5$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/Iterator;Lscala/Function3;Ljava/lang/Object;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->elems2$5:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->elems3$5:Lscala/collection/Iterator;

    iput-object p3, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->f$6:Lscala/Function3;

    iput-object p4, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->nonLocalReturnKey5$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;)TU;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->elems2$5:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->elems3$5:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->f$6:Lscala/Function3;

    iget-object v1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->elems2$5:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->elems3$5:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcV$sp;

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1;->nonLocalReturnKey5$1:Ljava/lang/Object;

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcV$sp;-><init>(Ljava/lang/Object;Lscala/runtime/BoxedUnit;)V

    throw p1
.end method
