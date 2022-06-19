.class Lcom/callerid/block/sms/MessageBoxListActivity$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->g1(Lcom/callerid/block/bean/SMSBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/callerid/block/bean/EZBlackList;

    invoke-direct {p1}, Lcom/callerid/block/bean/EZBlackList;-><init>()V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j;->a:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/callerid/block/bean/EZBlackList;->setName(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$j$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$j$a;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity$j;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->a(Lcom/callerid/block/bean/EZBlackList;Lcom/callerid/block/h/a/a;)V

    :goto_1
    return-void
.end method
