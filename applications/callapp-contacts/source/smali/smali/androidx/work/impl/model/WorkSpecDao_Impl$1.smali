.class Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroidx/room/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/a<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/a;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/WorkSpec;)V
    .locals 10

    .line 62
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/t$a;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 69
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 70
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 75
    :goto_1
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_2

    .line 78
    :cond_2
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 81
    :goto_2
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    invoke-static {v0}, Landroidx/work/d;->a(Landroidx/work/d;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 83
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_3

    .line 85
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(I[B)V

    .line 88
    :goto_3
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    invoke-static {v0}, Landroidx/work/d;->a(Landroidx/work/d;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 90
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_4

    .line 92
    :cond_4
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/e;->a(I[B)V

    :goto_4
    const/4 v0, 0x7

    .line 94
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0x8

    .line 95
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0x9

    .line 96
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0xa

    .line 97
    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 99
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/a;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 100
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0xc

    .line 101
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0xd

    .line 102
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0xe

    .line 103
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    const/16 v0, 0xf

    .line 104
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 106
    iget-boolean v0, p2, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 107
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 108
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    const/16 v0, 0x17

    const/16 v1, 0x16

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x18

    if-eqz p2, :cond_6

    .line 1105
    iget-object v8, p2, Landroidx/work/b;->b:Landroidx/work/l;

    .line 111
    invoke-static {v8}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Landroidx/work/l;)I

    move-result v8

    int-to-long v8, v8

    .line 112
    invoke-interface {p1, v6, v8, v9}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1121
    iget-boolean v6, p2, Landroidx/work/b;->c:Z

    int-to-long v8, v6

    .line 115
    invoke-interface {p1, v5, v8, v9}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1138
    iget-boolean v5, p2, Landroidx/work/b;->d:Z

    int-to-long v5, v5

    .line 118
    invoke-interface {p1, v4, v5, v6}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1155
    iget-boolean v4, p2, Landroidx/work/b;->e:Z

    int-to-long v4, v4

    .line 121
    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1171
    iget-boolean v3, p2, Landroidx/work/b;->f:Z

    int-to-long v3, v3

    .line 124
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1189
    iget-wide v2, p2, Landroidx/work/b;->g:J

    .line 125
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1207
    iget-wide v1, p2, Landroidx/work/b;->h:J

    .line 126
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 1235
    iget-object p2, p2, Landroidx/work/b;->i:Landroidx/work/c;

    .line 128
    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->contentUriTriggersToByteArray(Landroidx/work/c;)[B

    move-result-object p2

    if-nez p2, :cond_5

    .line 130
    invoke-interface {p1, v7}, Landroidx/sqlite/db/e;->a(I)V

    return-void

    .line 132
    :cond_5
    invoke-interface {p1, v7, p2}, Landroidx/sqlite/db/e;->a(I[B)V

    return-void

    .line 135
    :cond_6
    invoke-interface {p1, v6}, Landroidx/sqlite/db/e;->a(I)V

    .line 136
    invoke-interface {p1, v5}, Landroidx/sqlite/db/e;->a(I)V

    .line 137
    invoke-interface {p1, v4}, Landroidx/sqlite/db/e;->a(I)V

    .line 138
    invoke-interface {p1, v3}, Landroidx/sqlite/db/e;->a(I)V

    .line 139
    invoke-interface {p1, v2}, Landroidx/sqlite/db/e;->a(I)V

    .line 140
    invoke-interface {p1, v1}, Landroidx/sqlite/db/e;->a(I)V

    .line 141
    invoke-interface {p1, v0}, Landroidx/sqlite/db/e;->a(I)V

    .line 142
    invoke-interface {p1, v7}, Landroidx/sqlite/db/e;->a(I)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/e;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->bind(Landroidx/sqlite/db/e;Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
