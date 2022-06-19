.class public interface abstract Lscala/collection/IterableViewLike$Zipped;
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
    name = "Zipped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
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

.method public abstract synthetic scala$collection$IterableViewLike$Zipped$$$outer()Lscala/collection/IterableViewLike;
.end method

.method public abstract viewIdentifier()Ljava/lang/String;
.end method
