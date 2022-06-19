.class public final Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$3;
.super Lscala/runtime/AbstractFunction2;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/HashMapCombiner;->result()Lscala/collection/parallel/immutable/ParHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/HashMap<",
        "TK;TV;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(ILscala/collection/immutable/HashMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 186
    invoke-virtual {p2}, Lscala/collection/immutable/HashMap;->size()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    check-cast p2, Lscala/collection/immutable/HashMap;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$3;->apply(ILscala/collection/immutable/HashMap;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
