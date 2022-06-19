.class public final Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;
.super Lscala/runtime/AbstractFunction0;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashMap;->readObject(Ljava/io/ObjectInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParHashMap;

.field private final in$1:Ljava/io/ObjectInputStream;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMap;Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;->$outer:Lscala/collection/parallel/mutable/ParHashMap;

    iput-object p2, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;->in$1:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;->apply()Lscala/collection/mutable/DefaultEntry;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/mutable/DefaultEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;->$outer:Lscala/collection/parallel/mutable/ParHashMap;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;->in$1:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;->in$1:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/parallel/mutable/ParHashMap;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

    move-result-object v0

    return-object v0
.end method
