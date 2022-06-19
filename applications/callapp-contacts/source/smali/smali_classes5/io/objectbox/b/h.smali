.class public interface abstract Lio/objectbox/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SOURCE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TARGET:",
            "Ljava/lang/Object;",
            ">(TSOURCE;)",
            "Lio/objectbox/relation/ToOne<",
            "TTARGET;>;"
        }
    .end annotation
.end method
