.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;
.super Lscala/runtime/AbstractFunction0$mcZ$sp;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final p$1:Lscala/Function2;

.field private final that$5:Lscala/collection/GenSeq;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->$outer:Lscala/collection/parallel/ParSeqLike;

    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->that$5:Lscala/collection/GenSeq;

    iput-object p3, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->p$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcZ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->apply()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Z
    .locals 1

    .line 283
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->apply$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public apply$mcZ$sp()Z
    .locals 3

    .line 283
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParSeqLike;->seq()Lscala/collection/Iterable;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->that$5:Lscala/collection/GenSeq;

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$corresponds$1;->p$1:Lscala/Function2;

    invoke-interface {v0, v1, v2}, Lscala/collection/SeqLike;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method
