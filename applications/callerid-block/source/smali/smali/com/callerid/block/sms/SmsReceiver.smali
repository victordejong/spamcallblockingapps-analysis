.class public Lcom/callerid/block/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "receivesms"

    const-string v1, "new SmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/sms/SmsReceiver;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/callerid/block/sms/SmsReceiver;->c(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/callerid/block/sms/SmsReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/SmsReceiver;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receivesms"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callerid/block/sms/SmsSceneService;

    invoke-direct {v0, p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msgBody"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "msgAddress"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "msgDate"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.SMS_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    const-string v1, "receivesms"

    const-string v0, "\u63a5\u6536"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sms received!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    array-length v2, v0

    new-array v3, v2, [Landroid/telephony/SmsMessage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    aget-object v6, v0, v5

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_3

    aget-object v0, v3, v4

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    aget-object v2, v3, v4

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v12, "1"

    const-string v13, "0"

    new-instance v14, Lcom/callerid/block/sms/SmsReceiver$a;

    move-object v5, v14

    move-object v6, p0

    move-object v7, v2

    move-object v8, v0

    move-wide v9, v3

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/callerid/block/sms/SmsReceiver$a;-><init>(Lcom/callerid/block/sms/SmsReceiver;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    move-object/from16 v5, p1

    move-object v6, v2

    move-object v7, v0

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    invoke-static/range {v5 .. v10}, Lcom/callerid/block/mvc/model/sms/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

    goto :goto_2

    :cond_1
    move-object v5, p0

    move-object v6, v2

    move-object v7, v0

    move-wide v8, v3

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/callerid/block/sms/SmsReceiver;->c(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/callerid/block/sms/SmsReceiver;->d(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    move-object v5, p0

    move-object v6, v2

    move-object v7, v0

    move-wide v8, v3

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/callerid/block/sms/SmsReceiver;->c(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
