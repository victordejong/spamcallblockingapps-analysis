.class public final Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1;
.super Lscala/runtime/AbstractFunction1;
.source "UnrolledBuffer.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/UnrolledBuffer$Unrolled;->insertAll(ILscala/collection/Traversable;Lscala/collection/mutable/UnrolledBuffer;)V
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
.field private final curr$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;)V"
        }
    .end annotation

    .line 319
    iput-object p2, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1;->curr$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lscala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1;->curr$1:Lscala/runtime/ObjectRef;

    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v1, p1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->append(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
