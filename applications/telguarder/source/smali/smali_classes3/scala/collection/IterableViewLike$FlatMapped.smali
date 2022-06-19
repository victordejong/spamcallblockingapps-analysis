.class public interface abstract Lscala/collection/IterableViewLike$FlatMapped;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/TraversableViewLike$FlatMapped;
.implements Lscala/collection/IterableViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IterableViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "FlatMapped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.FlatMapped<TB;>;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Transformed<TB;>;"
    }
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$IterableViewLike$FlatMapped$$$outer()Lscala/collection/IterableViewLike;
.end method
