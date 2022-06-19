.class public final Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;
.super Lscala/runtime/AbstractFunction1;
.source "SetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SetLike$SubsetsItr;->next()Lscala/collection/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TA;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/SetLike$SubsetsItr;

.field private final buf$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/SetLike$SubsetsItr;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SetLike<",
            "TA;TThis;>.SubsetsItr;)V"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;->$outer:Lscala/collection/SetLike$SubsetsItr;

    iput-object p2, p0, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;->buf$1:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 224
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;->apply(I)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/Builder<",
            "TA;TThis;>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;->buf$1:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/SetLike$SubsetsItr$$anonfun$next$2;->$outer:Lscala/collection/SetLike$SubsetsItr;

    iget-object v1, v1, Lscala/collection/SetLike$SubsetsItr;->scala$collection$SetLike$SubsetsItr$$elms:Lscala/collection/IndexedSeq;

    invoke-interface {v1, p1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
