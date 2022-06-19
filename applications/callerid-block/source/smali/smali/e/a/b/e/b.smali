.class public Le/a/b/e/b;
.super Le/a/b/e/h;
.source ""


# static fields
.field static final j:[Ljava/lang/String;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Landroid/app/PendingIntent;

.field private final i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    sput-object v0, Le/a/b/e/b;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/a/b/e/h$a;ILjava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p6, p7}, Le/a/b/e/h;-><init>(Le/a/b/e/h$a;ILjava/lang/String;Landroid/os/Bundle;)V

    if-nez p3, :cond_0

    invoke-direct {p0, p8, p4}, Le/a/b/e/b;->n(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/b/e/b;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Le/a/b/e/b;->g:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Le/a/b/e/b;->h:Landroid/app/PendingIntent;

    iput-object p4, p0, Le/a/b/e/b;->i:Landroid/net/Uri;

    return-void
.end method

.method private n(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Le/a/b/e/b;->j:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lc/a/a/a;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/mms/MmsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v0, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v4, v1

    const-string v5, "ct_l = ?"

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lc/a/a/a;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static p(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.klinker.android.messaging.NEW_MMS_DOWNLOADED"

    invoke-static {p0, v0, v1}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static q(Landroid/content/Context;[BLe/a/b/e/c$b;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    const-string v8, "DownloadRequest.persistIfRequired: can not update message"

    const-string v9, "DownloadRequest.persistIfRequired: can not persist message"

    invoke-static/range {p0 .. p0}, Le/a/b/e/b;->p(Landroid/content/Context;)V

    const-string v10, "DownloadRequest"

    const-string v2, "DownloadRequest.persistIfRequired"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x82

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x1

    if-eqz v1, :cond_7

    array-length v3, v1

    if-ge v3, v15, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_0
    new-instance v3, Lcom/google/android/mms/c/n;

    invoke-virtual/range {p2 .. p2}, Le/a/b/e/c$b;->m()Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/google/android/mms/c/n;-><init>([BZ)V

    invoke-virtual {v3}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v1

    if-eqz v1, :cond_6

    instance-of v3, v1, Lcom/google/android/mms/c/t;

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/google/android/mms/c/t;

    invoke-virtual {v3}, Lcom/google/android/mms/c/t;->q()I

    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v18

    sget-object v20, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v18

    if-nez v18, :cond_2

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    :cond_2
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "read"

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "seen"

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "creator"

    move-object/from16 v2, p5

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static/range {p0 .. p0}, Le/a/b/e/l;->c(Landroid/content/Context;)Le/a/b/e/l;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b/e/l;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sub_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, v18

    invoke-static/range {v1 .. v6}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v15, :cond_5

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "m_type=? AND ct_l =?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    aput-object v7, v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/e/f;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v18

    :cond_6
    :goto_0
    :try_start_2
    const-string v1, "DownloadRequest.persistIfRequired: invalid parsed PDU"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    invoke-static {v0, v7, v1}, Le/a/b/e/b;->r(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DownloadRequest.persistIfRequired: can not parse response"

    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v10, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    :goto_3
    const-string v1, "DownloadRequest.persistIfRequired: empty response"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v15}, Landroid/content/ContentValues;-><init>(I)V

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "retr_st"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    aput-object v7, v4, v15

    const-string v5, "m_type=? AND ct_l =?"

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v1

    move-object/from16 p4, v5

    move-object/from16 p5, v4

    invoke-static/range {p0 .. p5}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v13
.end method

.method private static r(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    invoke-static {p0, p1}, Le/a/b/e/b;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "protocol"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lc/a/a/a;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "err_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Le/a/b/e/g;Le/a/b/e/a;)[B
    .locals 8

    invoke-virtual {p2}, Le/a/b/e/g;->h()Le/a/b/e/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/b/e/b;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p3}, Le/a/b/e/a;->e()Z

    move-result v4

    invoke-virtual {p3}, Le/a/b/e/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Le/a/b/e/a;->d()I

    move-result v6

    iget-object v7, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    const-string v3, "GET"

    invoke-virtual/range {v0 .. v7}, Le/a/b/e/f;->e(Ljava/lang/String;[BLjava/lang/String;ZLjava/lang/String;ILe/a/b/e/c$b;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "DownloadRequest"

    const-string p2, "MMS network is not ready!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/mms/service_alt/exception/MmsHttpException;

    const/4 p2, 0x0

    const-string p3, "MMS network is not ready"

    invoke-direct {p1, p2, p3}, Lcom/android/mms/service_alt/exception/MmsHttpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method protected d()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Le/a/b/e/b;->h:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected h(Landroid/content/Context;I[B)Landroid/net/Uri;
    .locals 6

    iget-object p2, p0, Le/a/b/e/h;->a:Le/a/b/e/h$a;

    invoke-interface {p2}, Le/a/b/e/h$a;->b()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Le/a/b/e/b;->p(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    iget-object v3, p0, Le/a/b/e/b;->g:Ljava/lang/String;

    iget v4, p0, Le/a/b/e/h;->b:I

    iget-object v5, p0, Le/a/b/e/h;->c:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Le/a/b/e/b;->q(Landroid/content/Context;[BLe/a/b/e/c$b;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected k(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Le/a/b/e/b;->i:Landroid/net/Uri;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method protected l(Landroid/content/Intent;[B)Z
    .locals 1

    iget-object p1, p0, Le/a/b/e/h;->a:Le/a/b/e/h$a;

    iget-object v0, p0, Le/a/b/e/b;->i:Landroid/net/Uri;

    invoke-interface {p1, v0, p2}, Le/a/b/e/h$a;->c(Landroid/net/Uri;[B)Z

    move-result p1

    return p1
.end method
