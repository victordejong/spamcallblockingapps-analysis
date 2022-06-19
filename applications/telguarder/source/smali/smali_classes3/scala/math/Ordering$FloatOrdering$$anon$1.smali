.class public final Lscala/math/Ordering$FloatOrdering$$anon$1;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/Ordering$FloatOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Ordering$FloatOrdering;->reverse()Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/math/Ordering$FloatOrdering;


# direct methods
.method public constructor <init>(Lscala/math/Ordering$FloatOrdering;)V
    .locals 0

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Ordering$FloatOrdering$class;->$init$(Lscala/math/Ordering$FloatOrdering;)V

    return-void
.end method


# virtual methods
.method public compare(FF)I
    .locals 1

    .line 281
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/Ordering$FloatOrdering;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->compare(FF)I

    move-result p1

    return p1
.end method

.method public equiv(FF)Z
    .locals 0

    .line 279
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$class;->equiv(Lscala/math/Ordering$FloatOrdering;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->equiv(FF)Z

    move-result p1

    return p1
.end method

.method public gt(FF)Z
    .locals 1

    .line 286
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/Ordering$FloatOrdering;->gt(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->gt(FF)Z

    move-result p1

    return p1
.end method

.method public gteq(FF)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/Ordering$FloatOrdering;->gteq(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->gteq(FF)Z

    move-result p1

    return p1
.end method

.method public lt(FF)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/Ordering$FloatOrdering;->lt(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->lt(FF)Z

    move-result p1

    return p1
.end method

.method public lteq(FF)Z
    .locals 1

    .line 283
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p2, p1}, Lscala/math/Ordering$FloatOrdering;->lteq(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->lteq(FF)Z

    move-result p1

    return p1
.end method

.method public max(FF)F
    .locals 1

    .line 288
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p1, p2}, Lscala/math/Ordering$FloatOrdering;->min(FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->max(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public min(FF)F
    .locals 1

    .line 287
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    invoke-interface {v0, p1, p2}, Lscala/math/Ordering$FloatOrdering;->max(FF)F

    move-result p1

    return p1
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->min(FF)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

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

    .line 279
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

    .line 279
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering$FloatOrdering;
    .locals 1

    .line 280
    iget-object v0, p0, Lscala/math/Ordering$FloatOrdering$$anon$1;->$outer:Lscala/math/Ordering$FloatOrdering;

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/Ordering;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lscala/math/Ordering$FloatOrdering$$anon$1;->reverse()Lscala/math/Ordering$FloatOrdering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lscala/math/Ordering$FloatOrdering$$anon$1;->reverse()Lscala/math/Ordering$FloatOrdering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 279
    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$FloatOrdering$$anon$1;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 279
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method
