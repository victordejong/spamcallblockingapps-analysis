.class Lcom/callerid/block/fragment/b$j;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$j;->a:Lcom/callerid/block/fragment/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    const-string v0, "smsreceiver"

    if-eqz p1, :cond_0

    const-string p1, "onReceive"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.callerid.block.SMS_INIT_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "com.callerid.block.ADD_UPDATE_CONTACTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "com.callerid.block.SEARCH_SMS_OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "com.callerid.block.SMS_RECEIVER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    const-string p1, "tony"

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "sms_init_data"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/fragment/b$j;->a:Lcom/callerid/block/fragment/b;

    invoke-static {p1, v2}, Lcom/callerid/block/fragment/b;->N1(Lcom/callerid/block/fragment/b;Z)V

    goto :goto_2

    :pswitch_1
    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    if-eqz p2, :cond_6

    const-string p2, "add_update_contacts"

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/callerid/block/fragment/b$j;->a:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->T1(Lcom/callerid/block/fragment/b;)V

    goto :goto_2

    :pswitch_2
    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    if-eqz p2, :cond_7

    const-string p2, "search_sms_ok"

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/callerid/block/fragment/b$j$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/b$j$b;-><init>(Lcom/callerid/block/fragment/b$j;)V

    const-wide/16 v0, 0x7d0

    goto :goto_1

    :pswitch_3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/callerid/block/fragment/b$j$a;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/b$j$a;-><init>(Lcom/callerid/block/fragment/b$j;)V

    const-wide/16 v0, 0x3e8

    :goto_1
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x703a2bef -> :sswitch_3
        -0x4b7d1143 -> :sswitch_2
        -0xce87211 -> :sswitch_1
        0x31a33797 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
