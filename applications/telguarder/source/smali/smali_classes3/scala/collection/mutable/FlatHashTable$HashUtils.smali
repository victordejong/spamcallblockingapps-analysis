.class public interface abstract Lscala/collection/mutable/FlatHashTable$HashUtils;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/FlatHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HashUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract entryToElem(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract improve(II)I
.end method

.method public abstract sizeMapBucketBitSize()I
.end method

.method public abstract sizeMapBucketSize()I
.end method
