.class public final Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TU;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;

.field private final i$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayOps<",
            "TT;>.$anonfun$transpose$1;)V"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;->$outer:Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;

    iput-object p2, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;->$outer:Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;

    iget-object v0, v0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1;->bs$1:[Lscala/collection/mutable/ArrayBuilder;

    iget-object v1, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 103
    iget-object p1, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
