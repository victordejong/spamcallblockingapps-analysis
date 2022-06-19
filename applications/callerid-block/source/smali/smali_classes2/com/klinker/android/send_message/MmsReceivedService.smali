.class public Lcom/klinker/android/send_message/MmsReceivedService;
.super Landroid/app/IntentService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/klinker/android/send_message/MmsReceivedService$a;,
        Lcom/klinker/android/send_message/MmsReceivedService$c;,
        Lcom/klinker/android/send_message/MmsReceivedService$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MmsReceivedService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/klinker/android/send_message/MmsReceivedService$b;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/klinker/android/send_message/MmsReceivedService$b;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "MmsReceivedService"

    const-string v1, "MMS send received notification, io exception"

    invoke-static {v0, v1, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/mms/c/h;
    .locals 1

    invoke-static {p0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object p0

    const-string v0, "notification_ind_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object p0

    check-cast p0, Lcom/google/android/mms/c/h;

    return-object p0
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;[B)Lcom/klinker/android/send_message/MmsReceivedService$b;
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/mms/c/n;

    new-instance v2, Le/a/b/e/c$b;

    new-instance v3, Le/a/b/e/c;

    invoke-direct {v3, p0}, Le/a/b/e/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v1}, Le/a/b/e/c$b;-><init>(Le/a/b/e/c;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Le/a/b/e/c$b;->m()Z

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/google/android/mms/c/n;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object p2

    const-string v0, "MmsReceivedService"

    if-eqz p2, :cond_3

    instance-of v2, p2, Lcom/google/android/mms/c/t;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/klinker/android/send_message/MmsReceivedService;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/mms/c/h;

    move-result-object v2

    new-instance v3, Lcom/android/mms/transaction/p;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/transaction/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "trigger_push"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/klinker/android/send_message/MmsReceivedService$c;

    invoke-direct {p1, p0, v2, v3}, Lcom/klinker/android/send_message/MmsReceivedService$c;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/klinker/android/send_message/MmsReceivedService$a;

    check-cast p2, Lcom/google/android/mms/c/t;

    invoke-direct {p1, p0, v2, v3, p2}, Lcom/klinker/android/send_message/MmsReceivedService$a;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/h;Lcom/android/mms/transaction/p;Lcom/google/android/mms/c/t;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "error"

    invoke-static {v0, p1, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    :goto_0
    const-string p0, "MmsReceivedReceiver.sendNotification failed to parse pdu"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.telephony.extra.MMS_HTTP_STATUS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x194

    if-eq v0, v2, :cond_1

    const/16 v2, 0x190

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "location_url"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "m_type=? AND ct_l =?"

    invoke-static {p0, v0, v2, p1, v3}, Lcom/google/android/mms/e/f;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "location_url"

    const-string v1, "MMS received, io exception"

    const-string v2, "MmsReceivedService"

    const-string v3, "MMS has finished downloading, persisting it to the database"

    invoke-static {v2, v3}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v3, v6

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v8, v3, [B

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7, v3}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {p0, p1, v8}, Lcom/klinker/android/send_message/MmsReceivedService;->c(Landroid/content/Context;Landroid/content/Intent;[B)Lcom/klinker/android/send_message/MmsReceivedService$b;

    move-result-object v7

    invoke-static {v7}, Lcom/klinker/android/send_message/MmsReceivedService;->a(Lcom/klinker/android/send_message/MmsReceivedService$b;)V

    new-instance v9, Le/a/b/e/c$b;

    new-instance v7, Le/a/b/e/c;

    invoke-direct {v7, p0}, Le/a/b/e/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v9, v7, v4}, Le/a/b/e/c$b;-><init>(Le/a/b/e/c;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v11

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Le/a/b/e/b;->q(Landroid/content/Context;[BLe/a/b/e/c$b;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;

    const-string v4, "response saved successfully"

    invoke-static {v2, v4}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response length: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v4, v6

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v4, v6

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v4, v6

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v3

    :goto_0
    :try_start_3
    invoke-static {v2, v1, v3}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_2

    :catch_5
    move-exception v3

    :goto_1
    :try_start_5
    const-string v5, "MMS received, file not found exception"

    invoke-static {v2, v5, v3}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception v3

    :goto_2
    invoke-static {v2, v1, v3}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_3
    invoke-static {p0, p1}, Lcom/klinker/android/send_message/MmsReceivedService;->d(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/mms/transaction/c;->b(Ljava/lang/String;)V

    return-void

    :goto_4
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v4

    invoke-static {v2, v1, v4}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_5
    invoke-static {p0, p1}, Lcom/klinker/android/send_message/MmsReceivedService;->d(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/mms/transaction/c;->b(Ljava/lang/String;)V

    throw v3
.end method
