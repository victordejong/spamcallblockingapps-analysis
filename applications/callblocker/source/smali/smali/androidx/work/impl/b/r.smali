.class public final Landroidx/work/impl/b/r;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/b/q;


# instance fields
.field private final a:Landroidx/room/i;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/o;

.field private final d:Landroidx/room/o;

.field private final e:Landroidx/room/o;

.field private final f:Landroidx/room/o;

.field private final g:Landroidx/room/o;

.field private final h:Landroidx/room/o;

.field private final i:Landroidx/room/o;

.field private final j:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    .line 53
    new-instance v0, Landroidx/work/impl/b/r$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$1;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->b:Landroidx/room/b;

    .line 145
    new-instance v0, Landroidx/work/impl/b/r$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$2;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->c:Landroidx/room/o;

    .line 152
    new-instance v0, Landroidx/work/impl/b/r$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$3;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->d:Landroidx/room/o;

    .line 159
    new-instance v0, Landroidx/work/impl/b/r$4;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$4;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->e:Landroidx/room/o;

    .line 166
    new-instance v0, Landroidx/work/impl/b/r$5;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$5;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->f:Landroidx/room/o;

    .line 173
    new-instance v0, Landroidx/work/impl/b/r$6;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$6;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->g:Landroidx/room/o;

    .line 180
    new-instance v0, Landroidx/work/impl/b/r$7;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$7;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->h:Landroidx/room/o;

    .line 187
    new-instance v0, Landroidx/work/impl/b/r$8;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$8;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->i:Landroidx/room/o;

    .line 194
    new-instance v0, Landroidx/work/impl/b/r$9;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/r$9;-><init>(Landroidx/work/impl/b/r;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/r;->j:Landroidx/room/o;

    .line 201
    return-void
.end method


# virtual methods
.method public varargs a(Landroidx/work/s$a;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 1780
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 1781
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1782
    const-string/jumbo v1, "UPDATE workspec SET state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    const-string/jumbo v1, " WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    array-length v1, p2

    .line 1786
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    .line 1787
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    iget-object v1, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v1, v0}, Landroidx/room/i;->a(Ljava/lang/String;)Landroidx/i/a/f;

    move-result-object v2

    .line 1790
    const/4 v0, 0x1

    .line 1792
    invoke-static {p1}, Landroidx/work/impl/b/v;->a(Landroidx/work/s$a;)I

    move-result v1

    .line 1793
    int-to-long v4, v1

    invoke-interface {v2, v0, v4, v5}, Landroidx/i/a/f;->a(IJ)V

    .line 1794
    const/4 v1, 0x2

    .line 1795
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    .line 1796
    if-nez v4, :cond_0

    .line 1797
    invoke-interface {v2, v1}, Landroidx/i/a/f;->a(I)V

    .line 1801
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1799
    :cond_0
    invoke-interface {v2, v1, v4}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 1803
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 1805
    :try_start_0
    invoke-interface {v2}, Landroidx/i/a/f;->a()I

    move-result v0

    .line 1806
    iget-object v1, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    iget-object v1, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 1807
    return v0

    .line 1809
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 1810
    throw v0
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1425
    const-string/jumbo v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 1426
    const-string/jumbo v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    invoke-static {v0, v3}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 1427
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 1428
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 1430
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1431
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1433
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1434
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1438
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1439
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 1440
    throw v0

    .line 1438
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1439
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 1436
    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    const-string/jumbo v4, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 1446
    const-string/jumbo v4, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v5

    .line 1447
    const/4 v4, 0x1

    .line 1448
    move/from16 v0, p1

    int-to-long v6, v0

    invoke-virtual {v5, v4, v6, v7}, Landroidx/room/l;->a(IJ)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v4}, Landroidx/room/i;->f()V

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1452
    :try_start_0
    const-string/jumbo v4, "required_network_type"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1453
    const-string/jumbo v4, "requires_charging"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1454
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1455
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1456
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1457
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1458
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1459
    const-string/jumbo v4, "content_uri_triggers"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1460
    const-string/jumbo v4, "id"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1461
    const-string/jumbo v4, "state"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 1462
    const-string/jumbo v4, "worker_class_name"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 1463
    const-string/jumbo v4, "input_merger_class_name"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 1464
    const-string/jumbo v4, "input"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 1465
    const-string/jumbo v4, "output"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    .line 1466
    const-string/jumbo v4, "initial_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v21

    .line 1467
    const-string/jumbo v4, "interval_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 1468
    const-string/jumbo v4, "flex_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    .line 1469
    const-string/jumbo v4, "run_attempt_count"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 1470
    const-string/jumbo v4, "backoff_policy"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v25

    .line 1471
    const-string/jumbo v4, "backoff_delay_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v26

    .line 1472
    const-string/jumbo v4, "period_start_time"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v27

    .line 1473
    const-string/jumbo v4, "minimum_retention_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v28

    .line 1474
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v29

    .line 1475
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v30

    .line 1476
    new-instance v31, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1477
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1480
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1482
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1484
    new-instance v34, Landroidx/work/c;

    invoke-direct/range {v34 .. v34}, Landroidx/work/c;-><init>()V

    .line 1487
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1488
    invoke-static {v4}, Landroidx/work/impl/b/v;->c(I)Landroidx/work/m;

    move-result-object v4

    .line 1489
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Landroidx/work/m;)V

    .line 1492
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1493
    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1494
    :goto_1
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Z)V

    .line 1497
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1498
    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1499
    :goto_2
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->b(Z)V

    .line 1502
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1503
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 1504
    :goto_3
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->c(Z)V

    .line 1507
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1508
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 1509
    :goto_4
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->d(Z)V

    .line 1511
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1512
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroidx/work/c;->a(J)V

    .line 1514
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1515
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroidx/work/c;->b(J)V

    .line 1518
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1519
    invoke-static {v4}, Landroidx/work/impl/b/v;->a([B)Landroidx/work/d;

    move-result-object v4

    .line 1520
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Landroidx/work/d;)V

    .line 1521
    new-instance v35, Landroidx/work/impl/b/p;

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/b/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1524
    invoke-static {v4}, Landroidx/work/impl/b/v;->a(I)Landroidx/work/s$a;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 1525
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    .line 1527
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1528
    invoke-static {v4}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 1530
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1531
    invoke-static {v4}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 1532
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->g:J

    .line 1533
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->h:J

    .line 1534
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->i:J

    .line 1535
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroidx/work/impl/b/p;->k:I

    .line 1537
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1538
    invoke-static {v4}, Landroidx/work/impl/b/v;->b(I)Landroidx/work/a;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 1539
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->m:J

    .line 1540
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->n:J

    .line 1541
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->o:J

    .line 1542
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->p:J

    .line 1544
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1545
    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v35

    iput-boolean v4, v0, Landroidx/work/impl/b/p;->q:Z

    .line 1546
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 1547
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1551
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1552
    invoke-virtual {v5}, Landroidx/room/l;->a()V

    .line 1553
    throw v4

    .line 1493
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1498
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1503
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1508
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1545
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 1551
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1552
    invoke-virtual {v5}, Landroidx/room/l;->a()V

    .line 1549
    return-object v31
