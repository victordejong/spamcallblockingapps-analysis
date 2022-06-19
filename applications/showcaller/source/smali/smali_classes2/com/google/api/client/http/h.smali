.class public Lcom/google/api/client/http/h;
.super Ljava/lang/Object;
.source "GZipEncoding.java"

# interfaces
.implements Lcom/google/api/client/http/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/util/z;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/http/h$a;

    invoke-direct {v0, p0, p2}, Lcom/google/api/client/http/h$a;-><init>(Lcom/google/api/client/http/h;Ljava/io/OutputStream;)V

    .line 2
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/google/api/client/util/z;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "gzip"

    return-object v0
.end method
