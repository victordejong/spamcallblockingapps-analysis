.class public final Lscala/collection/immutable/Stack$$anonfun$newBuilder$1;
.super Lscala/runtime/AbstractFunction1;
.source "Stack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stack$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/ArrayBuffer<",
        "TA;>;",
        "Lscala/collection/immutable/Stack<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack$$anonfun$newBuilder$1;->apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/immutable/Stack;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/immutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;)",
            "Lscala/collection/immutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lscala/collection/immutable/Stack;

    invoke-virtual {p1}, Lscala/collection/mutable/ArrayBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-object v0
.end method
