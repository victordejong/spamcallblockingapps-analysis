.class Lcom/callerid/block/main/MainActivity$k$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/main/MainActivity$k;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$k$f;->a:Lcom/callerid/block/main/MainActivity$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$k$f;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object v2, v2, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->H(Landroid/content/Context;)J

    move-result-wide v2

    sget-boolean v4, Lcom/callerid/block/util/w;->a:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6700\u65b0\u901a\u8bdd\u8bb0\u5f55\u65f6\u95f4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/callerid/block/util/e;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tony"

    invoke-static {v5, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fdd\u5b58\u7684\u6700\u65b0\u901a\u8bdd\u8bb0\u5f55\u65f6\u95f4:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/callerid/block/util/e;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    cmp-long v4, v2, v0

    if-eqz v4, :cond_5

    cmp-long v4, v2, p1

    if-eqz v4, :cond_5

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$f;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callerid/block/util/n0;->H0(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/util/k;->n()V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$k$f;->a:Lcom/callerid/block/main/MainActivity$k;

    iget-object p1, p1, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->B(Landroid/content/Context;)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/callerid/block/util/e;->k(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/util/k;->o()V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/callerid/block/util/e;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/util/k;->r()V

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/util/k;->p()V

    goto :goto_1

    :cond_3
    cmp-long v2, v0, p1

    if-lez v2, :cond_4

    const-wide/32 p1, 0xa4cb800

    cmp-long v2, v0, p1

    if-gez v2, :cond_4

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/util/k;->s()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/util/k;->q()V

    :cond_5
    :goto_1
    return-void
.end method
