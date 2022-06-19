.class public interface abstract Lscala/math/Ordering$FloatOrdering;
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
    name = "FloatOrdering"
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
.method public abstract compare(FF)I
.end method

.method public abstract equiv(FF)Z
.end method

.method public abstract gt(FF)Z
.end method

.method public abstract gteq(FF)Z
.end method

.method public abstract lt(FF)Z
.end method

.method public abstract lteq(FF)Z
.end method

.method public abstract max(FF)F
.end method

.method public abstract min(FF)F
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
