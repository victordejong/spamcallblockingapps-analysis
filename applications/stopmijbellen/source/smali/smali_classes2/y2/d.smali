.class public final synthetic Ly2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly2/d;->a:I

    iput-object p1, p0, Ly2/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly2/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Ly2/d;->a:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, v1, Ly2/d;->b:Ljava/lang/Object;

    check-cast v0, Ll6/f;

    iget-object v2, v1, Ly2/d;->c:Ljava/lang/Object;

    check-cast v2, Ln6/e;

    sget-object v3, Ll6/f;->f:Lg6/a;

    .line 1
    invoke-virtual {v0, v2}, Ll6/f;->b(Ln6/e;)Lo6/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, Ll6/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 3
    :pswitch_1
    iget-object v0, v1, Ly2/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lz4/q;

    iget-object v0, v1, Ly2/d;->c:Ljava/lang/Object;

    check-cast v0, Lw5/b;

    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, v2, Lz4/q;->b:Ljava/util/Set;

    if-nez v3, :cond_1

    .line 6
    iget-object v3, v2, Lz4/q;->a:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, v2, Lz4/q;->b:Ljava/util/Set;

    invoke-interface {v0}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 9
    :pswitch_2
    iget-object v0, v1, Ly2/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object v3, v1, Ly2/d;->c:Ljava/lang/Object;

    check-cast v3, Landroid/app/job/JobParameters;

    sget v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    .line 11
    :goto_1
    iget-object v0, v1, Ly2/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/visual/c;

    iget-object v3, v1, Ly2/d;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 12
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    if-lt v5, v6, :cond_2

    .line 14
    iget-object v5, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "LIMIT"

    const/16 v9, 0xc8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "type!= ?"

    new-array v12, v7, [Ljava/lang/String;

    .line 16
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v2

    const-string v13, "date DESC"

    .line 17
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_2

    .line 18
    :cond_2
    iget-object v5, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "type!= ?"

    new-array v12, v7, [Ljava/lang/String;

    .line 19
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v2

    const-string v13, "date DESC LIMIT 200"

    .line 20
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_2
    const-string v5, ""

    .line 21
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 22
    new-instance v11, Ljava/util/Date;

    const-string v6, "date"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v6, "duration"

    .line 23
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v6, "name"

    .line 24
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, "number"

    .line 25
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v6, "type"

    .line 26
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 27
    invoke-static {v9}, Lh8/q;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 28
    iget-object v6, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v6, v11}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 29
    iget-object v5, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v5, v11}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    new-instance v6, Lo8/f;

    iget-object v8, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f110208

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lo8/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 32
    :cond_3
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    invoke-static {v14, v15}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 33
    new-instance v6, Lo8/f;

    iget-object v8, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f110212

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lo8/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 34
    :cond_4
    new-instance v6, Lo8/f;

    invoke-direct {v6, v5}, Lo8/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_5
    :goto_4
    new-instance v6, Lcom/mglab/scm/visual/CallItem;

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/mglab/scm/visual/CallItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 36
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 37
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v3, Lk8/f;

    invoke-direct {v3, v7}, Lk8/f;-><init>(I)V

    invoke-virtual {v0, v3}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_5

    .line 38
    :cond_7
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v3, Lk8/f;

    invoke-direct {v3, v4}, Lk8/f;-><init>(I)V

    invoke-virtual {v0, v3}, Lba/b;->g(Ljava/lang/Object;)V

    .line 39
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 40
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v2

    new-instance v3, Lk8/f;

    invoke-direct {v3, v4}, Lk8/f;-><init>(I)V

    invoke-virtual {v2, v3}, Lba/b;->g(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
