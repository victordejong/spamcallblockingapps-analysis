.class public Lcom/callerid/block/util/w0/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "MissCallInstallTime"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/callerid/block/util/d0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/w0/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/callerid/block/util/d0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/w0/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lcom/callerid/block/util/d0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/w0/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static f()Z
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/w0/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/util/w0/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/w0/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/w0/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MissCallInstallTime"

    invoke-static {v1, v0}, Lcom/callerid/block/util/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u4fdd\u5b58\u7528\u6237\u7b2c\u4e00\u6b21\u5b89\u88c5\u7684\u65f6\u95f4"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
