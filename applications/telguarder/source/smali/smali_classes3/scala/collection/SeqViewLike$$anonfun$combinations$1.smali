.class public final Lscala/collection/SeqViewLike$$anonfun$combinations$1;
.super Lscala/runtime/AbstractFunction1;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->combinations(I)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Seq<",
        "TA;>;TThis;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anonfun$combinations$1;->$outer:Lscala/collection/SeqViewLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 269
    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anonfun$combinations$1;->apply(Lscala/collection/Seq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Seq;)Lscala/collection/SeqView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anonfun$combinations$1;->$outer:Lscala/collection/SeqViewLike;

    new-instance v1, Lscala/collection/SeqViewLike$$anonfun$combinations$1$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/SeqViewLike$$anonfun$combinations$1$$anonfun$apply$1;-><init>(Lscala/collection/SeqViewLike$$anonfun$combinations$1;Lscala/collection/Seq;)V

    invoke-interface {v0, v1}, Lscala/collection/SeqViewLike;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method
