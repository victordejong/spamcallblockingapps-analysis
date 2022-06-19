.class public final Lscala/Responder$$anonfun$loopWhile$1;
.super Lscala/runtime/AbstractFunction1;
.source "Responder.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder$;->loopWhile(Lscala/Function0;Lscala/Responder;)Lscala/Responder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/Responder<",
        "Lscala/runtime/BoxedUnit;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cond$1:Lscala/Function0;

.field private final r$2:Lscala/Responder;


# direct methods
.method public constructor <init>(Lscala/Function0;Lscala/Responder;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lscala/Responder$$anonfun$loopWhile$1;->cond$1:Lscala/Function0;

    iput-object p2, p0, Lscala/Responder$$anonfun$loopWhile$1;->r$2:Lscala/Responder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/Responder$$anonfun$loopWhile$1;->apply(Lscala/runtime/BoxedUnit;)Lscala/Responder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/runtime/BoxedUnit;)Lscala/Responder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/Responder<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object p1, Lscala/Responder$;->MODULE$:Lscala/Responder$;

    iget-object v0, p0, Lscala/Responder$$anonfun$loopWhile$1;->cond$1:Lscala/Function0;

    iget-object v1, p0, Lscala/Responder$$anonfun$loopWhile$1;->r$2:Lscala/Responder;

    invoke-virtual {p1, v0, v1}, Lscala/Responder$;->loopWhile(Lscala/Function0;Lscala/Responder;)Lscala/Responder;

    move-result-object p1

    new-instance v0, Lscala/Responder$$anonfun$loopWhile$1$$anonfun$apply$2;

    invoke-direct {v0, p0}, Lscala/Responder$$anonfun$loopWhile$1$$anonfun$apply$2;-><init>(Lscala/Responder$$anonfun$loopWhile$1;)V

    invoke-virtual {p1, v0}, Lscala/Responder;->map(Lscala/Function1;)Lscala/Responder;

    move-result-object p1

    return-object p1
.end method
