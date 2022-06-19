.class public final Lscala/collection/SeqViewLike$$anonfun$sorted$1;
.super Lscala/runtime/AbstractFunction0;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->sorted(Lscala/math/Ordering;)Lscala/collection/SeqView;
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

.field private final ord$1:Lscala/math/Ordering;


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anonfun$sorted$1;->$outer:Lscala/collection/SeqViewLike;

    iput-object p2, p0, Lscala/collection/SeqViewLike$$anonfun$sorted$1;->ord$1:Lscala/math/Ordering;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lscala/collection/SeqViewLike$$anonfun$sorted$1;->apply()Lscala/collection/Seq;

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

    .line 260
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anonfun$sorted$1;->$outer:Lscala/collection/SeqViewLike;

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->thisSeq()Lscala/collection/Seq;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/SeqViewLike$$anonfun$sorted$1;->ord$1:Lscala/math/Ordering;

    invoke-interface {v0, v1}, Lscala/collection/Seq;->sorted(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method
