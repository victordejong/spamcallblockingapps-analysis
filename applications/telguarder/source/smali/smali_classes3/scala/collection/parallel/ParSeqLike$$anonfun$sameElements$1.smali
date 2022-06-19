.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;
.super Lscala/runtime/AbstractFunction0$mcZ$sp;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->sameElements(Lscala/collection/GenIterable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field public final that$3:Lscala/collection/GenIterable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenIterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->$outer:Lscala/collection/parallel/ParSeqLike;

    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->that$3:Lscala/collection/GenIterable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcZ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->apply()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->that$3:Lscala/collection/GenIterable;

    invoke-interface {v0, v1}, Lscala/collection/Iterable;->sameElements(Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public apply$mcZ$sp()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$sameElements$1;->that$3:Lscala/collection/GenIterable;

    invoke-interface {v0, v1}, Lscala/collection/Iterable;->sameElements(Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method
