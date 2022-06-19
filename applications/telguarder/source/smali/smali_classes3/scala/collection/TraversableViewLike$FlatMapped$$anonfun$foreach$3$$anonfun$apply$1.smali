.class public final Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TB;TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.FlatMapped<TB;>.$anonfun$foreach$3;)V"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1;->$outer:Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TU;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1;->$outer:Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;

    iget-object v0, v0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;->f$4:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
