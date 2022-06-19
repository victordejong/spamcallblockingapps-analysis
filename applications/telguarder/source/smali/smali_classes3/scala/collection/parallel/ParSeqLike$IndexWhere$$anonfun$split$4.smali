.class public final Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$4;
.super Lscala/runtime/AbstractFunction2;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$IndexWhere;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$IndexWhere;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.IndexWhere;)V"
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(ILscala/collection/parallel/SeqSplitter;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)I"
        }
    .end annotation

    .line 371
    invoke-interface {p2}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 371
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    check-cast p2, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$4;->apply(ILscala/collection/parallel/SeqSplitter;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
