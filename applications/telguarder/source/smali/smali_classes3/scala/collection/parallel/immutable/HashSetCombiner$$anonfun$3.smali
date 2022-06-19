.class public final Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$3;
.super Lscala/runtime/AbstractFunction2;
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
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/HashSet<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
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

    .line 166
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(ILscala/collection/immutable/HashSet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/immutable/HashSet<",
            "TT;>;)I"
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Lscala/collection/immutable/HashSet;->size()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    check-cast p2, Lscala/collection/immutable/HashSet;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$3;->apply(ILscala/collection/immutable/HashSet;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
