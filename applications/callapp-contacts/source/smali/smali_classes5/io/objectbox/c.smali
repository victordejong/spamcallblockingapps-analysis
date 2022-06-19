.class public interface abstract Lio/objectbox/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getAllProperties()[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/objectbox/g<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getCursorFactory()Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getDbName()Ljava/lang/String;
.end method

.method public abstract getEntityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getEntityId()I
.end method

.method public abstract getEntityName()Ljava/lang/String;
.end method

.method public abstract getIdGetter()Lio/objectbox/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "TT;>;"
        }
    .end annotation
.end method
