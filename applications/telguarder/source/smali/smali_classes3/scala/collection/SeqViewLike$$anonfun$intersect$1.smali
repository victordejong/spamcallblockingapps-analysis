.class public final Lscala/collection/SeqViewLike$$anonfun$intersect$1;
.super Lscala/runtime/AbstractFunction0;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->intersect(Lscala/collection/GenSeq;)Lscala/collection/SeqView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Seq<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;

.field private final that$6:Lscala/collection/GenSeq;


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 257
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anonfun$intersect$1;->$outer:Lscala/collection/SeqViewLike;

    iput-object p2, p0, Lscala/collection/SeqViewLike$$anonfun$intersect$1;->that$6:Lscala/collection/GenSeq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lscala/collection/SeqViewLike$$anonfun$intersect$1;->apply()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Seq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anonfun$intersect$1;->$outer:Lscala/collection/SeqViewLike;

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/SeqViewLike$$anonfun$intersect$1;->that$6:Lscala/collection/GenSeq;

    invoke-interface {v0, v1}, Lscala/collection/Seq;->intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method
