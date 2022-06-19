.class public Le/a/b/e/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/e/h$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/a/b/e/i;-><init>(Landroid/content/Context;[B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/e/i;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/b/e/i;->b:[B

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;I)[B
    .locals 0

    iget-object p1, p0, Le/a/b/e/i;->b:[B

    return-object p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Le/a/b/e/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/f;->q(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/net/Uri;[B)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    const-string v3, "MmsRequestManager"

    if-eqz v0, :cond_2

    array-length v4, v0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v4, Lcom/google/android/mms/c/n;

    invoke-direct {v4, v0}, Lcom/google/android/mms/c/n;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/mms/c/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    :try_start_1
    sget-object v4, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v4}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move v10, v4

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v4, v1, Le/a/b/e/i;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "group_message"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :goto_1
    iget-object v4, v1, Le/a/b/e/i;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v6

    sget-object v8, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v15, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "m_size"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v12, v1, Le/a/b/e/i;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v4, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v0, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    const-string v4, "error"

    invoke-static {v3, v4, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v2

    :cond_2
    :goto_3
    const-string v0, "empty response"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
