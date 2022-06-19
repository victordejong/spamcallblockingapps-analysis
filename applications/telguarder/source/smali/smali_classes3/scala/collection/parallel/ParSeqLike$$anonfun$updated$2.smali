.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$updated$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThat;>;TThat;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$updated$2;->apply(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Lscala/collection/parallel/Combiner;->resultWithTaskSupport()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
