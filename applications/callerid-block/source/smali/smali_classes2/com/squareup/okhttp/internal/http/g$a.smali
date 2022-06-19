.class final Lcom/squareup/okhttp/internal/http/g$a;
.super Lcom/squareup/okhttp/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/s;-><init>()V

    return-void
.end method


# virtual methods
.method public p()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public x()Lokio/BufferedSource;
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    return-object v0
.end method
