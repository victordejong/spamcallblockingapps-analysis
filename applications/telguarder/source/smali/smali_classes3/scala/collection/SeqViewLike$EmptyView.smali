.class public interface abstract Lscala/collection/SeqViewLike$EmptyView;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Transformed;
.implements Lscala/collection/IterableViewLike$EmptyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "EmptyView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Transformed<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.EmptyView;"
    }
.end annotation


# virtual methods
.method public abstract apply(I)Lscala/runtime/Nothing$;
.end method

.method public abstract length()I
.end method

.method public abstract synthetic scala$collection$SeqViewLike$EmptyView$$$outer()Lscala/collection/SeqViewLike;
.end method
