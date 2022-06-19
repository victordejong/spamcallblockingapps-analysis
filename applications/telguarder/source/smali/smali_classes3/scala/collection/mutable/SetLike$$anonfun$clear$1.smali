.class public final Lscala/collection/mutable/SetLike$$anonfun$clear$1;
.super Lscala/runtime/AbstractFunction1;
.source "SetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/SetLike;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/SetLike<",
        "TA;TThis;>;>;",
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

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/SetLike$$anonfun$clear$1;->$outer:Lscala/collection/mutable/SetLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetLike$$anonfun$clear$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetLike<",
            "TA;TThis;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lscala/collection/mutable/SetLike$$anonfun$clear$1;->$outer:Lscala/collection/mutable/SetLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object p1

    return-object p1
.end method
