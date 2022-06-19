.class public final Lscala/collection/mutable/OpenHashMap$$anonfun$transform$1;
.super Lscala/runtime/AbstractFunction1;
.source "OpenHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/OpenHashMap;->transform(Lscala/Function2;)Lscala/collection/mutable/OpenHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
        "TKey;TValue;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$3:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 230
    iput-object p2, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$transform$1;->f$3:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p1, Lscala/collection/mutable/OpenHashMap$OpenEntry;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$transform$1;->apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Lscala/Some;

    iget-object v1, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$transform$1;->f$3:Lscala/Function2;

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v3

    invoke-virtual {v3}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value_$eq(Lscala/Option;)V

    return-void
.end method
