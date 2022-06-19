.class public Ljd1;
.super Lmd1;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmd1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lmd1$b;Landroid/content/Context;)Z
    .locals 4

    iget-wide v0, p0, Lmd1;->b:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-wide v0, p0, Lmd1;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmd1;->b:J

    :cond_0
    sget-object p2, Lmd1$b;->a:Lmd1$b;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object p1, Lr71$a;->K:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    sget-object p1, Lr71$a;->X0:Lr71$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lr71$a;->w1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->k()V

    return p2
.end method
