.class Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/mvc/model/sms/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MyMmsReceivedReceiver;->k(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callerid/block/sms/MyMmsReceivedReceiver;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MyMmsReceivedReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;->b:Lcom/callerid/block/sms/MyMmsReceivedReceiver;

    iput-object p2, p0, Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;->b:Lcom/callerid/block/sms/MyMmsReceivedReceiver;

    iget-object v5, p0, Lcom/callerid/block/sms/MyMmsReceivedReceiver$a;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/callerid/block/sms/MyMmsReceivedReceiver;->j(Lcom/callerid/block/sms/MyMmsReceivedReceiver;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method
