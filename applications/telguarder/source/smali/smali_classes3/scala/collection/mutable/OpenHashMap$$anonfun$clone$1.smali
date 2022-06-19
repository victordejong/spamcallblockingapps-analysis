.class public final Lscala/collection/mutable/OpenHashMap$$anonfun$clone$1;
.super Lscala/runtime/AbstractFunction1;
.source "OpenHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/OpenHashMap;->clone()Lscala/collection/mutable/OpenHashMap;
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
.field private final it$1:Lscala/collection/mutable/OpenHashMap;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/OpenHashMap;Lscala/collection/mutable/OpenHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 203
    iput-object p2, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$clone$1;->it$1:Lscala/collection/mutable/OpenHashMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 203
    check-cast p1, Lscala/collection/mutable/OpenHashMap$OpenEntry;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$clone$1;->apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$clone$1;->it$1:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->hash()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$put(Ljava/lang/Object;ILjava/lang/Object;)Lscala/Option;

    return-void
.end method
