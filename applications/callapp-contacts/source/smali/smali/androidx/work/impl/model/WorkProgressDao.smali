.class public interface abstract Landroidx/work/impl/model/WorkProgressDao;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract getProgressForWorkSpecId(Ljava/lang/String;)Landroidx/work/d;
.end method

.method public abstract getProgressForWorkSpecIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Landroidx/work/impl/model/WorkProgress;)V
.end method
