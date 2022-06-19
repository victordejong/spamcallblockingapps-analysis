.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$diff$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->diff(Lscala/collection/GenSeq;)Lscala/collection/parallel/ParSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TSequential;TSequential;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final that$6:Lscala/collection/GenSeq;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/collection/GenSeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 286
    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$diff$1;->that$6:Lscala/collection/GenSeq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 286
    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$diff$1;->apply(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSequential;)TSequential;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$$anonfun$diff$1;->that$6:Lscala/collection/GenSeq;

    invoke-interface {p1, v0}, Lscala/collection/Seq;->diff(Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    return-object p1
.end method
