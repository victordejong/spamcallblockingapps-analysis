.class public final Lscala/collection/parallel/mutable/LazyCombiner$$anonfun$size$1;
.super Lscala/runtime/AbstractFunction2;
.source "LazyCombiner.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/LazyCombiner;->size()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/Object;",
        "TBuff;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/LazyCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/LazyCombiner<",
            "TElem;TTo;TBuff;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(ILscala/collection/generic/Growable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITBuff;)I"
        }
    .end annotation

    .line 39
    check-cast p2, Lscala/collection/generic/Sizing;

    invoke-interface {p2}, Lscala/collection/generic/Sizing;->size()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    check-cast p2, Lscala/collection/generic/Growable;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/LazyCombiner$$anonfun$size$1;->apply(ILscala/collection/generic/Growable;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
