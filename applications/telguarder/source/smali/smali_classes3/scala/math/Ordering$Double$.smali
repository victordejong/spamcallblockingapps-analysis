.class public Lscala/math/Ordering$Double$;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/Ordering$DoubleOrdering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/math/Ordering$Double$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Ordering$Double$;

    invoke-direct {v0}, Lscala/math/Ordering$Double$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Ordering$Double$;->MODULE$:Lscala/math/Ordering$Double$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->$init$(Lscala/math/Ordering$DoubleOrdering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 319
    sget-object v0, Lscala/math/Ordering$Double$;->MODULE$:Lscala/math/Ordering$Double$;

    return-object v0
.end method


# virtual methods
.method public compare(DD)I
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->compare(Lscala/math/Ordering$DoubleOrdering;DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->compare(DD)I

    move-result p1

    return p1
.end method

.method public equiv(DD)Z
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->equiv(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->equiv(DD)Z

    move-result p1

    return p1
.end method

.method public gt(DD)Z
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->gt(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->gt(DD)Z

    move-result p1

    return p1
.end method

.method public gteq(DD)Z
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->gteq(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->gteq(DD)Z

    move-result p1

    return p1
.end method

.method public lt(DD)Z
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->lt(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->lt(DD)Z

    move-result p1

    return p1
.end method

.method public lteq(DD)Z
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->lteq(Lscala/math/Ordering$DoubleOrdering;DD)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->lteq(DD)Z

    move-result p1

    return p1
.end method

.method public max(DD)D
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->max(Lscala/math/Ordering$DoubleOrdering;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->max(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public min(DD)D
    .locals 0

    .line 319
    invoke-static {p0, p1, p2, p3, p4}, Lscala/math/Ordering$DoubleOrdering$class;->min(Lscala/math/Ordering$DoubleOrdering;DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 319
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lscala/math/Ordering$Double$;->min(DD)D

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

    .line 319
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

    .line 319
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 319
    invoke-static {p0}, Lscala/math/Ordering$DoubleOrdering$class;->reverse(Lscala/math/Ordering$DoubleOrdering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lscala/math/Ordering$Double$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$Double$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 319
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method
