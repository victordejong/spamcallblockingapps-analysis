.class public abstract Lscala/runtime/AbstractPartialFunction$mcFD$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcFD$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcFD$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcFD$sp$class;->$init$(Lscala/Function1$mcFD$sp;)V

    return-void
.end method


# virtual methods
.method public apply(D)F
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcFD$sp;->apply$mcFD$sp(D)F

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/runtime/AbstractPartialFunction$mcFD$sp;->apply(D)F

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    sget-object p2, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {p2}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/runtime/AbstractPartialFunction$mcFD$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method
