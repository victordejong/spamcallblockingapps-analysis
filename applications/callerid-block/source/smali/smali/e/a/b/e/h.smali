.class public abstract Le/a/b/e/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/e/h$a;
    }
.end annotation


# instance fields
.field protected a:Le/a/b/e/h$a;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Le/a/b/e/c$b;

.field protected e:Landroid/os/Bundle;

.field private f:Z


# direct methods
.method public constructor <init>(Le/a/b/e/h$a;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/e/h;->a:Le/a/b/e/h$a;

    iput p2, p0, Le/a/b/e/h;->b:I

    iput-object p3, p0, Le/a/b/e/h;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/b/e/h;->e:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {}, Le/a/b/e/d;->d()Le/a/b/e/d;

    move-result-object v0

    iget v1, p0, Le/a/b/e/h;->b:I

    invoke-virtual {v0, v1}, Le/a/b/e/d;->f(I)Le/a/b/e/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Le/a/b/e/d;->d()Le/a/b/e/d;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/e/d;->e()Le/a/b/e/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Le/a/b/e/c$b;

    iget-object v2, p0, Le/a/b/e/h;->e:Landroid/os/Bundle;

    invoke-direct {v1, v0, v2}, Le/a/b/e/c$b;-><init>(Le/a/b/e/c;Landroid/os/Bundle;)V

    iput-object v1, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    :cond_1
    iget-object v0, p0, Le/a/b/e/h;->d:Le/a/b/e/c$b;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static f(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0}, Le/a/b/e/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Le/a/b/e/h;->g(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0, p1}, Lcom/klinker/android/send_message/j;->n(Landroid/telephony/TelephonyManager;I)Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/klinker/android/send_message/j;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Le/a/b/e/g;Le/a/b/e/a;)[B
.end method

.method public c(Landroid/content/Context;Le/a/b/e/g;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "wifi"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Le/a/b/e/h;->m(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/klinker/android/send_message/j;->r(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Le/a/b/e/h;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile data enabled: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Le/a/b/e/h;->f:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "MmsRequest"

    invoke-static {v6, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Le/a/b/e/h;->f:Z

    const/4 v7, 0x1

    if-nez v0, :cond_1

    invoke-static/range {p1 .. p1}, Le/a/b/e/h;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mobile data not enabled, so forcing it to enable"

    invoke-static {v6, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lcom/klinker/android/send_message/j;->s(Landroid/content/Context;Z)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Le/a/b/e/h;->b()Z

    move-result v0

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v0, :cond_2

    const-string v0, "MmsRequest: mms config is not loaded yet"

    invoke-static {v6, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    :goto_0
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Le/a/b/e/h;->i()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MmsRequest: failed to prepare for request"

    invoke-static {v6, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    goto :goto_0

    :cond_3
    iget v0, v1, Le/a/b/e/h;->b:I

    invoke-static {v2, v0}, Le/a/b/e/h;->f(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MmsRequest: in airplane mode or mobile data disabled"

    invoke-static {v6, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    const/16 v7, 0x8

    goto :goto_0

    :cond_4
    const-wide/16 v10, 0x2

    move-object v13, v9

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v14, 0x3

    if-ge v8, v14, :cond_6

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Le/a/b/e/g;->d()Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_1
    const-string v0, "error acquiring network"

    invoke-static {v6, v0, v14}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Le/a/b/e/g;->e()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Lcom/android/mms/service_alt/exception/ApnException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/service_alt/exception/MmsHttpException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget v0, v1, Le/a/b/e/h;->b:I

    invoke-static {v2, v14, v0}, Le/a/b/e/a;->g(Landroid/content/Context;Ljava/lang/String;I)Le/a/b/e/a;

    move-result-object v0
    :try_end_2
    .catch Lcom/android/mms/service_alt/exception/ApnException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_4

    :catch_1
    move-exception v0

    if-eqz v14, :cond_5

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MmsRequest: No match with APN name:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", try with no name"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Le/d/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Le/a/b/e/h;->b:I

    invoke-static {v2, v9, v0}, Le/a/b/e/a;->g(Landroid/content/Context;Ljava/lang/String;I)Le/a/b/e/a;

    move-result-object v0

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MmsRequest: using "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Le/a/b/e/a;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Le/d/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v14, p2

    :try_start_4
    invoke-virtual {v1, v2, v14, v0}, Le/a/b/e/h;->a(Landroid/content/Context;Le/a/b/e/g;Le/a/b/e/a;)[B

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, -0x1

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Le/a/b/e/g;->j()V
    :try_end_5
    .catch Lcom/android/mms/service_alt/exception/ApnException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/mms/service_alt/exception/MmsHttpException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v9, v13

    const/4 v7, -0x1

    goto :goto_6

    :cond_5
    move-object/from16 v14, p2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :goto_4
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Le/a/b/e/g;->j()V

    throw v0
    :try_end_7
    .catch Lcom/android/mms/service_alt/exception/ApnException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/android/mms/service_alt/exception/MmsHttpException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v13

    const-string v8, "MmsRequest: unexpected failure"

    invoke-static {v6, v8, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v14, p2

    :goto_5
    const-string v12, "MmsRequest: HTTP or network I/O failure"

    invoke-static {v6, v12, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/android/mms/service_alt/exception/MmsHttpException;->getStatusCode()I

    move-result v0

    const-wide/16 v15, 0x3e8

    move-object/from16 v17, v13

    mul-long v12, v10, v15

    :try_start_8
    invoke-static {v12, v13, v5}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    shl-long/2addr v10, v7

    add-int/lit8 v8, v8, 0x1

    move v12, v0

    move-object/from16 v13, v17

    const/4 v0, 0x4

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v9, v13

    const-string v7, "MmsRequest: APN failure"

    invoke-static {v6, v7, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x2

    goto :goto_6

    :cond_6
    move v7, v0

    move-object v9, v13

    :goto_6
    iget-boolean v0, v1, Le/a/b/e/h;->f:Z

    if-nez v0, :cond_7

    const-string v0, "setting mobile data back to disabled"

    invoke-static {v6, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/klinker/android/send_message/j;->s(Landroid/content/Context;Z)V

    :cond_7
    invoke-static/range {p1 .. p1}, Le/a/b/e/h;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_8
    invoke-virtual {v1, v2, v7, v9, v12}, Le/a/b/e/h;->j(Landroid/content/Context;I[BI)V

    return-void
.end method

.method protected abstract d()Landroid/app/PendingIntent;
.end method

.method protected abstract h(Landroid/content/Context;I[B)Landroid/net/Uri;
.end method

.method protected abstract i()Z
.end method

.method public j(Landroid/content/Context;I[BI)V
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Le/a/b/e/h;->h(Landroid/content/Context;I[B)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Le/a/b/e/h;->d()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p0, v3, p3}, Le/a/b/e/h;->l(Landroid/content/Intent;[B)Z

    move-result v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "uri"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    const-string v4, "android.telephony.extra.MMS_HTTP_STATUS"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-nez v2, :cond_3

    const/4 p2, 0x5

    :cond_3
    :try_start_0
    invoke-virtual {v1, p1, p2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "MmsRequest"

    const-string p4, "MmsRequest: sending pending intent canceled"

    invoke-static {p3, p4, p2}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Le/a/b/e/h;->k(Landroid/content/Context;)V

    return-void
.end method

.method protected abstract k(Landroid/content/Context;)V
.end method

.method protected abstract l(Landroid/content/Intent;[B)Z
.end method
