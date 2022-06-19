.class public final Lcom/google/api/client/http/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "gzip"

    return-object v0
.end method

.method public final a(Lcom/google/api/client/a/ad;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/api/client/http/h$1;

    invoke-direct {v0, p0, p2}, Lcom/google/api/client/http/h$1;-><init>(Lcom/google/api/client/http/h;Ljava/io/OutputStream;)V

    .line 49
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-interface {p1, p2}, Lcom/google/api/client/a/ad;->writeTo(Ljava/io/OutputStream;)V

    .line 52
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method
