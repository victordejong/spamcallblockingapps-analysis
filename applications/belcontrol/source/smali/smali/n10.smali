.class public interface abstract Ln10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract beginTransaction()V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract endTransaction()V
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract k(Lq10;)Landroid/database/Cursor;
.end method

.method public abstract q(Ljava/lang/String;)Lr10;
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract u(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract x()Z
.end method
