.class public interface abstract Lcom/squareup/okhttp/internal/framed/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract Q(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract S(Lcom/squareup/okhttp/internal/framed/m;)V
.end method

.method public abstract connectionPreface()V
.end method

.method public abstract data(ZILokio/Buffer;I)V
.end method

.method public abstract f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end method

.method public abstract flush()V
.end method

.method public abstract k(Lcom/squareup/okhttp/internal/framed/m;)V
.end method

.method public abstract maxDataLength()I
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract t(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
