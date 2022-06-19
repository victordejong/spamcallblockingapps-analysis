.class public final Lscala/collection/parallel/ParSeqLike$$anonfun$distinct$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike;->distinct()Lscala/collection/parallel/ParSeq;
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

    .line 320
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 320
    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$$anonfun$distinct$1;->apply(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSequential;)TSequential;"
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Lscala/collection/Seq;->distinct()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    return-object p1
.end method
