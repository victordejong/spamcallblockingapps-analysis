.class public final Lscala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/SeqSplitter;->splitWithSignalling()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/SeqSplitter;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 548
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2;->$outer:Lscala/collection/parallel/SeqSplitter;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 548
    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2;->apply(Lscala/collection/parallel/SeqSplitter;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/SeqSplitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lscala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2;->$outer:Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/SeqSplitter;->signalDelegate_$eq(Lscala/collection/generic/Signalling;)V

    return-void
.end method
