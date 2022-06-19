.class public interface abstract Lscala/collection/parallel/ParSeqLike$Accessor;
.super Ljava/lang/Object;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParSeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Accessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "Tp:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Accessor<TR;TTp;>;"
    }
.end annotation


# virtual methods
.method public abstract pit()Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end method
