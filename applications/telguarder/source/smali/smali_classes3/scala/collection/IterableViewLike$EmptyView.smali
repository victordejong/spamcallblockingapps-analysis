.class public interface abstract Lscala/collection/IterableViewLike$EmptyView;
.super Ljava/lang/Object;
.source "IterableViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Transformed;
.implements Lscala/collection/TraversableViewLike$EmptyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IterableViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "EmptyView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/collection/TraversableViewLike<",
        "TA;TColl;TThis;>.EmptyView;"
    }
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$IterableViewLike$EmptyView$$$outer()Lscala/collection/IterableViewLike;
.end method
