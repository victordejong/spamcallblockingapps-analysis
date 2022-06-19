.class public interface abstract Lscala/collection/generic/BitOperations$Int;
.super Ljava/lang/Object;
.source "BitOperations.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/BitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Int"
.end annotation


# virtual methods
.method public abstract bitString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract bitString$default$2()Ljava/lang/String;
.end method

.method public abstract bits(I)Lscala/collection/immutable/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract complement(I)I
.end method

.method public abstract hasMatch(III)Z
.end method

.method public abstract highestOneBit(I)I
.end method

.method public abstract mask(II)I
.end method

.method public abstract shorter(II)Z
.end method

.method public abstract unsignedCompare(II)Z
.end method

.method public abstract zero(II)Z
.end method
