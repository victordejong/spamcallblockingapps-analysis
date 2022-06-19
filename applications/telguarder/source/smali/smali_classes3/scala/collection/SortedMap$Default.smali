.class public interface abstract Lscala/collection/SortedMap$Default;
.super Ljava/lang/Object;
.source "SortedMap.scala"

# interfaces
.implements Lscala/collection/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/SortedMap<",
        "TA;TB;>;"
    }
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract $plus(Lscala/Tuple2;)Lscala/collection/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation
.end method
