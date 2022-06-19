.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/allinone/callerid/d/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
