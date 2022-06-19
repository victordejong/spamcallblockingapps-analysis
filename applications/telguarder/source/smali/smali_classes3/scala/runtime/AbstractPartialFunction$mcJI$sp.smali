.class public abstract Lscala/runtime/AbstractPartialFunction$mcJI$sp;
.super Lscala/runtime/AbstractPartialFunction;
.source "AbstractPartialFunction.scala"

# interfaces
.implements Lscala/Function1$mcJI$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcJI$sp;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    invoke-static {p0}, Lscala/Function1$mcJI$sp$class;->$init$(Lscala/Function1$mcJI$sp;)V

    return-void
.end method


# virtual methods
.method public apply(I)J
    .locals 2

    .line 36
    invoke-virtual {p0, p1}, Lscala/runtime/AbstractPartialFunction$mcJI$sp;->apply$mcJI$sp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/runtime/AbstractPartialFunction$mcJI$sp;->apply(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0}, Lscala/PartialFunction$;->empty()Lscala/PartialFunction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/runtime/AbstractPartialFunction$mcJI$sp;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
