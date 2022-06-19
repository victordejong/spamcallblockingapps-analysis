.class Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;
.super Ljava/lang/Object;
.source "SelectVideoActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;->a:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;->a:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "homeinfo"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;->a:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    const/16 v1, 0x3e7

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;->a:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
