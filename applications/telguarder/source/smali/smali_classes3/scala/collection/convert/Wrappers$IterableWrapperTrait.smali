.class public interface abstract Lscala/collection/convert/Wrappers$IterableWrapperTrait;
.super Ljava/lang/Object;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "IterableWrapperTrait"
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
.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lscala/collection/convert/Wrappers$IteratorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$IteratorWrapper<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$convert$Wrappers$IterableWrapperTrait$$$outer()Lscala/collection/convert/Wrappers;
.end method

.method public abstract size()I
.end method

.method public abstract underlying()Lscala/collection/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation
.end method
