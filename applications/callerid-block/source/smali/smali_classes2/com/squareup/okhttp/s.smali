.class public abstract Lcom/squareup/okhttp/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/okhttp/s;->x()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/okhttp/s;->x()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public abstract p()J
.end method

.method public abstract x()Lokio/BufferedSource;
.end method
