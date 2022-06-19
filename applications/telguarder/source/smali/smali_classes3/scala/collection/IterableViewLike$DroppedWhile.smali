.class public interface abstract Lscala/collection/IterableViewLike$DroppedWhile;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/TraversableViewLike$DroppedWhile;
.implements Lscala/collection/IterableViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IterableViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "DroppedWhile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.DroppedWhile;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Transformed<TA;>;"
    }
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$IterableViewLike$DroppedWhile$$$outer()Lscala/collection/IterableViewLike;
.end method
