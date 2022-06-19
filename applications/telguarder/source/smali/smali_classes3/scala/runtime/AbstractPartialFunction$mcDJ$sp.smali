.class public abstract Lscala/runtime/AbstractPartialFunction$mcDJ$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcDJ$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcDJ$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcDJ$sp$class;->$init$(Lscala/Function1$mcDJ$sp;)V

    return-void
.end method


# virtual methods
.method public apply(J)D
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcDJ$sp;->apply$mcDJ$sp(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/runtime/AbstractPartialFunction$mcDJ$sp;->apply(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {p2}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcDJ$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide p1

    return-wide p1
.end method
