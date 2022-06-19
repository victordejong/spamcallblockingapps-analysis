.class public final Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;
.super Lscala/runtime/AbstractFunction1;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayOps;->transpose(Lscala/Function1;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final asArray$1:Lscala/Function1;

.field public final bs$1:[Lscala/collection/mutable/ArrayBuilder;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayOps;[Lscala/collection/mutable/ArrayBuilder;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayOps<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    iput-object p2, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;->bs$1:[Lscala/collection/mutable/ArrayBuilder;

    iput-object p3, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;->asArray$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 101
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;->asArray$1:Lscala/Function1;

    invoke-interface {v2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    new-instance v1, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;-><init>(Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    return-void
.end method
