.class public interface abstract Lscala/collection/generic/BitOperations$Long;
.super Ljava/lang/Object;
.source "BitOperations.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/BitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Long"
.end annotation


# virtual methods
.method public abstract bitString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract bitString$default$2()Ljava/lang/String;
.end method

.method public abstract bits(J)Lscala/collection/immutable/IndexedSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract complement(J)J
.end method

.method public abstract hasMatch(JJJ)Z
.end method

.method public abstract highestOneBit(J)J
.end method

.method public abstract mask(JJ)J
.end method

.method public abstract shorter(JJ)Z
.end method

.method public abstract unsignedCompare(JJ)Z
.end method

.method public abstract zero(JJ)Z
.end method
