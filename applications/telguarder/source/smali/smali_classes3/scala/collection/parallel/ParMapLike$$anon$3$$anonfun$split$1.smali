.class public final Lscala/collection/parallel/ParMapLike$$anon$3$$anonfun$split$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParMapLike$$anon$3;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TK;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParMapLike$$anon$3;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParMapLike$$anon$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParMapLike$$anon$3;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParMapLike$$anon$3$$anonfun$split$1;->$outer:Lscala/collection/parallel/ParMapLike$$anon$3;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$3$$anonfun$split$1;->apply(Lscala/collection/parallel/IterableSplitter;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/IterableSplitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TK;>;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$$anon$3$$anonfun$split$1;->$outer:Lscala/collection/parallel/ParMapLike$$anon$3;

    invoke-virtual {v0}, Lscala/collection/parallel/ParMapLike$$anon$3;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/IterableSplitter;->signalDelegate_$eq(Lscala/collection/generic/Signalling;)V

    return-void
.end method
