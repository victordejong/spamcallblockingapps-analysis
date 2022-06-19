.class public Lp6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp6/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lz4/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lz4/c<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp6/a;

    invoke-direct {v0, p0, p1}, Lp6/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class p0, Lp6/d;

    .line 3
    invoke-static {p0}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lz4/c$b;->d:I

    .line 5
    new-instance p1, Lz4/b;

    invoke-direct {p1, v0}, Lz4/b;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lz4/c$b;->e:Lz4/f;

    .line 7
    invoke-virtual {p0}, Lz4/c$b;->b()Lz4/c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lp6/f$a;)Lz4/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp6/f$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lz4/c<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lp6/d;

    .line 2
    invoke-static {v0}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lz4/c$b;->d:I

    .line 4
    const-class v2, Landroid/content/Context;

    .line 5
    new-instance v3, Lz4/m;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v0, v3}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    new-instance v1, Lp6/e;

    invoke-direct {v1, p0, p1}, Lp6/e;-><init>(Ljava/lang/String;Lp6/f$a;)V

    .line 7
    iput-object v1, v0, Lz4/c$b;->e:Lz4/f;

    .line 8
    invoke-virtual {v0}, Lz4/c$b;->b()Lz4/c;

    move-result-object p0

    return-object p0
.end method
