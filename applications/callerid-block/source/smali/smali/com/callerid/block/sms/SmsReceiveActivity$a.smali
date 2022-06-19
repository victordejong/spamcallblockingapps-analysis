.class Lcom/callerid/block/sms/SmsReceiveActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/SmsReceiveActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/sms/SmsReceiveActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/SmsReceiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/SmsReceiveActivity$a;->b:Lcom/callerid/block/sms/SmsReceiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/sms/SmsReceiveActivity$a;->b:Lcom/callerid/block/sms/SmsReceiveActivity;

    invoke-static {v0}, Lcom/callerid/block/sms/SmsReceiveActivity;->Q(Lcom/callerid/block/sms/SmsReceiveActivity;)V

    return-void
.end method
