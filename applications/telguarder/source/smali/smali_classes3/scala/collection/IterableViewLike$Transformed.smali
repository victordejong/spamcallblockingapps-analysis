.class public interface abstract Lscala/collection/IterableViewLike$Transformed;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableView;
.implements Lscala/collection/TraversableViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IterableViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Transformed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableView<",
        "TB;TColl;>;",
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.Transformed<TB;>;"
    }
.end annotation


# virtual methods
.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)V"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$IterableViewLike$Transformed$$$outer()Lscala/collection/IterableViewLike;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
