.class public Le70$a;
.super Ls00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le70;-><init>(Lz00;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls00<",
        "Lc70;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le70;Lz00;)V
    .locals 0

    invoke-direct {p0, p2}, Ls00;-><init>(Lz00;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lr10;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lc70;

    invoke-virtual {p0, p1, p2}, Le70$a;->i(Lr10;Lc70;)V

    return-void
.end method

.method public i(Lr10;Lc70;)V
    .locals 10

    iget-object v0, p2, Lc70;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p2, Lc70;->b:Ld50;

    invoke-static {v0}, Li70;->h(Ld50;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lp10;->s(IJ)V

    iget-object v0, p2, Lc70;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lp10;->w(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v0}, Lp10;->o(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p2, Lc70;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lp10;->w(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, v0}, Lp10;->o(ILjava/lang/String;)V

    :goto_2
    iget-object v0, p2, Lc70;->e:Lu40;

    invoke-static {v0}, Lu40;->k(Lu40;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Lp10;->w(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1, v0}, Lp10;->t(I[B)V

    :goto_3
    iget-object v0, p2, Lc70;->f:Lu40;

    invoke-static {v0}, Lu40;->k(Lu40;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lp10;->w(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v1, v0}, Lp10;->t(I[B)V

    :goto_4
    const/4 v0, 0x7

    iget-wide v1, p2, Lc70;->g:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    const/16 v0, 0x8

    iget-wide v1, p2, Lc70;->h:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    const/16 v0, 0x9

    iget-wide v1, p2, Lc70;->i:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    const/16 v0, 0xa

    iget v1, p2, Lc70;->k:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    iget-object v0, p2, Lc70;->l:Lq40;

    invoke-static {v0}, Li70;->a(Lq40;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lp10;->s(IJ)V

    const/16 v0, 0xc

    iget-wide v1, p2, Lc70;->m:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    const/16 v0, 0xd

    iget-wide v1, p2, Lc70;->n:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    const/16 v0, 0xe

    iget-wide v1, p2, Lc70;->o:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    const/16 v0, 0xf

    iget-wide v1, p2, Lc70;->p:J

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    iget-object p2, p2, Lc70;->j:Ls40;

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0x17

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ls40;->b()Ly40;

    move-result-object v8

    invoke-static {v8}, Li70;->g(Ly40;)I

    move-result v8

    int-to-long v8, v8

    invoke-interface {p1, v6, v8, v9}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->g()Z

    move-result v6

    int-to-long v8, v6

    invoke-interface {p1, v5, v8, v9}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->h()Z

    move-result v5

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->f()Z

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->i()Z

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->c()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->d()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    invoke-virtual {p2}, Ls40;->a()Lt40;

    move-result-object p2

    invoke-static {p2}, Li70;->c(Lt40;)[B

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p1, v7, p2}, Lp10;->t(I[B)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v6}, Lp10;->w(I)V

    invoke-interface {p1, v5}, Lp10;->w(I)V

    invoke-interface {p1, v4}, Lp10;->w(I)V

    invoke-interface {p1, v3}, Lp10;->w(I)V

    invoke-interface {p1, v2}, Lp10;->w(I)V

    invoke-interface {p1, v1}, Lp10;->w(I)V

    invoke-interface {p1, v0}, Lp10;->w(I)V

    :goto_5
    invoke-interface {p1, v7}, Lp10;->w(I)V

    :goto_6
    return-void
.end method
