.class public abstract Lscala/runtime/AbstractPartialFunction$mcJF$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcJF$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcJF$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcJF$sp$class;->$init$(Lscala/Function1$mcJF$sp;)V

    return-void
.end method


# virtual methods
.method public apply(F)J
    .locals 2

    .line 36
    invoke-virtual {p0, p1}, Lscala/runtime/AbstractPartialFunction$mcJF$sp;->apply$mcJF$sp(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/runtime/AbstractPartialFunction$mcJF$sp;->apply(F)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/runtime/AbstractPartialFunction$mcJF$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
