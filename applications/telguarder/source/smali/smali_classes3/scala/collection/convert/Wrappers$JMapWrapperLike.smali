.class public interface abstract Lscala/collection/convert/Wrappers$JMapWrapperLike;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Lscala/collection/mutable/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "JMapWrapperLike"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "Repr::",
        "Lscala/collection/mutable/MapLike<",
        "TA;TB;TRepr;>;:",
        "Lscala/collection/mutable/Map<",
        "TA;TB;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Map<",
        "TA;TB;>;"
    }
.end annotation


# virtual methods
.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/convert/Wrappers$JMapWrapperLike<",
            "TA;TB;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$JMapWrapperLike<",
            "TA;TB;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract empty()Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

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

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$convert$Wrappers$JMapWrapperLike$$$outer()Lscala/collection/convert/Wrappers;
.end method

.method public abstract size()I
.end method

.method public abstract underlying()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation
.end method
