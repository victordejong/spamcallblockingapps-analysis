.class public final Lp7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp7/b;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lp7/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lp7/c;->c:I

    .line 3
    iput p1, p0, Lp7/c;->d:I

    .line 4
    iput p1, p0, Lp7/c;->e:I

    .line 5
    iput-object p2, p0, Lp7/c;->a:Lp7/b;

    .line 6
    new-instance p1, Lp7/c$a;

    invoke-direct {p1, p0}, Lp7/c$a;-><init>(Lp7/c;)V

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Lp7/b;->f()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 8
    invoke-virtual {p2, v0}, Lp7/b;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v0}, Lp7/b;->e(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cache-Control"

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v2, p1}, Lp7/a;->a(Ljava/lang/String;Lp7/a$a;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "Pragma"

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v1, "no-cache"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 14
    iput-boolean v4, p0, Lp7/c;->b:Z

    goto/16 :goto_1

    :cond_1
    const-string v3, "If-None-Match"

    .line 15
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    iput-object v2, p0, Lp7/c;->h:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "If-Modified-Since"

    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    iput-object v2, p0, Lp7/c;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, "Authorization"

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    iput-boolean v4, p0, Lp7/c;->f:Z

    goto :goto_1

    :cond_4
    const-string v3, "Content-Length"

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-string v2, "Transfer-Encoding"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "User-Agent"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const-string v2, "Host"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const-string v2, "Connection"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v2, "Accept-Encoding"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    const-string v2, "Content-Type"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    const-string v2, "Proxy-Authorization"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :catch_0
    :cond_c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp7/c;->g:Ljava/lang/String;

    const-string v1, "If-Modified-Since"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp7/c;->a:Lp7/b;

    invoke-virtual {v0, v1}, Lp7/b;->g(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Ln7/x;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lp7/c;->a:Lp7/b;

    invoke-virtual {v0, v1, p1}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lp7/c;->g:Ljava/lang/String;

    return-void
.end method
