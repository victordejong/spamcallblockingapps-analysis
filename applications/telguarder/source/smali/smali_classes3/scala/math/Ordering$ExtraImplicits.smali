.class public interface abstract Lscala/math/Ordering$ExtraImplicits;
.super Ljava/lang/Object;
.source "Ordering.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtraImplicits"
.end annotation


# virtual methods
.method public abstract infixOrderingOps(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/math/Ordering$Ops;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "TT;>.Ops;"
        }
    .end annotation
.end method

.method public abstract seqDerivedOrdering(Lscala/math/Ordering;)Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CC::",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "TCC;>;"
        }
    .end annotation
.end method
