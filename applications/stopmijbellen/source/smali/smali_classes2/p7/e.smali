.class public final Lp7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lp7/b;

.field public c:Ljava/util/Date;

.field public d:Ljava/util/Date;

.field public e:Ljava/util/Date;

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:I

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lp7/b;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lp7/e;->j:I

    .line 3
    iput v0, p0, Lp7/e;->k:I

    .line 4
    iput v0, p0, Lp7/e;->o:I

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lp7/e;->p:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lp7/e;->a:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lp7/e;->b:Lp7/b;

    .line 8
    new-instance p1, Lp7/e$a;

    invoke-direct {p1, p0}, Lp7/e$a;-><init>(Lp7/e;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Lp7/b;->f()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 10
    invoke-virtual {p2, v1}, Lp7/b;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p2, v1}, Lp7/b;->e(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cache-Control"

    .line 12
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {v3, p1}, Lp7/a;->a(Ljava/lang/String;Lp7/a$a;)V

    goto/16 :goto_2

    :cond_0
    const-string v4, "Date"

    .line 14
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-static {v3}, Ln7/x;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lp7/e;->c:Ljava/util/Date;

    goto/16 :goto_2

    :cond_1
    const-string v4, "Expires"

    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    invoke-static {v3}, Ln7/x;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lp7/e;->e:Ljava/util/Date;

    goto/16 :goto_2

    :cond_2
    const-string v4, "Last-Modified"

    .line 18
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19
    invoke-static {v3}, Ln7/x;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lp7/e;->d:Ljava/util/Date;

    goto/16 :goto_2

    :cond_3
    const-string v4, "ETag"

    .line 20
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    iput-object v3, p0, Lp7/e;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v4, "Pragma"

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "no-cache"

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lp7/e;->h:Z

    goto/16 :goto_2

    :cond_5
    const-string v4, "Age"

    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    invoke-static {v3}, Lp7/a;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lp7/e;->o:I

    goto/16 :goto_2

    :cond_6
    const-string v4, "Vary"

    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 28
    iget-object v2, p0, Lp7/e;->p:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 29
    new-instance v2, Ljava/util/TreeSet;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lp7/e;->p:Ljava/util/Set;

    :cond_7
    const-string v2, ","

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_10

    aget-object v5, v2, v4

    .line 31
    iget-object v6, p0, Lp7/e;->p:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const-string v4, "Content-Encoding"

    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    const-string v4, "Transfer-Encoding"

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    const-string v4, "Content-Length"

    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 35
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_b
    const-string v4, "Connection"

    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_2

    :cond_c
    const-string v4, "Proxy-Authenticate"

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_2

    :cond_d
    const-string v4, "WWW-Authenticate"

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_2

    :cond_e
    const-string v4, "X-Android-Sent-Millis"

    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 40
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lp7/e;->f:J

    goto :goto_2

    :cond_f
    const-string v4, "X-Android-Received-Millis"

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 42
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lp7/e;->g:J

    :catch_0
    :cond_10
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lp7/c;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp7/e;->b:Lp7/b;

    .line 2
    iget v0, v0, Lp7/b;->c:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-boolean p1, p1, Lp7/c;->f:Z

    if-eqz p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lp7/e;->l:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lp7/e;->m:Z

    if-nez p1, :cond_1

    iget p1, p0, Lp7/e;->k:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 5
    :cond_1
    iget-boolean p1, p0, Lp7/e;->i:Z

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
