.class public Lcom/android/mms/transaction/k;
.super Lcom/android/mms/transaction/n;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final l:[Ljava/lang/String;


# instance fields
.field private final i:Landroid/net/Uri;

.field private final j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/k;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/n;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;)V

    const-string p2, "content://"

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/k;->q(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/mms/transaction/k;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/l;->b(Landroid/content/Context;)Lcom/android/mms/transaction/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/g;->a(Lcom/android/mms/transaction/h;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static r(Landroid/content/Context;Lcom/google/android/mms/c/t;)Z
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/mms/c/t;->p()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    aput-object v2, v8, v1

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v6, v1

    const-string v2, "sub"

    aput-object v2, v6, v3

    const-string v2, "sub_cs"

    aput-object v2, v6, v0

    const/4 v9, 0x0

    const-string v7, "(m_id = ? AND m_type = ?)"

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lc/a/a/a;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/mms/transaction/k;->s(Landroid/database/Cursor;Lcom/google/android/mms/c/t;)Z

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    :goto_0
    return v1
.end method

.method private static s(Landroid/database/Cursor;Lcom/google/android/mms/c/t;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/mms/c/g;->j()Lcom/google/android/mms/c/e;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "sub"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sub_cs"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/mms/c/e;

    invoke-static {v2}, Lcom/google/android/mms/c/p;->e(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/mms/c/e;-><init>(I[B)V

    :cond_1
    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private t(Lcom/google/android/mms/c/t;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/mms/c/t;->r()[B

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/mms/c/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p1}, Lcom/google/android/mms/c/a;-><init>(I[B)V

    iget-object p1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/mms/c/e;

    invoke-direct {v1, p1}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    invoke-static {}, Le/a/b/a;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/mms/c/k;

    iget-object v1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {p1}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object p1

    iget-object v0, p0, Lcom/android/mms/transaction/k;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/transaction/n;->n([BLjava/lang/String;)[B

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/mms/c/k;

    iget-object v1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {p1}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/n;->m([B)[B

    :cond_1
    :goto_0
    return-void
.end method

.method private static u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "locked"

    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "RetrieveTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/k;->l:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lc/a/a/a;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/k;->k:Z

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/transaction/k;->k:Z

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_2
    :goto_1
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

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "Retrieval failed."

    const-string v3, "Mms"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/b/f/a;->g(Landroid/content/Context;)V

    invoke-static {}, Le/a/b/f/a;->e()Le/a/b/f/a;

    move-result-object v0

    iget-object v7, v1, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    const/16 v8, 0x81

    invoke-virtual {v0, v7, v8}, Le/a/b/f/a;->j(Landroid/net/Uri;I)V

    iget-object v0, v1, Lcom/android/mms/transaction/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/n;->e(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v7, Lcom/google/android/mms/c/n;

    invoke-direct {v7, v0}, Lcom/google/android/mms/c/n;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/c/t;

    if-eqz v7, :cond_1

    iget-object v8, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/mms/transaction/k;->r(Landroid/content/Context;Lcom/google/android/mms/c/t;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v8, v1, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    invoke-virtual {v0, v8}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v8, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v8}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move v12, v8

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v8, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "group_message"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_0

    :goto_1
    iget-object v8, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v8

    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v9, v7

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v10, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "m_size"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v14, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v14 .. v19}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v8}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/mms/transaction/k;->j:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/mms/transaction/k;->k:Z

    invoke-static {v0, v8, v9, v10}, Lcom/android/mms/transaction/k;->u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    :goto_2
    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v1, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    invoke-static {v0, v8, v9, v4, v4}, Lc/a/a/a;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {v1, v7}, Lcom/android/mms/transaction/k;->t(Lcom/google/android/mms/c/t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v6, :cond_3

    goto :goto_3

    :cond_1
    :try_start_3
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v7, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v0, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    const-string v7, "error"

    invoke-static {v3, v7, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "HTTP error: Not Found"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, v1, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    invoke-static {v0, v7, v8, v4, v4}, Lc/a/a/a;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v6, :cond_3

    :goto_3
    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v4, v1, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v3, v2}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v4, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v4}, Lcom/android/mms/transaction/q;->b()I

    move-result v4

    if-eq v4, v6, :cond_4

    iget-object v4, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v4, v1, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v5, v1, Lcom/android/mms/transaction/k;->i:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    invoke-static {v3, v2}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/g;->c()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
