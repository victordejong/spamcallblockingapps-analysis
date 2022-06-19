.class public final Lscala/collection/immutable/Queue$$anonfun$newBuilder$1;
.super Lscala/runtime/AbstractFunction1;
.source "Queue.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Queue$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/immutable/List<",
        "TA;>;",
        "Lscala/collection/immutable/Queue<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p1, Lscala/collection/immutable/List;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue$$anonfun$newBuilder$1;->apply(Lscala/collection/immutable/List;)Lscala/collection/immutable/Queue;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/List;)Lscala/collection/immutable/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)",
            "Lscala/collection/immutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Lscala/collection/immutable/Queue;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p1}, Lscala/collection/immutable/List;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    return-object v0
.end method
