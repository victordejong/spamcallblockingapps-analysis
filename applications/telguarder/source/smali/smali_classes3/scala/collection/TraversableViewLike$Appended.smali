.class public interface abstract Lscala/collection/TraversableViewLike$Appended;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/collection/TraversableViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Appended"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.method public abstract rest()Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenTraversable<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$TraversableViewLike$Appended$$$outer()Lscala/collection/TraversableViewLike;
.end method

.method public abstract viewIdentifier()Ljava/lang/String;
.end method
