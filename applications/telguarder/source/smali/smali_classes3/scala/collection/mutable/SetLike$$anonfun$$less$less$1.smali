.class public final Lscala/collection/mutable/SetLike$$anonfun$$less$less$1;
.super Lscala/runtime/AbstractFunction1;
.source "SetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/SetLike;->$less$less(Lscala/collection/script/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/script/Message<",
        "TA;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/SetLike;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/SetLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/SetLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/SetLike$$anonfun$$less$less$1;->$outer:Lscala/collection/mutable/SetLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Lscala/collection/script/Message;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetLike$$anonfun$$less$less$1;->apply(Lscala/collection/script/Message;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/script/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/script/Message<",
            "TA;>;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lscala/collection/mutable/SetLike$$anonfun$$less$less$1;->$outer:Lscala/collection/mutable/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/SetLike;->$less$less(Lscala/collection/script/Message;)V

    return-void
.end method
