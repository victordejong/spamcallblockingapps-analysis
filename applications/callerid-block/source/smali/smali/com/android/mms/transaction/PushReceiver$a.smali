.class Lcom/android/mms/transaction/PushReceiver$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/transaction/PushReceiver$a;->b:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "com.klinker.android.messaging.NEW_MMS_DOWNLOADED"

    const-string v2, "Mms"

    const-string v3, "receiving a new mms message"

    invoke-static {v2, v3}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v4, p1, v3

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Lcom/google/android/mms/c/n;

    invoke-direct {v5, v4}, Lcom/google/android/mms/c/n;-><init>([B)V

    invoke-virtual {v5}, Lcom/google/android/mms/c/n;->h()Lcom/google/android/mms/c/f;

    move-result-object v7

    const/4 v4, 0x0

    if-nez v7, :cond_0

    const-string v0, "Invalid PUSH data"

    invoke-static {v2, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v6

    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/mms/c/f;->a()I

    move-result v14

    const/16 v8, 0x82

    const-string v9, "group_message"

    const/4 v12, 0x1

    if-eq v14, v8, :cond_3

    const/16 v0, 0x86

    if-eq v14, v0, :cond_1

    const/16 v0, 0x88

    if-eq v14, v0, :cond_1

    :try_start_0
    const-string v0, "Received unrecognized PDU."

    invoke-static {v2, v0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    iget-object v0, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0, v7, v14}, Lcom/android/mms/transaction/PushReceiver;->a(Landroid/content/Context;Lcom/google/android/mms/c/f;I)J

    move-result-wide v15
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v10, -0x1

    cmp-long v0, v15, v10

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    :try_start_1
    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v10, v0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v0, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :goto_1
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "thread_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v5

    invoke-static/range {v8 .. v13}, Lc/a/a/a;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    move-object v5, v7

    check-cast v5, Lcom/google/android/mms/c/h;

    invoke-static {}, Le/a/b/a;->h()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Lcom/google/android/mms/c/h;->f()[B

    move-result-object v8

    const/16 v10, 0x3d

    array-length v11, v8

    sub-int/2addr v11, v12

    aget-byte v11, v8, v11

    if-ne v10, v11, :cond_4

    invoke-virtual {v5}, Lcom/google/android/mms/c/h;->i()[B

    move-result-object v10

    array-length v11, v8

    array-length v13, v10

    add-int/2addr v11, v13

    new-array v11, v11, [B

    array-length v13, v8

    invoke-static {v8, v3, v11, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    array-length v13, v10

    invoke-static {v10, v3, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v11}, Lcom/google/android/mms/c/h;->j([B)V

    :cond_4
    iget-object v8, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/mms/transaction/PushReceiver;->b(Landroid/content/Context;Lcom/google/android/mms/c/h;)Z

    move-result v8
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v8, :cond_c

    :try_start_3
    sget-object v5, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v5}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move v10, v5

    goto :goto_3

    :catch_1
    :try_start_4
    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_2

    :goto_3
    sget-object v8, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/f;->q(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/mms/transaction/PushReceiver;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->c()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, "already added this download, don\'t download again"

    invoke-static {v2, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_6
    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->c()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_9

    const-string v0, "receiving on a lollipop+ device"

    invoke-static {v2, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->p()Z

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "system_mms_sending"

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/mms/transaction/c;->c()Lcom/android/mms/transaction/c;

    move-result-object v0

    iget-object v3, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v6, v5, v12}, Lcom/android/mms/transaction/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto/16 :goto_7

    :cond_8
    const-string v0, "receiving with lollipop method"

    invoke-static {v2, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le/a/b/e/i;

    iget-object v3, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Le/a/b/e/i;-><init>(Landroid/content/Context;)V

    new-instance v3, Le/a/b/e/b;

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v7, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    move-object v15, v3

    move-object/from16 v16, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    move-object/from16 v23, v7

    invoke-direct/range {v15 .. v23}, Le/a/b/e/b;-><init>(Le/a/b/e/h$a;ILjava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    new-instance v0, Le/a/b/e/g;

    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v6

    invoke-direct {v0, v5, v6}, Le/a/b/e/g;-><init>(Landroid/content/Context;I)V

    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-virtual {v3, v5, v0}, Le/a/b/e/h;->c(Landroid/content/Context;Le/a/b/e/g;)V

    goto/16 :goto_7

    :cond_9
    iget-object v6, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/transaction/f;->q(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v0, Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    const-class v9, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "type"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "receive_with_new_method"

    if-lt v7, v8, :cond_a

    const/4 v3, 0x1

    :cond_a
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_7

    :cond_b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "receive_through_stock"

    invoke-virtual {v3, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/mms/transaction/PushReceiver$a;->a:Landroid/content/Context;

    invoke-static {v5, v3, v0}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip downloading duplicate message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/c/h;->f()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v3, "Unexpected RuntimeException."

    goto :goto_6

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save the data from PUSH: type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-static {v2, v3, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    const-string v0, "PUSH Intent processed."

    invoke-static {v2, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public b(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/android/mms/transaction/PushReceiver$a;->b:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$a;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$a;->b(Ljava/lang/Void;)V

    return-void
.end method
