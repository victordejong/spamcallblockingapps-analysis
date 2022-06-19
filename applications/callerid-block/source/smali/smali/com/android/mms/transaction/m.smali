.class public Lcom/android/mms/transaction/m;
.super Lcom/android/mms/transaction/n;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private i:Ljava/lang/Thread;

.field public final j:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/n;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/l;->b(Landroid/content/Context;)Lcom/android/mms/transaction/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/g;->a(Lcom/android/mms/transaction/h;)V

    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SendTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/transaction/m;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "Server returned an error code: "

    const-string v2, ", conf="

    const-string v3, "Inconsistent Transaction-ID: req="

    const-string v4, "), resp="

    const-string v5, "[SendTransaction] run: send mms msg ("

    const-string v6, "stack"

    const-string v7, "Delivery failed\n"

    const-string v8, "Delivery failed."

    const-string v9, "com.klinker.android.send_message.MMS_ERROR"

    const-string v10, "Mms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x2

    const/4 v13, 0x1

    :try_start_0
    iget-object v14, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v14}, Le/a/b/f/c;->c(Landroid/content/Context;)V

    invoke-static {}, Le/a/b/f/c;->b()Le/a/b/f/c;

    move-result-object v14

    invoke-virtual {v14}, Le/a/b/f/c;->e()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v14}, Le/a/b/f/c;->d()Z

    move-result v14

    if-nez v14, :cond_1

    const-string v0, "Sending rate limit surpassed."

    invoke-static {v10, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v13, :cond_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v12}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v2, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v10, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v2, v0, v9}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :cond_1
    :try_start_1
    iget-object v14, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v14}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v14

    iget-object v15, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/c/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v12, v16, v18

    invoke-virtual {v15, v12, v13}, Lcom/google/android/mms/c/g;->l(J)V

    move-object/from16 v16, v14

    new-instance v14, Landroid/content/ContentValues;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v17, v6

    const/4 v6, 0x1

    :try_start_2
    invoke-direct {v14, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v6, "date"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    iget-object v12, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v6

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    invoke-static/range {v20 .. v25}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Lcom/google/android/mms/c/e;

    invoke-direct {v12, v6}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    :cond_2
    iget-object v6, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v14, v7

    :try_start_3
    invoke-static {v6}, Le/a/b/f/d;->a(Ljava/lang/Object;)J

    move-result-wide v6

    move-object/from16 v18, v0

    new-instance v0, Lcom/google/android/mms/c/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v19, v9

    :try_start_4
    iget-object v9, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-direct {v0, v9, v15}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v0

    invoke-virtual {v1, v6, v7, v0}, Lcom/android/mms/transaction/n;->k(J[B)[B

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Le/a/b/f/d;->c(Ljava/lang/Object;)V

    const/4 v6, 0x2

    invoke-static {v10, v6}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v4, Lcom/google/android/mms/c/n;

    invoke-direct {v4, v0}, Lcom/google/android/mms/c/n;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/c/u;

    if-nez v0, :cond_4

    const-string v4, "No M-Send.conf received."

    invoke-static {v10, v4}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "No M-Send.conf received.\n"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v15}, Lcom/google/android/mms/c/v;->v()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/mms/c/u;->h()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, "\n"

    if-nez v6, :cond_6

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v2, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v10, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :cond_6
    move-object/from16 v4, v17

    move-object/from16 v2, v19

    :try_start_6
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/u;->g()I

    move-result v5

    const-string v6, "resp_st"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v6, 0x80

    if-eq v5, v6, :cond_8

    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    iget-object v6, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v6

    move-object/from16 v23, v3

    invoke-static/range {v20 .. v25}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v3, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v10, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :cond_8
    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/mms/c/u;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v0

    const-string v5, "m_id"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    iget-object v5, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v3

    invoke-static/range {v20 .. v25}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, v16

    invoke-virtual {v5, v0, v3}, Lcom/google/android/mms/c/p;->n(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v3, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v3, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v10, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v4, v17

    move-object/from16 v2, v19

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v14, v7

    :goto_0
    move-object v2, v9

    move-object/from16 v4, v17

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v4, v6

    move-object v14, v7

    move-object v2, v9

    :goto_1
    :try_start_8
    const-string v3, "error"

    invoke-static {v10, v3, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v3, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v10, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :catchall_5
    move-exception v0

    iget-object v3, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v3}, Lcom/android/mms/transaction/q;->b()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_a

    iget-object v3, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v3, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v5, v1, Lcom/android/mms/transaction/m;->j:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v10, v8}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    throw v0
.end method
