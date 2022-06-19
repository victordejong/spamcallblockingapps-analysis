.class Lcom/callerid/block/sms/SmsReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/SmsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/callerid/block/sms/SmsReceiver;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/SmsReceiver;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/SmsReceiver$a;->e:Lcom/callerid/block/sms/SmsReceiver;

    iput-object p2, p0, Lcom/callerid/block/sms/SmsReceiver$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/sms/SmsReceiver$a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/callerid/block/sms/SmsReceiver$a;->c:J

    iput-object p6, p0, Lcom/callerid/block/sms/SmsReceiver$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiver$a;->e:Lcom/callerid/block/sms/SmsReceiver;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiver$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callerid/block/sms/SmsReceiver$a;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/callerid/block/sms/SmsReceiver$a;->c:J

    iget-object v5, p0, Lcom/callerid/block/sms/SmsReceiver$a;->d:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/callerid/block/sms/SmsReceiver;->a(Lcom/callerid/block/sms/SmsReceiver;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiver$a;->e:Lcom/callerid/block/sms/SmsReceiver;

    iget-object v1, p0, Lcom/callerid/block/sms/SmsReceiver$a;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/callerid/block/sms/SmsReceiver;->b(Lcom/callerid/block/sms/SmsReceiver;Landroid/content/Context;)V

    return-void
.end method
