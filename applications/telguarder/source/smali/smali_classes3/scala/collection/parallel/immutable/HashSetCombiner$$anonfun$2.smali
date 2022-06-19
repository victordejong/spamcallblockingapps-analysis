.class public final Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/HashSetCombiner;->result()Lscala/collection/parallel/immutable/ParHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/HashSetCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashSetCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$2;->apply(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer;->headPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    return-object p1
.end method
