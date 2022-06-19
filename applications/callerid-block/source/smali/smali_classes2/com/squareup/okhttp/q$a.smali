.class final Lcom/squareup/okhttp/q$a;
.super Lcom/squareup/okhttp/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/q;->c(Lcom/squareup/okhttp/n;[BII)Lcom/squareup/okhttp/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/n;I[BI)V
    .locals 0

    iput p2, p0, Lcom/squareup/okhttp/q$a;->a:I

    iput-object p3, p0, Lcom/squareup/okhttp/q$a;->b:[B

    iput p4, p0, Lcom/squareup/okhttp/q$a;->c:I

    invoke-direct {p0}, Lcom/squareup/okhttp/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/q$a;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public d(Lokio/BufferedSink;)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/q$a;->b:[B

    iget v1, p0, Lcom/squareup/okhttp/q$a;->c:I

    iget v2, p0, Lcom/squareup/okhttp/q$a;->a:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
