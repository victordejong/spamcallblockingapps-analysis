.class public interface abstract Lscala/collection/SeqViewLike$Prepended;
.super Ljava/lang/Object;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SeqViewLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "Prepended"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Transformed<TB;>;"
    }
.end annotation


# virtual methods
.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract fst()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract synthetic scala$collection$SeqViewLike$Prepended$$$outer()Lscala/collection/SeqViewLike;
.end method

.method public abstract viewIdentifier()Ljava/lang/String;
.end method
