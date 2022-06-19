.class public interface abstract Lscala/collection/mutable/HashTable$HashUtils;
.super Ljava/lang/Object;
.source "HashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/HashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HashUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract elemHashCode(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)I"
        }
    .end annotation
.end method

.method public abstract improve(II)I
.end method

.method public abstract sizeMapBucketBitSize()I
.end method

.method public abstract sizeMapBucketSize()I
.end method