.end method

.method public a(Landroidx/work/impl/b/p;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 206
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 208
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 212
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 218
    iget-object v0, p0, Landroidx/work/impl/b/r;->c:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 219
    const/4 v0, 0x1

    .line 220
    if-nez p1, :cond_0

    .line 221
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 225
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 227
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 228
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 231
    iget-object v0, p0, Landroidx/work/impl/b/r;->c:Landroidx/room/o;

    invoke-virtual {v0, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 233
    return-void

    .line 223
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 231
    iget-object v2, p0, Landroidx/work/impl/b/r;->c:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 232
    throw v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 266
    iget-object v0, p0, Landroidx/work/impl/b/r;->e:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 267
    const/4 v0, 0x1

    .line 268
    invoke-interface {v1, v0, p2, p3}, Landroidx/i/a/f;->a(IJ)V

    .line 269
    const/4 v0, 0x2

    .line 270
    if-nez p1, :cond_0

    .line 271
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 275
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 277
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 278
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 281
    iget-object v0, p0, Landroidx/work/impl/b/r;->e:Landroidx/room/o;

    invoke-virtual {v0, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 283
    return-void

    .line 273
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 281
    iget-object v2, p0, Landroidx/work/impl/b/r;->e:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 282
    throw v0
.end method

.method public a(Ljava/lang/String;Landroidx/work/e;)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 238
    iget-object v0, p0, Landroidx/work/impl/b/r;->d:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 239
    const/4 v0, 0x1

    .line 241
    invoke-static {p2}, Landroidx/work/e;->a(Landroidx/work/e;)[B

    move-result-object v2

    .line 242
    if-nez v2, :cond_0

    .line 243
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 247
    :goto_0
    const/4 v0, 0x2

    .line 248
    if-nez p1, :cond_1

    .line 249
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 253
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 255
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 256
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 259
    iget-object v0, p0, Landroidx/work/impl/b/r;->d:Landroidx/room/o;

    invoke-virtual {v0, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 261
    return-void

    .line 245
    :cond_0
    invoke-interface {v1, v0, v2}, Landroidx/i/a/f;->a(I[B)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 258
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 259
    iget-object v2, p0, Landroidx/work/impl/b/r;->d:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 260
    throw v0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 353
    iget-object v0, p0, Landroidx/work/impl/b/r;->i:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 354
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 356
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    move-result v0

    .line 357
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 361
    iget-object v2, p0, Landroidx/work/impl/b/r;->i:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 358
    return v0

    .line 360
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 361
    iget-object v2, p0, Landroidx/work/impl/b/r;->i:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 362
    throw v0
.end method

.method public b(Ljava/lang/String;J)I
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 330
    iget-object v0, p0, Landroidx/work/impl/b/r;->h:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 331
    const/4 v0, 0x1

    .line 332
    invoke-interface {v1, v0, p2, p3}, Landroidx/i/a/f;->a(IJ)V

    .line 333
    const/4 v0, 0x2

    .line 334
    if-nez p1, :cond_0

    .line 335
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 339
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 341
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    move-result v0

    .line 342
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 346
    iget-object v2, p0, Landroidx/work/impl/b/r;->h:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 343
    return v0

    .line 337
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 346
    iget-object v2, p0, Landroidx/work/impl/b/r;->h:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 347
    throw v0
.end method

.method public b(Ljava/lang/String;)Landroidx/work/impl/b/p;
    .locals 29

    .prologue
    .line 381
    const-string/jumbo v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?"

    .line 382
    const-string/jumbo v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v4

    .line 383
    const/4 v2, 0x1

    .line 384
    if-nez p1, :cond_0

    .line 385
    invoke-virtual {v4, v2}, Landroidx/room/l;->a(I)V

    .line 389
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->f()V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 392
    :try_start_0
    const-string/jumbo v2, "required_network_type"

    invoke-static {v5, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 393
    const-string/jumbo v3, "requires_charging"

    invoke-static {v5, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 394
    const-string/jumbo v6, "requires_device_idle"

    invoke-static {v5, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 395
    const-string/jumbo v7, "requires_battery_not_low"

    invoke-static {v5, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 396
    const-string/jumbo v8, "requires_storage_not_low"

    invoke-static {v5, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 397
    const-string/jumbo v9, "trigger_content_update_delay"

    invoke-static {v5, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 398
    const-string/jumbo v10, "trigger_max_content_delay"

    invoke-static {v5, v10}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 399
    const-string/jumbo v11, "content_uri_triggers"

    invoke-static {v5, v11}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 400
    const-string/jumbo v12, "id"

    invoke-static {v5, v12}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 401
    const-string/jumbo v13, "state"

    invoke-static {v5, v13}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 402
    const-string/jumbo v14, "worker_class_name"

    invoke-static {v5, v14}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 403
    const-string/jumbo v15, "input_merger_class_name"

    invoke-static {v5, v15}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 404
    const-string/jumbo v16, "input"

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 405
    const-string/jumbo v17, "output"

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 406
    const-string/jumbo v18, "initial_delay"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 407
    const-string/jumbo v19, "interval_duration"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 408
    const-string/jumbo v20, "flex_duration"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    .line 409
    const-string/jumbo v21, "run_attempt_count"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v21

    .line 410
    const-string/jumbo v22, "backoff_policy"

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 411
    const-string/jumbo v23, "backoff_delay_duration"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    .line 412
    const-string/jumbo v24, "period_start_time"

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 413
    const-string/jumbo v25, "minimum_retention_duration"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v25

    .line 414
    const-string/jumbo v26, "schedule_requested_at"

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v26

    .line 415
    const-string/jumbo v27, "run_in_foreground"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v27

    .line 417
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 419
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 421
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 423
    new-instance v28, Landroidx/work/c;

    invoke-direct/range {v28 .. v28}, Landroidx/work/c;-><init>()V

    .line 426
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 427
    invoke-static {v2}, Landroidx/work/impl/b/v;->c(I)Landroidx/work/m;

    move-result-object v2

    .line 428
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroidx/work/c;->a(Landroidx/work/m;)V

    .line 431
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 432
    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 433
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroidx/work/c;->a(Z)V

    .line 436
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 437
    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 438
    :goto_2
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroidx/work/c;->b(Z)V

    .line 441
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 442
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 443
    :goto_3
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroidx/work/c;->c(Z)V

    .line 446
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 447
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 448
    :goto_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroidx/work/c;->d(Z)V

    .line 450
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 451
    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroidx/work/c;->a(J)V

    .line 453
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 454
    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroidx/work/c;->b(J)V

    .line 457
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 458
    invoke-static {v2}, Landroidx/work/impl/b/v;->a([B)Landroidx/work/d;

    move-result-object v2

    .line 459
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroidx/work/c;->a(Landroidx/work/d;)V

    .line 460
    new-instance v2, Landroidx/work/impl/b/p;

    invoke-direct {v2, v12, v14}, Landroidx/work/impl/b/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 463
    invoke-static {v3}, Landroidx/work/impl/b/v;->a(I)Landroidx/work/s$a;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 464
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    .line 466
    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 467
    invoke-static {v3}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 469
    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 470
    invoke-static {v3}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 471
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->g:J

    .line 472
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->h:J

    .line 473
    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->i:J

    .line 474
    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Landroidx/work/impl/b/p;->k:I

    .line 476
    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 477
    invoke-static {v3}, Landroidx/work/impl/b/v;->b(I)Landroidx/work/a;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 478
    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->m:J

    .line 479
    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->n:J

    .line 480
    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->o:J

    .line 481
    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroidx/work/impl/b/p;->p:J

    .line 483
    move/from16 v0, v27

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 484
    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v2, Landroidx/work/impl/b/p;->q:Z

    .line 485
    move-object/from16 v0, v28

    iput-object v0, v2, Landroidx/work/impl/b/p;->j:Landroidx/work/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-virtual {v4}, Landroidx/room/l;->a()V

    .line 489
    return-object v2

    .line 387
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 437
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 442
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 447
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 484
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 487
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 491
    :catchall_0
    move-exception v2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-virtual {v4}, Landroidx/room/l;->a()V

    .line 493
    throw v2
.end method

.method public c()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1558
    const-string/jumbo v4, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1559
    const-string/jumbo v4, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v5

    .line 1560
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v4}, Landroidx/room/i;->f()V

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1563
    :try_start_0
    const-string/jumbo v4, "required_network_type"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1564
    const-string/jumbo v4, "requires_charging"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1565
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1566
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1567
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1568
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1569
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1570
    const-string/jumbo v4, "content_uri_triggers"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1571
    const-string/jumbo v4, "id"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1572
    const-string/jumbo v4, "state"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 1573
    const-string/jumbo v4, "worker_class_name"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 1574
    const-string/jumbo v4, "input_merger_class_name"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 1575
    const-string/jumbo v4, "input"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 1576
    const-string/jumbo v4, "output"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    .line 1577
    const-string/jumbo v4, "initial_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v21

    .line 1578
    const-string/jumbo v4, "interval_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 1579
    const-string/jumbo v4, "flex_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    .line 1580
    const-string/jumbo v4, "run_attempt_count"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 1581
    const-string/jumbo v4, "backoff_policy"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v25

    .line 1582
    const-string/jumbo v4, "backoff_delay_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v26

    .line 1583
    const-string/jumbo v4, "period_start_time"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v27

    .line 1584
    const-string/jumbo v4, "minimum_retention_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v28

    .line 1585
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v29

    .line 1586
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v30

    .line 1587
    new-instance v31, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1591
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1593
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1595
    new-instance v34, Landroidx/work/c;

    invoke-direct/range {v34 .. v34}, Landroidx/work/c;-><init>()V

    .line 1598
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1599
    invoke-static {v4}, Landroidx/work/impl/b/v;->c(I)Landroidx/work/m;

    move-result-object v4

    .line 1600
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Landroidx/work/m;)V

    .line 1603
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1604
    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1605
    :goto_1
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Z)V

    .line 1608
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1609
    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1610
    :goto_2
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->b(Z)V

    .line 1613
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1614
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 1615
    :goto_3
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->c(Z)V

    .line 1618
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1619
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 1620
    :goto_4
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->d(Z)V

    .line 1622
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1623
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroidx/work/c;->a(J)V

    .line 1625
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1626
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroidx/work/c;->b(J)V

    .line 1629
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1630
    invoke-static {v4}, Landroidx/work/impl/b/v;->a([B)Landroidx/work/d;

    move-result-object v4

    .line 1631
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Landroidx/work/d;)V

    .line 1632
    new-instance v35, Landroidx/work/impl/b/p;

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/b/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1635
    invoke-static {v4}, Landroidx/work/impl/b/v;->a(I)Landroidx/work/s$a;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 1636
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    .line 1638
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1639
    invoke-static {v4}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 1641
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1642
    invoke-static {v4}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 1643
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->g:J

    .line 1644
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->h:J

    .line 1645
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->i:J

    .line 1646
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroidx/work/impl/b/p;->k:I

    .line 1648
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1649
    invoke-static {v4}, Landroidx/work/impl/b/v;->b(I)Landroidx/work/a;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 1650
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->m:J

    .line 1651
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->n:J

    .line 1652
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->o:J

    .line 1653
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->p:J

    .line 1655
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1656
    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v35

    iput-boolean v4, v0, Landroidx/work/impl/b/p;->q:Z

    .line 1657
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 1658
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1662
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1663
    invoke-virtual {v5}, Landroidx/room/l;->a()V

    .line 1664
    throw v4

    .line 1604
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1609
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1614
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1619
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1656
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 1662
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1663
    invoke-virtual {v5}, Landroidx/room/l;->a()V

    .line 1660
    return-object v31
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/b/p$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 628
    const-string/jumbo v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 629
    const-string/jumbo v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    invoke-static {v0, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 631
    if-nez p1, :cond_0

    .line 632
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 636
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 637
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 639
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-static {v2, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 640
    const-string/jumbo v3, "state"

    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 641
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 644
    new-instance v5, Landroidx/work/impl/b/p$a;

    invoke-direct {v5}, Landroidx/work/impl/b/p$a;-><init>()V

    .line 645
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    .line 647
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 648
    invoke-static {v6}, Landroidx/work/impl/b/v;->a(I)Landroidx/work/s$a;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    .line 649
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 653
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 654
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 655
    throw v0

    .line 634
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 654
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 651
    return-object v4
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 288
    iget-object v0, p0, Landroidx/work/impl/b/r;->f:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 289
    const/4 v0, 0x1

    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 295
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 297
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    move-result v0

    .line 298
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 302
    iget-object v2, p0, Landroidx/work/impl/b/r;->f:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 299
    return v0

    .line 293
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 302
    iget-object v2, p0, Landroidx/work/impl/b/r;->f:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 303
    throw v0
.end method

.method public d()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1669
    const-string/jumbo v4, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1"

    .line 1670
    const-string/jumbo v4, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v5

    .line 1671
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v4}, Landroidx/room/i;->f()V

    .line 1672
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    .line 1674
    :try_start_0
    const-string/jumbo v4, "required_network_type"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 1675
    const-string/jumbo v4, "requires_charging"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 1676
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 1677
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 1678
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 1679
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 1680
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 1681
    const-string/jumbo v4, "content_uri_triggers"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 1682
    const-string/jumbo v4, "id"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 1683
    const-string/jumbo v4, "state"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    .line 1684
    const-string/jumbo v4, "worker_class_name"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    .line 1685
    const-string/jumbo v4, "input_merger_class_name"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    .line 1686
    const-string/jumbo v4, "input"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    .line 1687
    const-string/jumbo v4, "output"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    .line 1688
    const-string/jumbo v4, "initial_delay"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v21

    .line 1689
    const-string/jumbo v4, "interval_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 1690
    const-string/jumbo v4, "flex_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    .line 1691
    const-string/jumbo v4, "run_attempt_count"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 1692
    const-string/jumbo v4, "backoff_policy"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v25

    .line 1693
    const-string/jumbo v4, "backoff_delay_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v26

    .line 1694
    const-string/jumbo v4, "period_start_time"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v27

    .line 1695
    const-string/jumbo v4, "minimum_retention_duration"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v28

    .line 1696
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v29

    .line 1697
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v6, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v30

    .line 1698
    new-instance v31, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1699
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1702
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1704
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1706
    new-instance v34, Landroidx/work/c;

    invoke-direct/range {v34 .. v34}, Landroidx/work/c;-><init>()V

    .line 1709
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1710
    invoke-static {v4}, Landroidx/work/impl/b/v;->c(I)Landroidx/work/m;

    move-result-object v4

    .line 1711
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Landroidx/work/m;)V

    .line 1714
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1715
    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1716
    :goto_1
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Z)V

    .line 1719
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1720
    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1721
    :goto_2
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->b(Z)V

    .line 1724
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1725
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 1726
    :goto_3
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->c(Z)V

    .line 1729
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1730
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 1731
    :goto_4
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->d(Z)V

    .line 1733
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1734
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroidx/work/c;->a(J)V

    .line 1736
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 1737
    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroidx/work/c;->b(J)V

    .line 1740
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1741
    invoke-static {v4}, Landroidx/work/impl/b/v;->a([B)Landroidx/work/d;

    move-result-object v4

    .line 1742
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroidx/work/c;->a(Landroidx/work/d;)V

    .line 1743
    new-instance v35, Landroidx/work/impl/b/p;

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/b/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1746
    invoke-static {v4}, Landroidx/work/impl/b/v;->a(I)Landroidx/work/s$a;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 1747
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    .line 1749
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1750
    invoke-static {v4}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 1752
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1753
    invoke-static {v4}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 1754
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->g:J

    .line 1755
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->h:J

    .line 1756
    move/from16 v0, v23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->i:J

    .line 1757
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroidx/work/impl/b/p;->k:I

    .line 1759
    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1760
    invoke-static {v4}, Landroidx/work/impl/b/v;->b(I)Landroidx/work/a;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 1761
    move/from16 v0, v26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->m:J

    .line 1762
    move/from16 v0, v27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->n:J

    .line 1763
    move/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->o:J

    .line 1764
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/work/impl/b/p;->p:J

    .line 1766
    move/from16 v0, v30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1767
    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v35

    iput-boolean v4, v0, Landroidx/work/impl/b/p;->q:Z

    .line 1768
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 1769
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1773
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1774
    invoke-virtual {v5}, Landroidx/room/l;->a()V

    .line 1775
    throw v4

    .line 1715
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1720
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1725
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1730
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1767
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 1773
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1774
    invoke-virtual {v5}, Landroidx/room/l;->a()V

    .line 1771
    return-object v31
.end method

.method public e(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 309
    iget-object v0, p0, Landroidx/work/impl/b/r;->g:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 310
    const/4 v0, 0x1

    .line 311
    if-nez p1, :cond_0

    .line 312
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 316
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 318
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    move-result v0

    .line 319
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 323
    iget-object v2, p0, Landroidx/work/impl/b/r;->g:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 320
    return v0

    .line 314
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 323
    iget-object v2, p0, Landroidx/work/impl/b/r;->g:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 324
    throw v0
.end method

.method public f(Ljava/lang/String;)Landroidx/work/s$a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 680
    const-string/jumbo v1, "SELECT state FROM workspec WHERE id=?"

    .line 681
    const-string/jumbo v1, "SELECT state FROM workspec WHERE id=?"

    invoke-static {v1, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 683
    if-nez p1, :cond_1

    .line 684
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 688
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->f()V

    .line 689
    iget-object v2, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-static {v2, v1, v3, v0}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 692
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 695
    invoke-static {v0}, Landroidx/work/impl/b/v;->a(I)Landroidx/work/s$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 701
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 702
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 699
    return-object v0

    .line 686
    :cond_1
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 702
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 703
    throw v0
.end method

.method public g(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1345
    const-string/jumbo v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 1346
    const-string/jumbo v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v0, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 1348
    if-nez p1, :cond_0

    .line 1349
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 1353
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 1354
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 1356
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1357
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1360
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1361
    invoke-static {v3}, Landroidx/work/e;->a([B)Landroidx/work/e;

    move-result-object v3

    .line 1362
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1366
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1367
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 1368
    throw v0

    .line 1351
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1367
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 1364
    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1399
    const-string/jumbo v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1400
    const-string/jumbo v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    invoke-static {v0, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 1402
    if-nez p1, :cond_0

    .line 1403
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 1407
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 1408
    iget-object v0, p0, Landroidx/work/impl/b/r;->a:Landroidx/room/i;

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 1410
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1413
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1414
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1418
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1419
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 1420
    throw v0

    .line 1405
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1418
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1419
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 1416
    return-object v0
.end method
