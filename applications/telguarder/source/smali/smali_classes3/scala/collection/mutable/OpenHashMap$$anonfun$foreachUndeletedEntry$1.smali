.class public final Lscala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1;
.super Lscala/runtime/AbstractFunction1;
.source "OpenHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/OpenHashMap;->foreachUndeletedEntry(Lscala/Function1;)V
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
.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 226
    iput-object p2, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, Lscala/collection/mutable/OpenHashMap$OpenEntry;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1;->apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1;->f$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
