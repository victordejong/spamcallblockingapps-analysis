.class public Lcom/callerid/block/util/j0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/util/j0;->c(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/callerid/block/util/j0$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/util/j0$a;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    return-void
.end method

.method private static c(I)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "testrecommend"

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "\u53bb\u7535\u6302\u65ad---->6"

    invoke-static {v1, p0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p0

    sget-object v0, Lcom/callerid/block/util/s0;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "\u6765\u7535\u5df2\u63a5\u540e\u7684\u6302\u65ad----->5"

    invoke-static {v1, p0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p0

    sget-object v0, Lcom/callerid/block/util/s0;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "\u672a\u63a5\u6302\u65ad----->4"

    invoke-static {v1, p0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p0

    sget-object v0, Lcom/callerid/block/util/s0;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
