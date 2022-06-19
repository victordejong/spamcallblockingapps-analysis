.class Lcom/allinone/callerid/mvc/controller/MainActivity$g0$d;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity$g0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/MainActivity$g0;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity$g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$g0$d;->a:Lcom/allinone/callerid/mvc/controller/MainActivity$g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->T()J

    move-result-wide v2

    .line 2
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v5, "yaohao"

    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6700\u65b0\u901a\u8bdd\u8bb0\u5f55\u65f6\u95f4:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fdd\u5b58\u7684\u6700\u65b0\u901a\u8bdd\u8bb0\u5f55\u65f6\u95f4:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    cmp-long v4, v2, v0

    if-eqz v4, :cond_5

    cmp-long v4, v2, p1

    if-eqz v4, :cond_5

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    .line 6
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/util/Date;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "GMT+8:00"

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/i;->s(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "\u65f6\u95f4\u4e3a\u5b89\u88c5\u5f53\u65e5"

    .line 8
    invoke-static {v5, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide p1

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/i;->a(JLjava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 10
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "\u65f6\u95f4\u4e3a\u5b89\u88c5\u540e\u6b21\u65e5"

    .line 11
    invoke-static {v5, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-static {p2}, Lcom/allinone/callerid/util/a1;->V0(Z)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "stay_not_alived"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "\u65f6\u95f4\u4e3a\u5b89\u88c52\u65e5\u4ee5\u540e"

    .line 15
    invoke-static {v5, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-static {p2}, Lcom/allinone/callerid/util/a1;->V0(Z)V

    :cond_5
    :goto_0
    return-void
.end method
