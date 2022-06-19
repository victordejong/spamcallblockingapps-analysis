.class public final Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;
.super Lscala/runtime/AbstractFunction1;
.source "OpenHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/OpenHashMap;->retain(Lscala/Function2;)Lscala/collection/mutable/OpenHashMap;
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
.field private final synthetic $outer:Lscala/collection/mutable/OpenHashMap;

.field private final f$4:Lscala/Function2;


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

    .line 235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    iput-object p2, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;->f$4:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Lscala/collection/mutable/OpenHashMap$OpenEntry;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;->apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V

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

    .line 235
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;->f$4:Lscala/Function2;

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v2

    invoke-virtual {v2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p1, v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value_$eq(Lscala/Option;)V

    iget-object p1, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$size_$eq(I)V

    iget-object p1, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted_$eq(I)V

    :cond_0
    return-void
.end method
