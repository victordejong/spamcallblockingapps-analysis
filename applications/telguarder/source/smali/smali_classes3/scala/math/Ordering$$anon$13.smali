.class public final Lscala/math/Ordering$$anon$13;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/Ordering;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Ordering$;->Tuple4(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Ordering<",
        "Lscala/Tuple4<",
        "TT1;TT2;TT3;TT4;>;>;"
    }
.end annotation


# instance fields
.field private final ord1$6:Lscala/math/Ordering;

.field private final ord2$6:Lscala/math/Ordering;

.field private final ord3$6:Lscala/math/Ordering;

.field private final ord4$6:Lscala/math/Ordering;


# direct methods
.method public constructor <init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lscala/math/Ordering$$anon$13;->ord1$6:Lscala/math/Ordering;

    iput-object p2, p0, Lscala/math/Ordering$$anon$13;->ord2$6:Lscala/math/Ordering;

    iput-object p3, p0, Lscala/math/Ordering$$anon$13;->ord3$6:Lscala/math/Ordering;

    iput-object p4, p0, Lscala/math/Ordering$$anon$13;->ord4$6:Lscala/math/Ordering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 388
    check-cast p1, Lscala/Tuple4;

    check-cast p2, Lscala/Tuple4;

    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$$anon$13;->compare(Lscala/Tuple4;Lscala/Tuple4;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/Tuple4;Lscala/Tuple4;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple4<",
            "TT1;TT2;TT3;TT4;>;",
            "Lscala/Tuple4<",
            "TT1;TT2;TT3;TT4;>;)I"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lscala/math/Ordering$$anon$13;->ord1$6:Lscala/math/Ordering;

    invoke-virtual {p1}, Lscala/Tuple4;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lscala/Tuple4;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 392
    :cond_0
    iget-object v0, p0, Lscala/math/Ordering$$anon$13;->ord2$6:Lscala/math/Ordering;

    invoke-virtual {p1}, Lscala/Tuple4;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lscala/Tuple4;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 394
    :cond_1
    iget-object v0, p0, Lscala/math/Ordering$$anon$13;->ord3$6:Lscala/math/Ordering;

    invoke-virtual {p1}, Lscala/Tuple4;->_3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lscala/Tuple4;->_3()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 396
    :cond_2
    iget-object v0, p0, Lscala/math/Ordering$$anon$13;->ord4$6:Lscala/math/Ordering;

    invoke-virtual {p1}, Lscala/Tuple4;->_4()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lscala/Tuple4;->_4()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 388
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
            "Lscala/Tuple4<",
            "TT1;TT2;TT3;TT4;>;>;)",
            "Lscala/math/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 388
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
            "Lscala/Tuple4<",
            "TT1;TT2;TT3;TT4;>;>;"
        }
    .end annotation

    .line 388
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lscala/math/Ordering$$anon$13;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$$anon$13;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 388
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method
