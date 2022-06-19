.class public final Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1;
.super Lscala/runtime/AbstractFunction1;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->throwableSubtypeToCatcher(Lscala/PartialFunction;Lscala/reflect/ClassTag;)Lscala/PartialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TEx;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final pf$1:Lscala/PartialFunction;


# direct methods
.method public constructor <init>(Lscala/PartialFunction;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1;->pf$1:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1;->apply(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEx;)Z"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1;->pf$1:Lscala/PartialFunction;

    invoke-interface {v0, p1}, Lscala/PartialFunction;->isDefinedAt(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
