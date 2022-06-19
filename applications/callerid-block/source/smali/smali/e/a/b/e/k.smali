.class public Le/a/b/e/k;
.super Le/a/b/e/h;
.source ""


# instance fields
.field private final g:Landroid/net/Uri;

.field private h:[B

.field private final i:Ljava/lang/String;

.field private final j:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Le/a/b/e/h$a;ILandroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p6, p7}, Le/a/b/e/h;-><init>(Le/a/b/e/h$a;ILjava/lang/String;Landroid/os/Bundle;)V

    iput-object p3, p0, Le/a/b/e/k;->g:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/e/k;->h:[B

    iput-object p4, p0, Le/a/b/e/k;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/b/e/k;->j:Landroid/app/PendingIntent;

    return-void
.end method

.method private n()Z
    .locals 4

    iget-object v0, p0, Le/a/b/e/k;->h:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    invoke-virtual {v0}, Le/a/b/e/c$b;->h()I

    move-result v0

    iget-object v2, p0, Le/a/b/e/h;->a:Le/a/b/e/h$a;

    iget-object v3, p0, Le/a/b/e/k;->g:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Le/a/b/e/h$a;->a(Landroid/net/Uri;I)[B

    move-result-object v0

    iput-object v0, p0, Le/a/b/e/k;->h:[B

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Le/a/b/e/g;Le/a/b/e/a;)[B
    .locals 8

    invoke-virtual {p2}, Le/a/b/e/g;->h()Le/a/b/e/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/b/e/k;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Le/a/b/e/a;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    iget-object v2, p0, Le/a/b/e/k;->h:[B

    invoke-virtual {p3}, Le/a/b/e/a;->e()Z

    move-result v4

    invoke-virtual {p3}, Le/a/b/e/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Le/a/b/e/a;->d()I

    move-result v6

    iget-object v7, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    const-string v3, "POST"

    invoke-virtual/range {v0 .. v7}, Le/a/b/e/f;->e(Ljava/lang/String;[BLjava/lang/String;ZLjava/lang/String;ILe/a/b/e/c$b;)[B

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "SendRequest"

    const-string p2, "MMS network is not ready!"

    invoke-static {p1, p2}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/mms/service_alt/exception/MmsHttpException;

    const/4 p2, 0x0

    const-string p3, "MMS network is not ready"

    invoke-direct {p1, p2, p3}, Lcom/android/mms/service_alt/exception/MmsHttpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method protected d()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Le/a/b/e/k;->j:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected h(Landroid/content/Context;I[B)Landroid/net/Uri;
    .locals 11

    const-string v0, "SendRequest"

    const-string v1, "SendRequest.persistIfRequired"

    invoke-static {v0, v1}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/b/e/k;->h:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "SendRequest.persistIfRequired: empty PDU"

    invoke-static {v0, p1}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v1, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    invoke-virtual {v1}, Le/a/b/e/c$b;->m()Z

    move-result v1

    new-instance v5, Lcom/google/android/mms/c/n;

    iget-object v6, p0, Le/a/b/e/k;->h:[B

    invoke-direct {v5, v6, v1}, Lcom/google/android/mms/c/n;-><init>([BZ)V

    invoke-virtual {v5}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v5

    if-nez v5, :cond_1

    const-string p1, "SendRequest.persistIfRequired: can\'t parse input PDU"

    invoke-static {v0, p1}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1
    :try_start_1
    instance-of v5, v5, Lcom/google/android/mms/c/v;

    if-nez v5, :cond_2

    const-string p1, "SendRequest.persistIfRequired: not SendReq"

    invoke-static {v0, p1}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_2
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_3

    array-length v5, p3

    if-lez v5, :cond_3

    new-instance v5, Lcom/google/android/mms/c/n;

    invoke-direct {v5, p3, v1}, Lcom/google/android/mms/c/n;-><init>([BZ)V

    invoke-virtual {v5}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of v1, p3, Lcom/google/android/mms/c/u;

    if-eqz v1, :cond_3

    check-cast p3, Lcom/google/android/mms/c/u;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move-object p3, v2

    :goto_0
    const/4 v1, -0x1

    const-string v5, "msg_box"

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    :try_start_3
    invoke-virtual {p3}, Lcom/google/android/mms/c/u;->g()I

    move-result p2

    const/16 v1, 0x80

    if-eq p2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v8, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :goto_3
    if-eqz p3, :cond_6

    const-string p2, "resp_st"

    invoke-virtual {p3}, Lcom/google/android/mms/c/u;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/mms/c/u;->g()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "m_id"

    invoke-virtual {p3}, Lcom/google/android/mms/c/u;->f()[B

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v8, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "read"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "seen"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Le/a/b/e/h;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "creator"

    iget-object v1, p0, Le/a/b/e/h;->c:Ljava/lang/String;

    invoke-virtual {v8, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {p1}, Le/a/b/e/l;->c(Landroid/content/Context;)Le/a/b/e/l;

    move-result-object p2

    invoke-virtual {p2}, Le/a/b/e/l;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "sub_id"

    iget v1, p0, Le/a/b/e/h;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Le/a/b/e/k;->g:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eq p1, p3, :cond_9

    const-string p1, "SendRequest.persistIfRequired: failed to update message"

    invoke-static {v0, p1}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Le/a/b/e/k;->g:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "SendRequest.persistIfRequired: unexpected parsing failure"

    invoke-static {v0, p2, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method protected i()Z
    .locals 1

    invoke-direct {p0}, Le/a/b/e/k;->n()Z

    move-result v0

    return v0
.end method

.method protected k(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le/a/b/e/k;->g:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SendRequest"

    const-string v1, "error revoking permissions"

    invoke-static {v0, v1, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected l(Landroid/content/Intent;[B)Z
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "android.telephony.extra.MMS_DATA"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
