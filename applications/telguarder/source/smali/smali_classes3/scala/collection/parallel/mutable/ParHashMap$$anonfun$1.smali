.class public final Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;
.super Lscala/runtime/AbstractFunction2$mcIII$sp;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashMap;->scala$collection$parallel$mutable$ParHashMap$$checkBucket(I)Lscala/collection/immutable/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParHashMap;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;->$outer:Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2$mcIII$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(II)I
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;->apply$mcIII$sp(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;->apply(II)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcIII$sp(II)I
    .locals 2

    .line 131
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;->$outer:Lscala/collection/parallel/mutable/ParHashMap;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMap;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lscala/collection/parallel/mutable/ParHashMap;->scala$collection$parallel$mutable$ParHashMap$$count$1(Lscala/collection/mutable/HashEntry;)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method
