.class public final Le70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld70;


# instance fields
.field public final a:Lz00;

.field public final b:Ls00;

.field public final c:Ld10;

.field public final d:Ld10;

.field public final e:Ld10;

.field public final f:Ld10;

.field public final g:Ld10;

.field public final h:Ld10;

.field public final i:Ld10;


# direct methods
.method public constructor <init>(Lz00;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le70;->a:Lz00;

    new-instance v0, Le70$a;

    invoke-direct {v0, p0, p1}, Le70$a;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->b:Ls00;

    new-instance v0, Le70$b;

    invoke-direct {v0, p0, p1}, Le70$b;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->c:Ld10;

    new-instance v0, Le70$c;

    invoke-direct {v0, p0, p1}, Le70$c;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->d:Ld10;

    new-instance v0, Le70$d;

    invoke-direct {v0, p0, p1}, Le70$d;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->e:Ld10;

    new-instance v0, Le70$e;

    invoke-direct {v0, p0, p1}, Le70$e;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->f:Ld10;

    new-instance v0, Le70$f;

    invoke-direct {v0, p0, p1}, Le70$f;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->g:Ld10;

    new-instance v0, Le70$g;

    invoke-direct {v0, p0, p1}, Le70$g;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->h:Ld10;

    new-instance v0, Le70$h;

    invoke-direct {v0, p0, p1}, Le70$h;-><init>(Le70;Lz00;)V

    iput-object v0, p0, Le70;->i:Ld10;

    new-instance v0, Le70$i;

    invoke-direct {v0, p0, p1}, Le70$i;-><init>(Le70;Lz00;)V

    return-void
.end method


# virtual methods
.method public varargs a(Ld50;[Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    invoke-static {}, Li10;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE workspec SET state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-static {v0, v1}, Li10;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1, v0}, Lz00;->d(Ljava/lang/String;)Lr10;

    move-result-object v0

    invoke-static {p1}, Li70;->h(Ld50;)I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1, v2}, Lp10;->s(IJ)V

    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    invoke-interface {v0, v1}, Lp10;->w(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1, v3}, Lp10;->o(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    move-result p1

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->g()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->g()V

    throw p1
.end method

.method public b(Lc70;)V
    .locals 1

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    iget-object v0, p0, Le70;->b:Ls00;

    invoke-virtual {v0, p1}, Ls00;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->g()V

    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc70;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v3

    iget-object v0, v1, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, v1, Le70;->a:Lz00;

    invoke-static {v0, v3, v2}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "period_start_time"

    invoke-static {v4, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "minimum_retention_duration"

    invoke-static {v4, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "schedule_requested_at"

    invoke-static {v4, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "required_network_type"

    invoke-static {v4, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v1

    const-string v1, "requires_charging"

    invoke-static {v4, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v15

    const-string v15, "requires_battery_not_low"

    invoke-static {v4, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v14

    const-string v14, "requires_storage_not_low"

    invoke-static {v4, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move/from16 v22, v13

    const-string v13, "trigger_content_update_delay"

    invoke-static {v4, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    move/from16 v23, v12

    const-string v12, "trigger_max_content_delay"

    invoke-static {v4, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v11

    const-string v11, "content_uri_triggers"

    invoke-static {v4, v11}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    move/from16 v25, v10

    new-instance v10, Ljava/util/ArrayList;

    move/from16 v26, v9

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v27, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v28, v6

    new-instance v6, Ls40;

    invoke-direct {v6}, Ls40;-><init>()V

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v3

    invoke-static/range {v29 .. v29}, Li70;->e(I)Ly40;

    move-result-object v3

    invoke-virtual {v6, v3}, Ls40;->k(Ly40;)V

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v29, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Ls40;->m(Z)V

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v6, v3}, Ls40;->n(Z)V

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6, v3}, Ls40;->l(Z)V

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v6, v3}, Ls40;->o(Z)V

    move v3, v1

    move/from16 v29, v2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ls40;->p(J)V

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ls40;->q(J)V

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Li70;->b([B)Lt40;

    move-result-object v1

    invoke-virtual {v6, v1}, Ls40;->j(Lt40;)V

    new-instance v1, Lc70;

    invoke-direct {v1, v9, v0}, Lc70;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Li70;->f(I)Ld50;

    move-result-object v0

    iput-object v0, v1, Lc70;->b:Ld50;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc70;->d:Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lu40;->g([B)Lu40;

    move-result-object v0

    iput-object v0, v1, Lc70;->e:Lu40;

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lu40;->g([B)Lu40;

    move-result-object v2

    iput-object v2, v1, Lc70;->f:Lu40;

    move v9, v7

    move/from16 v2, v25

    move/from16 v25, v8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->g:J

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->h:J

    move v3, v7

    move/from16 v2, v23

    move/from16 v23, v8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->i:J

    move/from16 v7, v22

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lc70;->k:I

    move/from16 v8, v21

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v26, v0

    invoke-static/range {v21 .. v21}, Li70;->d(I)Lq40;

    move-result-object v0

    iput-object v0, v1, Lc70;->l:Lq40;

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v20, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->m:J

    move/from16 v22, v7

    move v3, v8

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->n:J

    move/from16 v19, v2

    move v8, v3

    move/from16 v7, v18

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->o:J

    move/from16 v18, v7

    move v3, v8

    move/from16 v2, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->p:J

    iput-object v6, v1, Lc70;->j:Ls40;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v2

    move v7, v9

    move/from16 v1, v23

    move/from16 v8, v25

    move/from16 v6, v28

    move/from16 v2, v29

    move/from16 v23, v20

    move/from16 v25, v24

    move/from16 v20, v0

    move/from16 v24, v21

    move/from16 v0, v27

    move/from16 v21, v3

    move/from16 v3, v30

    goto/16 :goto_0

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    throw v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Le70;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public e(Ljava/lang/String;)Ld50;
    .locals 3

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Le70;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Li70;->f(I)Ld50;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public f(Ljava/lang/String;)Lc70;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM workspec WHERE id=?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v0}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, v1, Le70;->a:Lz00;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "state"

    invoke-static {v5, v6}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "worker_class_name"

    invoke-static {v5, v7}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "input"

    invoke-static {v5, v9}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "output"

    invoke-static {v5, v10}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "run_attempt_count"

    invoke-static {v5, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "period_start_time"

    invoke-static {v5, v4}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "minimum_retention_duration"

    invoke-static {v5, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "schedule_requested_at"

    invoke-static {v5, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "required_network_type"

    invoke-static {v5, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v1

    const-string v1, "requires_charging"

    invoke-static {v5, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v4

    const-string v4, "requires_device_idle"

    invoke-static {v5, v4}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v3

    const-string v3, "requires_battery_not_low"

    invoke-static {v5, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v15

    const-string v15, "requires_storage_not_low"

    invoke-static {v5, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v14

    const-string v14, "trigger_content_update_delay"

    invoke-static {v5, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move/from16 v23, v13

    const-string v13, "trigger_max_content_delay"

    invoke-static {v5, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    move/from16 v24, v12

    const-string v12, "content_uri_triggers"

    invoke-static {v5, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v25, v11

    new-instance v11, Ls40;

    invoke-direct {v11}, Ls40;-><init>()V

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Li70;->e(I)Ly40;

    move-result-object v2

    invoke-virtual {v11, v2}, Ls40;->k(Ly40;)V

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v11, v1}, Ls40;->m(Z)V

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v11, v1}, Ls40;->n(Z)V

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v11, v1}, Ls40;->l(Z)V

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v11, v3}, Ls40;->o(Z)V

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ls40;->p(J)V

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ls40;->q(J)V

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Li70;->b([B)Lt40;

    move-result-object v1

    invoke-virtual {v11, v1}, Ls40;->j(Lt40;)V

    new-instance v1, Lc70;

    invoke-direct {v1, v0, v7}, Lc70;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Li70;->f(I)Ld50;

    move-result-object v0

    iput-object v0, v1, Lc70;->b:Ld50;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc70;->d:Ljava/lang/String;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lu40;->g([B)Lu40;

    move-result-object v0

    iput-object v0, v1, Lc70;->e:Lu40;

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lu40;->g([B)Lu40;

    move-result-object v0

    iput-object v0, v1, Lc70;->f:Lu40;

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->g:J

    move/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->h:J

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->i:J

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lc70;->k:I

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Li70;->d(I)Lq40;

    move-result-object v0

    iput-object v0, v1, Lc70;->l:Lq40;

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->m:J

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->n:J

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->o:J

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->p:J

    iput-object v11, v1, Lc70;->j:Ls40;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    throw v0
.end method

.method public g(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Le70;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lu40;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Le70;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lu40;->g([B)Lu40;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->i:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    move-result v1

    iget-object v2, p0, Le70;->a:Lz00;

    invoke-virtual {v2}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Le70;->a:Lz00;

    invoke-virtual {v2}, Lz00;->g()V

    iget-object v2, p0, Le70;->i:Ld10;

    invoke-virtual {v2, v0}, Ld10;->f(Lr10;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Le70;->a:Lz00;

    invoke-virtual {v2}, Lz00;->g()V

    iget-object v2, p0, Le70;->i:Ld10;

    invoke-virtual {v2, v0}, Ld10;->f(Lr10;)V

    throw v1
.end method

.method public j(Ljava/lang/String;J)I
    .locals 2

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->h:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2, p3}, Lp10;->s(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-interface {v0, p2}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    move-result p1

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->g()V

    iget-object p2, p0, Le70;->h:Ld10;

    invoke-virtual {p2, v0}, Ld10;->f(Lr10;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->g()V

    iget-object p2, p0, Le70;->h:Ld10;

    invoke-virtual {p2, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method

.method public k(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc70$a;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Le70;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    invoke-static {p1, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lc70$a;

    invoke-direct {v4}, Lc70$a;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc70$a;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Li70;->f(I)Ld50;

    move-result-object v5

    iput-object v5, v4, Lc70$a;->b:Ld50;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public l(I)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lc70;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Lc10;->s(IJ)V

    iget-object v0, v1, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, v1, Le70;->a:Lz00;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "state"

    invoke-static {v5, v6}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "worker_class_name"

    invoke-static {v5, v7}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "input"

    invoke-static {v5, v9}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "output"

    invoke-static {v5, v10}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "run_attempt_count"

    invoke-static {v5, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "backoff_delay_duration"

    invoke-static {v5, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "period_start_time"

    invoke-static {v5, v4}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "minimum_retention_duration"

    invoke-static {v5, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "schedule_requested_at"

    invoke-static {v5, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "required_network_type"

    invoke-static {v5, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v1

    const-string v1, "requires_charging"

    invoke-static {v5, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v4

    const-string v4, "requires_device_idle"

    invoke-static {v5, v4}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v5, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v15

    const-string v15, "requires_storage_not_low"

    invoke-static {v5, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v14

    const-string v14, "trigger_content_update_delay"

    invoke-static {v5, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move/from16 v23, v13

    const-string v13, "trigger_max_content_delay"

    invoke-static {v5, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    move/from16 v24, v12

    const-string v12, "content_uri_triggers"

    invoke-static {v5, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move/from16 v25, v11

    new-instance v11, Ljava/util/ArrayList;

    move/from16 v26, v10

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v27, v0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v28, v7

    new-instance v7, Ls40;

    invoke-direct {v7}, Ls40;-><init>()V

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v3

    invoke-static/range {v29 .. v29}, Li70;->e(I)Ly40;

    move-result-object v3

    invoke-virtual {v7, v3}, Ls40;->k(Ly40;)V

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v7, v3}, Ls40;->m(Z)V

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7, v3}, Ls40;->n(Z)V

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v7, v3}, Ls40;->l(Z)V

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v7, v3}, Ls40;->o(Z)V

    move v3, v1

    move/from16 v29, v2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ls40;->p(J)V

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ls40;->q(J)V

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Li70;->b([B)Lt40;

    move-result-object v1

    invoke-virtual {v7, v1}, Ls40;->j(Lt40;)V

    new-instance v1, Lc70;

    invoke-direct {v1, v10, v0}, Lc70;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Li70;->f(I)Ld50;

    move-result-object v0

    iput-object v0, v1, Lc70;->b:Ld50;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc70;->d:Ljava/lang/String;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lu40;->g([B)Lu40;

    move-result-object v0

    iput-object v0, v1, Lc70;->e:Lu40;

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lu40;->g([B)Lu40;

    move-result-object v2

    iput-object v2, v1, Lc70;->f:Lu40;

    move v10, v4

    move/from16 v2, v25

    move/from16 v25, v3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lc70;->g:J

    move v4, v8

    move/from16 v3, v24

    move/from16 v24, v9

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lc70;->h:J

    move v9, v2

    move/from16 v8, v23

    move/from16 v23, v3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->i:J

    move/from16 v2, v22

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lc70;->k:I

    move/from16 v3, v21

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v26, v0

    invoke-static/range {v21 .. v21}, Li70;->d(I)Lq40;

    move-result-object v0

    iput-object v0, v1, Lc70;->l:Lq40;

    move/from16 v22, v2

    move/from16 v21, v3

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->m:J

    move/from16 v2, v19

    move/from16 v19, v4

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lc70;->n:J

    move v4, v8

    move/from16 v3, v18

    move/from16 v18, v9

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lc70;->o:J

    move v9, v2

    move/from16 v8, v17

    move/from16 v17, v3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->p:J

    iput-object v7, v1, Lc70;->j:Ls40;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v0

    move/from16 v1, v25

    move/from16 v0, v27

    move/from16 v7, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v25, v18

    move/from16 v18, v17

    move/from16 v17, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v24

    move/from16 v24, v23

    move/from16 v23, v4

    move v4, v10

    goto/16 :goto_0

    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    throw v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->c:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    iget-object p1, p0, Le70;->c:Ld10;

    invoke-virtual {p1, v0}, Ld10;->f(Lr10;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->g()V

    iget-object v1, p0, Le70;->c:Ld10;

    invoke-virtual {v1, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method

.method public n(Ljava/lang/String;Lu40;)V
    .locals 2

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->d:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    invoke-static {p2}, Lu40;->k(Lu40;)[B

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, Lp10;->t(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    invoke-interface {v0, p2}, Lp10;->w(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    iget-object p1, p0, Le70;->d:Ld10;

    invoke-virtual {p1, v0}, Ld10;->f(Lr10;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->g()V

    iget-object p2, p0, Le70;->d:Ld10;

    invoke-virtual {p2, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method

.method public o()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc70;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v3

    iget-object v0, v1, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, v1, Le70;->a:Lz00;

    invoke-static {v0, v3, v2}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "state"

    invoke-static {v4, v5}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v4, v6}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v4, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "period_start_time"

    invoke-static {v4, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "minimum_retention_duration"

    invoke-static {v4, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "schedule_requested_at"

    invoke-static {v4, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "required_network_type"

    invoke-static {v4, v3}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v1

    const-string v1, "requires_charging"

    invoke-static {v4, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v15

    const-string v15, "requires_battery_not_low"

    invoke-static {v4, v15}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v14

    const-string v14, "requires_storage_not_low"

    invoke-static {v4, v14}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move/from16 v22, v13

    const-string v13, "trigger_content_update_delay"

    invoke-static {v4, v13}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    move/from16 v23, v12

    const-string v12, "trigger_max_content_delay"

    invoke-static {v4, v12}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v11

    const-string v11, "content_uri_triggers"

    invoke-static {v4, v11}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    move/from16 v25, v10

    new-instance v10, Ljava/util/ArrayList;

    move/from16 v26, v9

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v27, v0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v28, v6

    new-instance v6, Ls40;

    invoke-direct {v6}, Ls40;-><init>()V

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v3

    invoke-static/range {v29 .. v29}, Li70;->e(I)Ly40;

    move-result-object v3

    invoke-virtual {v6, v3}, Ls40;->k(Ly40;)V

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v29, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Ls40;->m(Z)V

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v6, v3}, Ls40;->n(Z)V

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6, v3}, Ls40;->l(Z)V

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v6, v3}, Ls40;->o(Z)V

    move v3, v1

    move/from16 v29, v2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ls40;->p(J)V

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ls40;->q(J)V

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Li70;->b([B)Lt40;

    move-result-object v1

    invoke-virtual {v6, v1}, Ls40;->j(Lt40;)V

    new-instance v1, Lc70;

    invoke-direct {v1, v9, v0}, Lc70;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Li70;->f(I)Ld50;

    move-result-object v0

    iput-object v0, v1, Lc70;->b:Ld50;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc70;->d:Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lu40;->g([B)Lu40;

    move-result-object v0

    iput-object v0, v1, Lc70;->e:Lu40;

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lu40;->g([B)Lu40;

    move-result-object v2

    iput-object v2, v1, Lc70;->f:Lu40;

    move v9, v7

    move/from16 v2, v25

    move/from16 v25, v8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->g:J

    move v8, v3

    move/from16 v7, v24

    move/from16 v24, v2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->h:J

    move v3, v7

    move/from16 v2, v23

    move/from16 v23, v8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->i:J

    move/from16 v7, v22

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lc70;->k:I

    move/from16 v8, v21

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v26, v0

    invoke-static/range {v21 .. v21}, Li70;->d(I)Lq40;

    move-result-object v0

    iput-object v0, v1, Lc70;->l:Lq40;

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v20, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->m:J

    move/from16 v22, v7

    move v3, v8

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->n:J

    move/from16 v19, v2

    move v8, v3

    move/from16 v7, v18

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lc70;->o:J

    move/from16 v18, v7

    move v3, v8

    move/from16 v2, v17

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lc70;->p:J

    iput-object v6, v1, Lc70;->j:Ls40;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v2

    move v7, v9

    move/from16 v1, v23

    move/from16 v8, v25

    move/from16 v6, v28

    move/from16 v2, v29

    move/from16 v23, v20

    move/from16 v25, v24

    move/from16 v20, v0

    move/from16 v24, v21

    move/from16 v0, v27

    move/from16 v21, v3

    move/from16 v3, v30

    goto/16 :goto_0

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lc10;->release()V

    throw v0
.end method

.method public p()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    iget-object v2, p0, Le70;->a:Lz00;

    invoke-virtual {v2}, Lz00;->b()V

    iget-object v2, p0, Le70;->a:Lz00;

    invoke-static {v2, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public q(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->g:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    move-result p1

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->g()V

    iget-object v1, p0, Le70;->g:Ld10;

    invoke-virtual {v1, v0}, Ld10;->f(Lr10;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->g()V

    iget-object v1, p0, Le70;->g:Ld10;

    invoke-virtual {v1, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method

.method public r(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->f:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    move-result p1

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->g()V

    iget-object v1, p0, Le70;->f:Ld10;

    invoke-virtual {v1, v0}, Ld10;->f(Lr10;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Le70;->a:Lz00;

    invoke-virtual {v1}, Lz00;->g()V

    iget-object v1, p0, Le70;->f:Ld10;

    invoke-virtual {v1, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method

.method public s(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Le70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Le70;->e:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2, p3}, Lp10;->s(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-interface {v0, p2}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    iget-object p1, p0, Le70;->e:Ld10;

    invoke-virtual {p1, v0}, Ld10;->f(Lr10;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le70;->a:Lz00;

    invoke-virtual {p2}, Lz00;->g()V

    iget-object p2, p0, Le70;->e:Ld10;

    invoke-virtual {p2, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method
