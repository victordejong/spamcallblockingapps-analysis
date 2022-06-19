.class public interface abstract Lscala/collection/SeqViewLike$Filtered;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/IterableViewLike$Filtered;
.implements Lscala/collection/SeqViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Filtered"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/IterableViewLike<",
        "TA;TColl;TThis;>.Filtered;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Transformed<TA;>;"
    }
.end annotation


# virtual methods
.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract index()[I
.end method

.method public abstract length()I
.end method

.method public abstract synthetic scala$collection$SeqViewLike$Filtered$$$outer()Lscala/collection/SeqViewLike;
.end method
