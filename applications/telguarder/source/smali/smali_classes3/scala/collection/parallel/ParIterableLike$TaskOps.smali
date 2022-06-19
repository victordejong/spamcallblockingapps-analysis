.class public interface abstract Lscala/collection/parallel/ParIterableLike$TaskOps;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "TaskOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "Tp:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract compose(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$SeqComposite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R3:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "Tp2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;",
            "Lscala/Function2<",
            "TR;TR2;TR3;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.SeqComposite<TR;TR2;TR3;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;>;"
        }
    .end annotation
.end method

.method public abstract mapResult(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$ResultMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TR;TR1;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ResultMapping<TR;TTp;TR1;>;"
        }
    .end annotation
.end method

.method public abstract parallel(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/Function2;)Lscala/collection/parallel/ParIterableLike$ParComposite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R3:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "Tp2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;",
            "Lscala/Function2<",
            "TR;TR2;TR3;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ParComposite<TR;TR2;TR3;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR;TTp;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TR2;TTp2;>;>;"
        }
    .end annotation
.end method
