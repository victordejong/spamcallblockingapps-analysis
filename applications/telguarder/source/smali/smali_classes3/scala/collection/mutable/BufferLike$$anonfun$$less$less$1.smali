.class public final Lscala/collection/mutable/BufferLike$$anonfun$$less$less$1;
.super Lscala/runtime/AbstractFunction1;
.source "BufferLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/BufferLike;->$less$less(Lscala/collection/script/Message;)V
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
.field private final synthetic $outer:Lscala/collection/mutable/Buffer;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/BufferLike$$anonfun$$less$less$1;->$outer:Lscala/collection/mutable/Buffer;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    check-cast p1, Lscala/collection/script/Message;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BufferLike$$anonfun$$less$less$1;->apply(Lscala/collection/script/Message;)V

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

    .line 204
    iget-object v0, p0, Lscala/collection/mutable/BufferLike$$anonfun$$less$less$1;->$outer:Lscala/collection/mutable/Buffer;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->$less$less(Lscala/collection/script/Message;)V

    return-void
.end method
