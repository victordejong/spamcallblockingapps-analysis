.class public interface abstract Lscala/collection/TraversableViewLike$EmptyView;
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
    name = "EmptyView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/runtime/Nothing$;",
        ">;"
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
            "Lscala/runtime/Nothing$;",
            "TU;>;)V"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract synthetic scala$collection$TraversableViewLike$EmptyView$$$outer()Lscala/collection/TraversableViewLike;
.end method
