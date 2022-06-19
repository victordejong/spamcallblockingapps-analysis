.class public final Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;
.super Lscala/runtime/AbstractFunction1;
.source "OpenHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/OpenHashMap;->foreach(Lscala/Function1;)V
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

.field private final f$2:Lscala/Function1;

.field private final startModCount$1:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    iput-object p2, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->f$2:Lscala/Function1;

    iput p3, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->startModCount$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Lscala/collection/mutable/OpenHashMap$OpenEntry;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V

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

    .line 220
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->$outer:Lscala/collection/mutable/OpenHashMap;

    iget v0, v0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    iget v1, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->startModCount$1:I

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;->f$2:Lscala/Function1;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 220
    :cond_0
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Concurrent Modification"

    invoke-virtual {p1, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method
