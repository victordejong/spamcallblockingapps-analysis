.class public final Lscala/PartialFunction$$anonfun$runWith$1;
.super Lscala/runtime/AbstractFunction1;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/PartialFunction;

.field private final action$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/PartialFunction;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/PartialFunction<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/PartialFunction$$anonfun$runWith$1;->$outer:Lscala/PartialFunction;

    iput-object p2, p0, Lscala/PartialFunction$$anonfun$runWith$1;->action$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lscala/PartialFunction$$anonfun$runWith$1;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lscala/PartialFunction$$anonfun$runWith$1;->$outer:Lscala/PartialFunction;

    sget-object v1, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v1}, Lscala/PartialFunction$;->scala$PartialFunction$$checkFallback()Lscala/PartialFunction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    .line 142
    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0, p1}, Lscala/PartialFunction$;->scala$PartialFunction$$fallbackOccurred(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/PartialFunction$$anonfun$runWith$1;->action$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
