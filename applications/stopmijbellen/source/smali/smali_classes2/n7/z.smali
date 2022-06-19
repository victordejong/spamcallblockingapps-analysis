.class public Ln7/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln7/z$a;
    }
.end annotation


# direct methods
.method public static a(Lk7/m;Ln7/w;Z)Lk7/m;
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "Content-Length"

    .line 1
    iget-object v3, p1, Ln7/w;->a:Ln7/a0;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v2, v0

    :goto_0
    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    const-wide/16 v0, 0x0

    cmp-long p2, v2, v0

    if-gez p2, :cond_1

    .line 3
    invoke-interface {p0}, Lk7/m;->a()Lk7/h;

    move-result-object p1

    new-instance p2, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v0, "not using chunked encoding, and no content-length found."

    invoke-direct {p2, v0}, Lcom/koushikdutta/async/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ln7/z$a;->p(Lk7/h;Ljava/lang/Exception;)Ln7/z$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lk7/r;->o(Lk7/m;)V

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-interface {p0}, Lk7/m;->a()Lk7/h;

    move-result-object p1

    invoke-static {p1, v4}, Ln7/z$a;->p(Lk7/h;Ljava/lang/Exception;)Ln7/z$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lk7/r;->o(Lk7/m;)V

    return-object p1

    .line 7
    :cond_2
    new-instance p2, Lr7/c;

    invoke-direct {p2, v2, v3}, Lr7/c;-><init>(J)V

    .line 8
    invoke-virtual {p2, p0}, Lk7/r;->o(Lk7/m;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p1, Ln7/w;->a:Ln7/a0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance p2, Lr7/a;

    invoke-direct {p2}, Lr7/a;-><init>()V

    .line 12
    invoke-virtual {p2, p0}, Lk7/r;->o(Lk7/m;)V

    :goto_1
    move-object p0, p2

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 13
    invoke-interface {p0}, Lk7/m;->a()Lk7/h;

    move-result-object p1

    invoke-static {p1, v4}, Ln7/z$a;->p(Lk7/h;Ljava/lang/Exception;)Ln7/z$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lk7/r;->o(Lk7/m;)V

    return-object p1

    .line 15
    :cond_5
    :goto_2
    iget-object p2, p1, Ln7/w;->a:Ln7/a0;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Encoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "gzip"

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    new-instance p1, Lr7/f;

    invoke-direct {p1}, Lr7/f;-><init>()V

    .line 18
    invoke-virtual {p1, p0}, Lk7/r;->o(Lk7/m;)V

    :goto_3
    move-object p0, p1

    goto :goto_4

    .line 19
    :cond_6
    iget-object p1, p1, Ln7/w;->a:Ln7/a0;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deflate"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    new-instance p1, Lr7/g;

    invoke-direct {p1}, Lr7/g;-><init>()V

    .line 22
    invoke-virtual {p1, p0}, Lk7/r;->o(Lk7/m;)V

    goto :goto_3

    :cond_7
    :goto_4
    return-object p0
.end method
