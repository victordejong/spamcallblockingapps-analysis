.class public abstract Lscala/runtime/AbstractPartialFunction$mcFJ$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcFJ$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcFJ$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcFJ$sp$class;->$init$(Lscala/Function1$mcFJ$sp;)V

    return-void
.end method


# virtual methods
.method public apply(J)F
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcFJ$sp;->apply$mcFJ$sp(J)F

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/runtime/AbstractPartialFunction$mcFJ$sp;->apply(J)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {p2}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcFJ$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method
