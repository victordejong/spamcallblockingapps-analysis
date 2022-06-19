.class public final Lscala/collection/IterableViewLike$$anonfun$sliding$1;
.super Lscala/runtime/AbstractFunction1;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableViewLike;->sliding(II)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Seq<",
        "TA;>;TThis;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableViewLike;


# direct methods
.method public constructor <init>(Lscala/collection/IterableViewLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableViewLike$$anonfun$sliding$1;->$outer:Lscala/collection/IterableViewLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/IterableViewLike$$anonfun$sliding$1;->apply(Lscala/collection/Seq;)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Seq;)Lscala/collection/IterableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lscala/collection/IterableViewLike$$anonfun$sliding$1;->$outer:Lscala/collection/IterableViewLike;

    new-instance v1, Lscala/collection/IterableViewLike$$anonfun$sliding$1$$anonfun$apply$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/IterableViewLike$$anonfun$sliding$1$$anonfun$apply$2;-><init>(Lscala/collection/IterableViewLike$$anonfun$sliding$1;Lscala/collection/Seq;)V

    invoke-interface {v0, v1}, Lscala/collection/IterableViewLike;->newForced(Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method
