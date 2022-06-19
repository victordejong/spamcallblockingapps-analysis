.class public Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method public constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/sms/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p2}, Lcom/callerid/block/sms/MessageBoxListActivity;->p0(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_3

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p2}, Lcom/callerid/block/sms/MessageBoxListActivity;->q0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p2}, Lcom/callerid/block/sms/MessageBoxListActivity;->s0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    const-string v8, "1"

    new-instance v9, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver$a;

    invoke-direct {v9, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver$a;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;)V

    invoke-static/range {v4 .. v9}, Lcom/callerid/block/mvc/model/sms/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {p2}, Lcom/callerid/block/sms/MessageBoxListActivity;->p0(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    :goto_1
    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/callerid/block/sms/h;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p2

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001b3

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001b5

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :catch_0
    :cond_7
    :goto_3
    return-void
.end method
