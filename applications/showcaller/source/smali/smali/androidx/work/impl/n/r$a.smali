.class Landroidx/work/impl/n/r$a;
.super Landroidx/room/b;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/n/r;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Landroidx/work/impl/n/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroidx/work/impl/n/r;


# direct methods
.method constructor <init>(Landroidx/work/impl/n/r;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/n/r$a;->d:Landroidx/work/impl/n/r;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb/r/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/work/impl/n/p;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/n/r$a;->i(Lb/r/a/f;Landroidx/work/impl/n/p;)V

    return-void
.end method

.method public i(Lb/r/a/f;Landroidx/work/impl/n/p;)V
    .locals 10

    .line 1
    iget-object v0, p2, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->o(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    invoke-static {v0}, Landroidx/work/impl/n/v;->j(Landroidx/work/WorkInfo$State;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 5
    invoke-interface {p1, v1, v2, v3}, Lb/r/a/d;->F(IJ)V

    .line 6
    iget-object v0, p2, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->o(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p2, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->o(ILjava/lang/String;)V

    .line 12
    :goto_2
    iget-object v0, p2, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    invoke-static {v0}, Landroidx/work/d;->k(Landroidx/work/d;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->J(I[B)V

    .line 15
    :goto_3
    iget-object v0, p2, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    invoke-static {v0}, Landroidx/work/d;->k(Landroidx/work/d;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 16
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    goto :goto_4

    .line 17
    :cond_4
    invoke-interface {p1, v1, v0}, Lb/r/a/d;->J(I[B)V

    :goto_4
    const/4 v0, 0x7

    .line 18
    iget-wide v1, p2, Landroidx/work/impl/n/p;->i:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0x8

    .line 19
    iget-wide v1, p2, Landroidx/work/impl/n/p;->j:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0x9

    .line 20
    iget-wide v1, p2, Landroidx/work/impl/n/p;->k:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0xa

    .line 21
    iget v1, p2, Landroidx/work/impl/n/p;->m:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    .line 22
    iget-object v0, p2, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    invoke-static {v0}, Landroidx/work/impl/n/v;->a(Landroidx/work/BackoffPolicy;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 23
    invoke-interface {p1, v1, v2, v3}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0xc

    .line 24
    iget-wide v1, p2, Landroidx/work/impl/n/p;->o:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0xd

    .line 25
    iget-wide v1, p2, Landroidx/work/impl/n/p;->p:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0xe

    .line 26
    iget-wide v1, p2, Landroidx/work/impl/n/p;->q:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    const/16 v0, 0xf

    .line 27
    iget-wide v1, p2, Landroidx/work/impl/n/p;->r:J

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    .line 28
    iget-boolean v0, p2, Landroidx/work/impl/n/p;->s:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 29
    invoke-interface {p1, v1, v2, v3}, Lb/r/a/d;->F(IJ)V

    .line 30
    iget-object v0, p2, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v0}, Landroidx/work/impl/n/v;->i(Landroidx/work/OutOfQuotaPolicy;)I

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    .line 31
    invoke-interface {p1, v1, v2, v3}, Lb/r/a/d;->F(IJ)V

    .line 32
    iget-object p2, p2, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    const/16 v0, 0x18

    const/16 v1, 0x17

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x19

    if-eqz p2, :cond_6

    .line 33
    invoke-virtual {p2}, Landroidx/work/b;->b()Landroidx/work/NetworkType;

    move-result-object v8

    invoke-static {v8}, Landroidx/work/impl/n/v;->h(Landroidx/work/NetworkType;)I

    move-result v8

    int-to-long v8, v8

    .line 34
    invoke-interface {p1, v6, v8, v9}, Lb/r/a/d;->F(IJ)V

    .line 35
    invoke-virtual {p2}, Landroidx/work/b;->g()Z

    move-result v6

    int-to-long v8, v6

    .line 36
    invoke-interface {p1, v5, v8, v9}, Lb/r/a/d;->F(IJ)V

    .line 37
    invoke-virtual {p2}, Landroidx/work/b;->h()Z

    move-result v5

    int-to-long v5, v5

    .line 38
    invoke-interface {p1, v4, v5, v6}, Lb/r/a/d;->F(IJ)V

    .line 39
    invoke-virtual {p2}, Landroidx/work/b;->f()Z

    move-result v4

    int-to-long v4, v4

    .line 40
    invoke-interface {p1, v3, v4, v5}, Lb/r/a/d;->F(IJ)V

    .line 41
    invoke-virtual {p2}, Landroidx/work/b;->i()Z

    move-result v3

    int-to-long v3, v3

    .line 42
    invoke-interface {p1, v2, v3, v4}, Lb/r/a/d;->F(IJ)V

    .line 43
    invoke-virtual {p2}, Landroidx/work/b;->c()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb/r/a/d;->F(IJ)V

    .line 44
    invoke-virtual {p2}, Landroidx/work/b;->d()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/r/a/d;->F(IJ)V

    .line 45
    invoke-virtual {p2}, Landroidx/work/b;->a()Landroidx/work/c;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/impl/n/v;->c(Landroidx/work/c;)[B

    move-result-object p2

    if-nez p2, :cond_5

    .line 46
    invoke-interface {p1, v7}, Lb/r/a/d;->T(I)V

    goto :goto_5

    .line 47
    :cond_5
    invoke-interface {p1, v7, p2}, Lb/r/a/d;->J(I[B)V

    goto :goto_5

    .line 48
    :cond_6
    invoke-interface {p1, v6}, Lb/r/a/d;->T(I)V

    .line 49
    invoke-interface {p1, v5}, Lb/r/a/d;->T(I)V

    .line 50
    invoke-interface {p1, v4}, Lb/r/a/d;->T(I)V

    .line 51
    invoke-interface {p1, v3}, Lb/r/a/d;->T(I)V

    .line 52
    invoke-interface {p1, v2}, Lb/r/a/d;->T(I)V

    .line 53
    invoke-interface {p1, v1}, Lb/r/a/d;->T(I)V

    .line 54
    invoke-interface {p1, v0}, Lb/r/a/d;->T(I)V

    .line 55
    invoke-interface {p1, v7}, Lb/r/a/d;->T(I)V

    :goto_5
    return-void
.end method
