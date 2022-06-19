.class public final Lscala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$4;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashMapCombiner;->result()Lscala/collection/parallel/mutable/ParHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;>;",
        "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$4;->apply(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Lscala/collection/mutable/UnrolledBuffer;->headPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
