.class public interface abstract Lscala/collection/TraversableViewLike$Transformed;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/collection/TraversableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableViewLike;
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
        "Lscala/collection/TraversableView<",
        "TB;TColl;>;"
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

.method public abstract headOption()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract lastOption()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$TraversableViewLike$Transformed$$$outer()Lscala/collection/TraversableViewLike;
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract underlying()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation
.end method

.method public abstract viewIdString()Ljava/lang/String;
.end method
