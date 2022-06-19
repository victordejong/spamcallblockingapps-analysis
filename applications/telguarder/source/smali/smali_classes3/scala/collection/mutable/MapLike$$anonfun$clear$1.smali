.class public final Lscala/collection/mutable/MapLike$$anonfun$clear$1;
.super Lscala/runtime/AbstractFunction1;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/MapLike;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/MapLike<",
        "TA;TB;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/MapLike;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/MapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 175
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/MapLike$$anonfun$clear$1;->$outer:Lscala/collection/mutable/MapLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MapLike$$anonfun$clear$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;TThis;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lscala/collection/mutable/MapLike$$anonfun$clear$1;->$outer:Lscala/collection/mutable/MapLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/MapLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    return-object p1
.end method
