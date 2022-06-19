.class public final Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$split$1;
.super Lscala/runtime/AbstractFunction2;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/IterableSplitter$Taken;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/IterableSplitter$Taken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Taken;)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 439
    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$Taken$$anonfun$split$1;->apply(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 439
    invoke-interface {p1, p2}, Lscala/collection/parallel/IterableSplitter;->take(I)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method
