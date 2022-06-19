.class public final Lcom/squareup/okhttp/internal/http/k;
.super Lcom/squareup/okhttp/s;
.source ""


# instance fields
.field private final b:Lcom/squareup/okhttp/k;

.field private final c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/k;Lokio/BufferedSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/s;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/k;->b:Lcom/squareup/okhttp/k;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/k;->c:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public p()J
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/k;->b:Lcom/squareup/okhttp/k;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/j;->c(Lcom/squareup/okhttp/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/k;->c:Lokio/BufferedSource;

    return-object v0
.end method
