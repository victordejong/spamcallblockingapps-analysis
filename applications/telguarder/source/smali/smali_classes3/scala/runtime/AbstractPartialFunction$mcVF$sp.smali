.class public abstract Lscala/runtime/AbstractPartialFunction$mcVF$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcVF$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Function1$mcVF$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcVF$sp$class;->$init$(Lscala/Function1$mcVF$sp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/runtime/AbstractPartialFunction$mcVF$sp;->apply(F)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public apply(F)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/runtime/AbstractPartialFunction$mcVF$sp;->apply$mcVF$sp(F)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 1

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/runtime/AbstractPartialFunction$mcVF$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    return-void
.end method
