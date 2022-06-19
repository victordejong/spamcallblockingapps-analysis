.class public Ln7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/net/Uri;

.field public d:Ln7/w;

.field public e:Z

.field public f:Lo7/a;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ln7/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1"

    .line 2
    iput-object v0, p0, Ln7/h;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ln7/w;

    invoke-direct {v0}, Ln7/w;-><init>()V

    iput-object v0, p0, Ln7/h;->d:Ln7/w;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ln7/h;->e:Z

    const/16 v0, 0x7530

    .line 5
    iput v0, p0, Ln7/h;->g:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ln7/h;->i:I

    .line 7
    iput-object p2, p0, Ln7/h;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Ln7/h;->c:Landroid/net/Uri;

    if-nez p3, :cond_0

    .line 9
    new-instance p2, Ln7/w;

    invoke-direct {p2}, Ln7/w;-><init>()V

    iput-object p2, p0, Ln7/h;->d:Ln7/w;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p3, p0, Ln7/h;->d:Ln7/w;

    :goto_0
    if-nez p3, :cond_1

    .line 11
    iget-object p2, p0, Ln7/h;->d:Ln7/w;

    invoke-static {p2, p1}, Ln7/h;->f(Ln7/w;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public static f(Ln7/w;Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, ":"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Host"

    .line 4
    invoke-virtual {p0, p1, v0}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    :cond_1
    const-string p1, "http.agent"

    .line 5
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "Java"

    .line 6
    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "User-Agent"

    .line 7
    invoke-virtual {p0, v0, p1}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    const-string p1, "Accept-Encoding"

    const-string v0, "gzip, deflate"

    .line 8
    invoke-virtual {p0, p1, v0}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    const-string p1, "Connection"

    const-string v0, "keep-alive"

    .line 9
    invoke-virtual {p0, p1, v0}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    const-string p1, "Accept"

    const-string v0, "*/*"

    .line 10
    invoke-virtual {p0, p1, v0}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Ln7/h;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ln7/h;->l:J

    sub-long v2, v0, v2

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Ln7/h;->c:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "(%d ms) %s: %s"

    .line 5
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln7/h;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ln7/h;->k:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ln7/h;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln7/h;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ln7/h;->k:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ln7/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln7/h;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Ln7/h;->k:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ln7/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln7/h;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ln7/h;->k:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ln7/h;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ln7/h;->d:Ln7/w;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Ln7/h;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
