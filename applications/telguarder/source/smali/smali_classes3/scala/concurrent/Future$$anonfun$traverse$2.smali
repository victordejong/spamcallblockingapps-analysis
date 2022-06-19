.class public final Lscala/concurrent/Future$$anonfun$traverse$2;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$;->traverse(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/Builder<",
        "TB;TM;>;TM;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 576
    check-cast p1, Lscala/collection/mutable/Builder;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$traverse$2;->apply(Lscala/collection/mutable/Builder;)Lscala/collection/TraversableOnce;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Builder;)Lscala/collection/TraversableOnce;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Builder<",
            "TB;TM;>;)TM;"
        }
    .end annotation

    .line 576
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    return-object p1
.end method
