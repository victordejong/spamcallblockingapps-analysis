.class public Le8/f;
.super Le8/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le8/k;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lw7/e;Ln7/h;Lm7/d;)Lm7/c;
    .locals 3
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

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p2, Ln7/h;->c:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lw7/e;->a:Ln7/a;

    .line 6
    new-instance v0, Le8/f$a;

    invoke-direct {v0, p0, p3}, Le8/f$a;-><init>(Le8/f;Lm7/d;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p3, Ln7/a$d;

    invoke-direct {p3, p1, v1}, Ln7/a$d;-><init>(Ln7/a;Ln7/a$a;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3, v0}, Ln7/a;->c(Ln7/h;ILn7/a$d;Lq7/a;)V

    return-object p3

    :cond_1
    :goto_0
    return-object v1
.end method
