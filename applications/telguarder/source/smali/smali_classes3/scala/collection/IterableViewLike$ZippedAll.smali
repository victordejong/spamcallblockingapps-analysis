.class public interface abstract Lscala/collection/IterableViewLike$ZippedAll;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IterableViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "ZippedAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A1:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/Tuple2<",
        "TA1;TB;>;>;"
    }
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA1;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract other()Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenIterable<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$IterableViewLike$ZippedAll$$$outer()Lscala/collection/IterableViewLike;
.end method

.method public abstract thatElem()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract thisElem()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA1;"
        }
    .end annotation
.end method

.method public abstract viewIdentifier()Ljava/lang/String;
.end method
