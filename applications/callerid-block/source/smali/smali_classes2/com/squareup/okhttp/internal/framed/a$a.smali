.class public interface abstract Lcom/squareup/okhttp/internal/framed/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract data(ZILokio/BufferedSource;I)V
.end method

.method public abstract f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end method

.method public abstract g(ZLcom/squareup/okhttp/internal/framed/m;)V
.end method

.method public abstract h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract i(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
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

.method public abstract windowUpdate(IJ)V
.end method
