.class public final Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;
.super Lscala/runtime/AbstractPartialFunction;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->pfFromExceptions(Lscala/collection/Seq;)Lscala/PartialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Ljava/lang/Throwable;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final exceptions$1:Lscala/collection/Seq;


# direct methods
.method public constructor <init>(Lscala/collection/Seq;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;->exceptions$1:Lscala/collection/Seq;

    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;->applyOrElse(Ljava/lang/Throwable;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final applyOrElse(Ljava/lang/Throwable;Lscala/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Throwable;",
            "B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 226
    sget-object v0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    iget-object v1, p0, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;->exceptions$1:Lscala/collection/Seq;

    invoke-virtual {v0, p1, v1}, Lscala/util/control/Exception$;->scala$util$control$Exception$$wouldMatch(Ljava/lang/Throwable;Lscala/collection/Seq;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    throw p1
.end method

.method public final bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 226
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;->isDefinedAt(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final isDefinedAt(Ljava/lang/Throwable;)Z
    .locals 2

    .line 226
    sget-object v0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    iget-object v1, p0, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;->exceptions$1:Lscala/collection/Seq;

    invoke-virtual {v0, p1, v1}, Lscala/util/control/Exception$;->scala$util$control$Exception$$wouldMatch(Ljava/lang/Throwable;Lscala/collection/Seq;)Z

    move-result p1

    return p1
.end method
