.class public Lcom/android/mms/transaction/f;
.super Lcom/android/mms/transaction/n;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private i:Landroid/net/Uri;

.field private j:Lcom/google/android/mms/c/h;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Lcom/google/android/mms/c/h;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/n;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;)V

    const/4 p2, 0x1

    :try_start_0
    sget-object p3, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p3}, Lcom/klinker/android/send_message/f;->c()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v4, p3

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "group_message"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/mms/transaction/f;->q(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    const/4 v3, 0x0

    :goto_2
    const/4 v5, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    iput-object p4, p0, Lcom/android/mms/transaction/f;->j:Lcom/google/android/mms/c/h;

    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/android/mms/transaction/f;->j:Lcom/google/android/mms/c/h;

    invoke-virtual {p2}, Lcom/google/android/mms/c/h;->f()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Mms"

    const-string p3, "Failed to save NotificationInd in constructor."

    invoke-static {p2, p3, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/n;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object p2

    iget-object p3, p0, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object p2

    check-cast p2, Lcom/google/android/mms/c/h;

    iput-object p2, p0, Lcom/android/mms/transaction/f;->j:Lcom/google/android/mms/c/h;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/android/mms/transaction/f;->j:Lcom/google/android/mms/c/h;

    invoke-virtual {p3}, Lcom/google/android/mms/c/h;->f()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lcom/android/mms/transaction/f;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/l;->b(Landroid/content/Context;)Lcom/android/mms/transaction/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/g;->a(Lcom/android/mms/transaction/h;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to load NotificationInd from: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Mms"

    invoke-static {p3, p2, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_download_mms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private r(I)V
    .locals 3

    new-instance v0, Lcom/google/android/mms/c/i;

    iget-object v1, p0, Lcom/android/mms/transaction/f;->j:Lcom/google/android/mms/c/h;

    invoke-virtual {v1}, Lcom/google/android/mms/c/h;->i()[B

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/mms/c/i;-><init>(I[BI)V

    invoke-static {}, Le/a/b/a;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/mms/c/k;

    iget-object v1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {p1}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object p1

    iget-object v0, p0, Lcom/android/mms/transaction/f;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/transaction/n;->n([BLjava/lang/String;)[B

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/mms/c/k;

    iget-object v1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {p1}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/n;->m([B)[B

    :goto_0
    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "NotificationTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 24

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v0}, Le/a/b/f/a;->g(Landroid/content/Context;)V

    invoke-static {}, Le/a/b/f/a;->e()Le/a/b/f/a;

    move-result-object v0

    iget-object v2, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/transaction/f;->q(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x83

    const-string v4, "NotificationTransaction failed."

    const/4 v5, 0x2

    const-string v6, "Mms"

    const/4 v7, 0x1

    if-nez v2, :cond_2

    :try_start_1
    iget-object v8, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    const/16 v9, 0x80

    invoke-virtual {v0, v8, v9}, Le/a/b/f/a;->j(Landroid/net/Uri;I)V

    invoke-direct {v1, v3}, Lcom/android/mms/transaction/f;->r(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v3, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v7}, Lcom/android/mms/transaction/q;->d(I)V

    :cond_0
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/q;->d(I)V

    invoke-static {v6, v4}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :cond_2
    :try_start_2
    iget-object v8, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    const/16 v9, 0x81

    invoke-virtual {v0, v8, v9}, Le/a/b/f/a;->j(Landroid/net/Uri;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    iget-object v8, v1, Lcom/android/mms/transaction/f;->k:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/android/mms/transaction/n;->e(Ljava/lang/String;)[B

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_4
    iget-object v8, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v8, v5}, Lcom/android/mms/transaction/q;->d(I)V

    move-object v8, v0

    :goto_0
    const/16 v10, 0x84

    if-eqz v8, :cond_6

    new-instance v11, Lcom/google/android/mms/c/n;

    invoke-direct {v11, v8}, Lcom/google/android/mms/c/n;-><init>([B)V

    invoke-virtual {v11}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/google/android/mms/c/f;->a()I

    move-result v8

    if-eq v8, v10, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v8, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v12

    sget-object v14, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x1

    sget-object v8, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v8}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v8

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v7}, Landroid/content/ContentValues;-><init>(I)V

    const-string v11, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v11, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v11

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-static/range {v18 .. v23}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    invoke-static {v10, v11, v12, v0, v0}, Lc/a/a/a;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotificationTransaction received new mms message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    invoke-static {v10, v11, v12, v0, v0}, Lc/a/a/a;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iput-object v8, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.klinker.android.messaging.NEW_MMS_DOWNLOADED"

    invoke-static {v0, v8, v10}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v10, 0x81

    goto :goto_3

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid M-RETRIEVE.CONF PDU. "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "message type: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/google/android/mms/c/f;->a()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    const-string v8, "null pdu"

    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/q;->d(I)V

    goto :goto_3

    :cond_6
    const/16 v10, 0x83

    :goto_3
    if-eq v10, v9, :cond_8

    if-eq v10, v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    :goto_4
    invoke-virtual {v0, v7}, Lcom/android/mms/transaction/q;->d(I)V

    goto :goto_5

    :cond_8
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    goto :goto_4

    :cond_9
    :goto_5
    invoke-direct {v1, v10}, Lcom/android/mms/transaction/f;->r(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v3, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    if-nez v2, :cond_a

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v7}, Lcom/android/mms/transaction/q;->d(I)V

    :cond_a
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v7, :cond_c

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_5
    const-string v3, "error"

    invoke-static {v6, v3, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v3, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    if-nez v2, :cond_b

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v7}, Lcom/android/mms/transaction/q;->d(I)V

    :cond_b
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v7, :cond_c

    :goto_6
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/q;->d(I)V

    invoke-static {v6, v4}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v3, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v8, v1, Lcom/android/mms/transaction/f;->i:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v2, v7}, Lcom/android/mms/transaction/q;->d(I)V

    :cond_d
    iget-object v2, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v2}, Lcom/android/mms/transaction/q;->b()I

    move-result v2

    if-eq v2, v7, :cond_e

    iget-object v2, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v2, v5}, Lcom/android/mms/transaction/q;->d(I)V

    invoke-static {v6, v4}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
