.class public abstract Lscala/runtime/AbstractPartialFunction$mcVJ$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcVJ$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Function1$mcVJ$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcVJ$sp$class;->$init$(Lscala/Function1$mcVJ$sp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/runtime/AbstractPartialFunction$mcVJ$sp;->apply(J)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public apply(J)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcVJ$sp;->apply$mcVJ$sp(J)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {p2}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcVJ$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    return-void
.end method
