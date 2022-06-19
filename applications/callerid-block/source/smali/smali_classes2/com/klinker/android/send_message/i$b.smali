.class Lcom/klinker/android/send_message/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/i;->l(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Landroid/telephony/SmsManager;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Lcom/klinker/android/send_message/i;


# direct methods
.method constructor <init>(Lcom/klinker/android/send_message/i;ILandroid/net/Uri;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/i$b;->i:Lcom/klinker/android/send_message/i;

    iput p2, p0, Lcom/klinker/android/send_message/i$b;->b:I

    iput-object p3, p0, Lcom/klinker/android/send_message/i$b;->c:Landroid/net/Uri;

    iput-object p4, p0, Lcom/klinker/android/send_message/i$b;->d:Landroid/telephony/SmsManager;

    iput-object p5, p0, Lcom/klinker/android/send_message/i$b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/klinker/android/send_message/i$b;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/klinker/android/send_message/i$b;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/klinker/android/send_message/i$b;->h:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget v0, p0, Lcom/klinker/android/send_message/i$b;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/klinker/android/send_message/i$b;->i:Lcom/klinker/android/send_message/i;

    iget-object v1, p0, Lcom/klinker/android/send_message/i$b;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/klinker/android/send_message/i;->b(Lcom/klinker/android/send_message/i;Landroid/net/Uri;)Z

    move-result v0

    const-string v1, "send_transaction"

    if-eqz v0, :cond_0

    const-string v0, "message sent after delay"

    invoke-static {v1, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/klinker/android/send_message/i$b;->d:Landroid/telephony/SmsManager;

    iget-object v3, p0, Lcom/klinker/android/send_message/i$b;->e:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/klinker/android/send_message/i$b;->f:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/klinker/android/send_message/i$b;->g:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/klinker/android/send_message/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Transaction"

    const-string v2, "exception thrown"

    invoke-static {v1, v2, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v0, "message not sent after delay, no longer exists"

    invoke-static {v1, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
