.class public abstract Lcom/squareup/okhttp/q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/squareup/okhttp/n;[B)Lcom/squareup/okhttp/q;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/squareup/okhttp/q;->c(Lcom/squareup/okhttp/n;[BII)Lcom/squareup/okhttp/q;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/squareup/okhttp/n;[BII)Lcom/squareup/okhttp/q;
    .locals 7

    if-eqz p1, :cond_0

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/squareup/okhttp/u/i;->a(JJJ)V

    new-instance v0, Lcom/squareup/okhttp/q$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/squareup/okhttp/q$a;-><init>(Lcom/squareup/okhttp/n;I[BI)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract d(Lokio/BufferedSink;)V
.end method
