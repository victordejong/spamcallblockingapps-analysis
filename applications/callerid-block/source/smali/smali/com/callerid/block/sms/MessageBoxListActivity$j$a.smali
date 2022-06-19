.class Lcom/callerid/block/sms/MessageBoxListActivity$j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity$j;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity$j;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity$j;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j$a;->a:Lcom/callerid/block/sms/MessageBoxListActivity$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/callerid/block/bean/CollectInfo;

    invoke-direct {v0}, Lcom/callerid/block/bean/CollectInfo;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$j$a;->a:Lcom/callerid/block/sms/MessageBoxListActivity$j;

    iget-object v1, v1, Lcom/callerid/block/sms/MessageBoxListActivity$j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callerid/block/h/a/e/c;->c(Landroid/content/Context;Lcom/callerid/block/bean/CollectInfo;)V

    return-void
.end method
