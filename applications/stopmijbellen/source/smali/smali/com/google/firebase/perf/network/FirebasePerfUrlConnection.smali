.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lm6/e;->s:Lm6/e;

    .line 2
    new-instance v1, Ln6/e;

    invoke-direct {v1}, Ln6/e;-><init>()V

    .line 3
    invoke-virtual {v1}, Ln6/e;->c()V

    .line 4
    iget-wide v2, v1, Ln6/e;->a:J

    .line 5
    new-instance v4, Lh6/b;

    invoke-direct {v4, v0}, Lh6/b;-><init>(Lm6/e;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 7
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Lj6/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v0, v1, v4}, Lj6/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ln6/e;Lh6/b;)V

    .line 9
    invoke-virtual {v5}, Lj6/d;->getContent()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 11
    new-instance v5, Lj6/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v0, v1, v4}, Lj6/c;-><init>(Ljava/net/HttpURLConnection;Ln6/e;Lh6/b;)V

    .line 12
    invoke-virtual {v5}, Lj6/c;->getContent()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v4, v2, v3}, Lh6/b;->g(J)Lh6/b;

    .line 15
    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lh6/b;->j(J)Lh6/b;

    .line 16
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v4, p0}, Lh6/b;->m(Ljava/lang/String;)Lh6/b;

    .line 18
    invoke-static {v4}, Lj6/h;->c(Lh6/b;)V

    .line 19
    throw v0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    sget-object v0, Lm6/e;->s:Lm6/e;

    .line 21
    new-instance v1, Ln6/e;

    invoke-direct {v1}, Ln6/e;-><init>()V

    .line 22
    invoke-virtual {v1}, Ln6/e;->c()V

    .line 23
    iget-wide v2, v1, Ln6/e;->a:J

    .line 24
    new-instance v4, Lh6/b;

    invoke-direct {v4, v0}, Lh6/b;-><init>(Lm6/e;)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 26
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 27
    new-instance v5, Lj6/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v0, v1, v4}, Lj6/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ln6/e;Lh6/b;)V

    .line 28
    iget-object v0, v5, Lj6/d;->a:Lj6/e;

    invoke-virtual {v0, p1}, Lj6/e;->c([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 30
    new-instance v5, Lj6/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v0, v1, v4}, Lj6/c;-><init>(Ljava/net/HttpURLConnection;Ln6/e;Lh6/b;)V

    .line 31
    iget-object v0, v5, Lj6/c;->a:Lj6/e;

    invoke-virtual {v0, p1}, Lj6/e;->c([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {v4, v2, v3}, Lh6/b;->g(J)Lh6/b;

    .line 34
    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lh6/b;->j(J)Lh6/b;

    .line 35
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-virtual {v4, p0}, Lh6/b;->m(Ljava/lang/String;)Lh6/b;

    .line 37
    invoke-static {v4}, Lj6/h;->c(Lh6/b;)V

    .line 38
    throw p1
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lj6/d;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Ln6/e;

    invoke-direct {v1}, Ln6/e;-><init>()V

    .line 3
    sget-object v2, Lm6/e;->s:Lm6/e;

    .line 4
    new-instance v3, Lh6/b;

    invoke-direct {v3, v2}, Lh6/b;-><init>(Lm6/e;)V

    .line 5
    invoke-direct {v0, p0, v1, v3}, Lj6/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ln6/e;Lh6/b;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lj6/c;

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Ln6/e;

    invoke-direct {v1}, Ln6/e;-><init>()V

    .line 8
    sget-object v2, Lm6/e;->s:Lm6/e;

    .line 9
    new-instance v3, Lh6/b;

    invoke-direct {v3, v2}, Lh6/b;-><init>(Lm6/e;)V

    .line 10
    invoke-direct {v0, p0, v1, v3}, Lj6/c;-><init>(Ljava/net/HttpURLConnection;Ln6/e;Lh6/b;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lm6/e;->s:Lm6/e;

    .line 2
    new-instance v1, Ln6/e;

    invoke-direct {v1}, Ln6/e;-><init>()V

    .line 3
    invoke-virtual {v1}, Ln6/e;->c()V

    .line 4
    iget-wide v2, v1, Ln6/e;->a:J

    .line 5
    new-instance v4, Lh6/b;

    invoke-direct {v4, v0}, Lh6/b;-><init>(Lm6/e;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 7
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Lj6/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v0, v1, v4}, Lj6/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ln6/e;Lh6/b;)V

    .line 9
    invoke-virtual {v5}, Lj6/d;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 11
    new-instance v5, Lj6/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v0, v1, v4}, Lj6/c;-><init>(Ljava/net/HttpURLConnection;Ln6/e;Lh6/b;)V

    .line 12
    invoke-virtual {v5}, Lj6/c;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v4, v2, v3}, Lh6/b;->g(J)Lh6/b;

    .line 15
    invoke-virtual {v1}, Ln6/e;->a()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lh6/b;->j(J)Lh6/b;

    .line 16
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v4, p0}, Lh6/b;->m(Ljava/lang/String;)Lh6/b;

    .line 18
    invoke-static {v4}, Lj6/h;->c(Lh6/b;)V

    .line 19
    throw v0
.end method
