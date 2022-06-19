.class public interface abstract Lscala/math/Ordering$OptionOrdering;
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
    name = "OptionOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/math/Ordering<",
        "Lscala/Option<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract compare(Lscala/Option;Lscala/Option;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TT;>;",
            "Lscala/Option<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract optionOrdering()Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "TT;>;"
        }
    .end annotation
.end method
