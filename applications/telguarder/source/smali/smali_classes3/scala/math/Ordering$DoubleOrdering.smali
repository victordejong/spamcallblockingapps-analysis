.class public interface abstract Lscala/math/Ordering$DoubleOrdering;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/Ordering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DoubleOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Ordering<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compare(DD)I
.end method

.method public abstract equiv(DD)Z
.end method

.method public abstract gt(DD)Z
.end method

.method public abstract gteq(DD)Z
.end method

.method public abstract lt(DD)Z
.end method

.method public abstract lteq(DD)Z
.end method

.method public abstract max(DD)D
.end method

.method public abstract min(DD)D
.end method

.method public abstract reverse()Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
