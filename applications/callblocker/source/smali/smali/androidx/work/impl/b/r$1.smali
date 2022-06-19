.class Landroidx/work/impl/b/r$1;
.super Landroidx/room/b;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/b/r;-><init>(Landroidx/room/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b",
        "<",
        "Landroidx/work/impl/b/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/b/r;


# direct methods
.method constructor <init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroidx/work/impl/b/r$1;->a:Landroidx/work/impl/b/r;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/i;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public a(Landroidx/i/a/f;Landroidx/work/impl/b/p;)V
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v8, 0x18

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    iget-object v0, p2, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    .line 67
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    invoke-static {v0}, Landroidx/work/impl/b/v;->a(Landroidx/work/s$a;)I

    move-result v0

    .line 68
    const/4 v3, 0x2

    int-to-long v4, v0

    invoke-interface {p1, v3, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 69
    iget-object v0, p2, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 70
    invoke-interface {p1, v6}, Landroidx/i/a/f;->a(I)V

    .line 74
    :goto_1
    iget-object v0, p2, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 75
    invoke-interface {p1, v7}, Landroidx/i/a/f;->a(I)V

    .line 80
    :goto_2
    iget-object v0, p2, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    invoke-static {v0}, Landroidx/work/e;->a(Landroidx/work/e;)[B

    move-result-object v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 87
    :goto_3
    iget-object v0, p2, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    invoke-static {v0}, Landroidx/work/e;->a(Landroidx/work/e;)[B

    move-result-object v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 93
    :goto_4
    const/4 v0, 0x7

    iget-wide v4, p2, Landroidx/work/impl/b/p;->g:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 94
    const/16 v0, 0x8

    iget-wide v4, p2, Landroidx/work/impl/b/p;->h:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 95
    const/16 v0, 0x9

    iget-wide v4, p2, Landroidx/work/impl/b/p;->i:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 96
    const/16 v0, 0xa

    iget v3, p2, Landroidx/work/impl/b/p;->k:I

    int-to-long v4, v3

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 98
    iget-object v0, p2, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    invoke-static {v0}, Landroidx/work/impl/b/v;->a(Landroidx/work/a;)I

    move-result v0

    .line 99
    const/16 v3, 0xb

    int-to-long v4, v0

    invoke-interface {p1, v3, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 100
    const/16 v0, 0xc

    iget-wide v4, p2, Landroidx/work/impl/b/p;->m:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 101
    const/16 v0, 0xd

    iget-wide v4, p2, Landroidx/work/impl/b/p;->n:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 102
    const/16 v0, 0xe

    iget-wide v4, p2, Landroidx/work/impl/b/p;->o:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 103
    const/16 v0, 0xf

    iget-wide v4, p2, Landroidx/work/impl/b/p;->p:J

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 105
    iget-boolean v0, p2, Landroidx/work/impl/b/p;->q:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 106
    :goto_5
    const/16 v3, 0x10

    int-to-long v4, v0

    invoke-interface {p1, v3, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 107
    iget-object v3, p2, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 108
    if-eqz v3, :cond_b

    .line 110
    invoke-virtual {v3}, Landroidx/work/c;->a()Landroidx/work/m;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/b/v;->a(Landroidx/work/m;)I

    move-result v0

    .line 111
    const/16 v4, 0x11

    int-to-long v6, v0

    invoke-interface {p1, v4, v6, v7}, Landroidx/i/a/f;->a(IJ)V

    .line 113
    invoke-virtual {v3}, Landroidx/work/c;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 114
    :goto_6
    const/16 v4, 0x12

    int-to-long v6, v0

    invoke-interface {p1, v4, v6, v7}, Landroidx/i/a/f;->a(IJ)V

    .line 116
    invoke-virtual {v3}, Landroidx/work/c;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 117
    :goto_7
    const/16 v4, 0x13

    int-to-long v6, v0

    invoke-interface {p1, v4, v6, v7}, Landroidx/i/a/f;->a(IJ)V

    .line 119
    invoke-virtual {v3}, Landroidx/work/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 120
    :goto_8
    const/16 v4, 0x14

    int-to-long v6, v0

    invoke-interface {p1, v4, v6, v7}, Landroidx/i/a/f;->a(IJ)V

    .line 122
    invoke-virtual {v3}, Landroidx/work/c;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    :goto_9
    const/16 v0, 0x15

    int-to-long v4, v1

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 124
    const/16 v0, 0x16

    invoke-virtual {v3}, Landroidx/work/c;->f()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 125
    const/16 v0, 0x17

    invoke-virtual {v3}, Landroidx/work/c;->g()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 127
    invoke-virtual {v3}, Landroidx/work/c;->h()Landroidx/work/d;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/b/v;->a(Landroidx/work/d;)[B

    move-result-object v0

    .line 128
    if-nez v0, :cond_a

    .line 129
    invoke-interface {p1, v8}, Landroidx/i/a/f;->a(I)V

    .line 143
    :goto_a
    return-void

    .line 64
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_1
    iget-object v0, p2, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 77
    :cond_2
    iget-object v0, p2, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 84
    :cond_3
    const/4 v3, 0x5

    invoke-interface {p1, v3, v0}, Landroidx/i/a/f;->a(I[B)V

    goto/16 :goto_3

    .line 91
    :cond_4
    const/4 v3, 0x6

    invoke-interface {p1, v3, v0}, Landroidx/i/a/f;->a(I[B)V

    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 105
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 113
    goto :goto_6

    :cond_7
    move v0, v2

    .line 116
    goto :goto_7

    :cond_8
    move v0, v2

    .line 119
    goto :goto_8

    :cond_9
    move v1, v2

    .line 122
    goto :goto_9

    .line 131
    :cond_a
    invoke-interface {p1, v8, v0}, Landroidx/i/a/f;->a(I[B)V

    goto :goto_a

    .line 134
    :cond_b
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 135
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 136
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 137
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 138
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 139
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 140
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    .line 141
    invoke-interface {p1, v8}, Landroidx/i/a/f;->a(I)V

    goto :goto_a
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Landroidx/work/impl/b/p;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/b/r$1;->a(Landroidx/i/a/f;Landroidx/work/impl/b/p;)V

    return-void
.end method
