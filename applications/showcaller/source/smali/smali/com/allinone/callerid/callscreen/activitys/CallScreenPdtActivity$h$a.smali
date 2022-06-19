.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->b(Lc/d/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/a;

.field final synthetic b:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;Lc/d/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->b:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;

    iput-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->a:Lc/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/allinone/callerid/callscreen/bean/DownloadInfo;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "callscreen"

    const-string p2, "\u53d1\u9001\u5e7f\u64ad\u66f4\u65b0\u6570\u636e"

    .line 2
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->b:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->b:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->a:Lc/d/a/a;

    invoke-interface {p2}, Lc/d/a/a;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->b:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;->b:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;

    iget-object p1, p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getAudio_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->n0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Ljava/lang/String;)V

    return-void
.end method
