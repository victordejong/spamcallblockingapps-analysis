.class public final Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;
.super Lscala/runtime/AbstractFunction0;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike;->scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Seq<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike;

.field private final op$2:Lscala/Function2;

.field private final z$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->$outer:Lscala/collection/TraversableViewLike;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->z$2:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->op$2:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->apply()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TB;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->$outer:Lscala/collection/TraversableViewLike;

    invoke-interface {v0}, Lscala/collection/TraversableViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->z$2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/TraversableViewLike$$anonfun$scanRight$1;->op$2:Lscala/Function2;

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/Seq;->scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method
