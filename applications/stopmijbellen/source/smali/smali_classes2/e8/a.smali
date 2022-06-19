.class public Le8/a;
.super Le8/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le8/l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lw7/e;Ln7/h;Lm7/d;)Lm7/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/e;",
            "Ln7/h;",
            "Lm7/d<",
            "Lw7/q$a;",
            ">;)",
            "Lm7/c<",
            "Lk7/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Ln7/h;->c:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p2, Ln7/h;->c:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Le8/g;

    invoke-direct {v0}, Le8/g;-><init>()V

    .line 6
    iget-object v1, p1, Lw7/e;->a:Ln7/a;

    .line 7
    iget-object v7, v1, Ln7/a;->d:Lk7/h;

    .line 8
    new-instance v8, Le8/a$a;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Le8/a$a;-><init>(Le8/a;Lw7/e;Ln7/h;Le8/g;Lm7/d;)V

    const-wide/16 p1, 0x0

    .line 9
    invoke-virtual {v7, v8, p1, p2}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
