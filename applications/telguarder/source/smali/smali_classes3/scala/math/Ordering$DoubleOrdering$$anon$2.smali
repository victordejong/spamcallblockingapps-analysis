.class public final Lscala/math/Ordering$DoubleOrdering$$anon$2;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/Ordering$DoubleOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Ordering$DoubleOrdering;->reverse()Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/math/Ordering$DoubleOrdering;


# direct methods
.method public constructor <init>(Lscala/math/Ordering$DoubleOrdering;)V
    .locals 0

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->$init$(Lscala/math/Ordering$DoubleOrdering;)V

    return-void
.end method


# virtual methods
.method public compare(DD)I
    .locals 1

    .line 309
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p3, p4, p1, p2}, Lscala/math/Ordering$DoubleOrdering;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->compare(DD)I

    move-result p1

    return p1
.end method

.method public equiv(DD)Z
    .locals 0

    .line 307
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->equiv(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->equiv(DD)Z

    move-result p1

    return p1
.end method

.method public gt(DD)Z
    .locals 1

    .line 314
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p3, p4, p1, p2}, Lscala/math/Ordering$DoubleOrdering;->gt(DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->gt(DD)Z

    move-result p1

    return p1
.end method

.method public gteq(DD)Z
    .locals 1

    .line 312
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p3, p4, p1, p2}, Lscala/math/Ordering$DoubleOrdering;->gteq(DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->gteq(DD)Z

    move-result p1

    return p1
.end method

.method public lt(DD)Z
    .locals 1

    .line 313
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p3, p4, p1, p2}, Lscala/math/Ordering$DoubleOrdering;->lt(DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->lt(DD)Z

    move-result p1

    return p1
.end method

.method public lteq(DD)Z
    .locals 1

    .line 311
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p3, p4, p1, p2}, Lscala/math/Ordering$DoubleOrdering;->lteq(DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->lteq(DD)Z

    move-result p1

    return p1
.end method

.method public max(DD)D
    .locals 1

    .line 316
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->max(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public min(DD)D
    .locals 1

    .line 315
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    invoke-interface {v0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 307
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/math/Ordering$Ops;"
        }
    .end annotation

    .line 307
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public on(Lscala/Function1;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TU;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/math/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 307
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering$DoubleOrdering;
    .locals 1

    .line 308
    iget-object v0, p0, Lscala/math/Ordering$DoubleOrdering$$anon$2;->$outer:Lscala/math/Ordering$DoubleOrdering;

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/Ordering;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->reverse()Lscala/math/Ordering$DoubleOrdering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->reverse()Lscala/math/Ordering$DoubleOrdering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 307
    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$DoubleOrdering$$anon$2;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 307
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method
