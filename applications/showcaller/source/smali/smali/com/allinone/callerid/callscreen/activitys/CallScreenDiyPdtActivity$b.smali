.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;
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
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/allinone/callerid/d/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allinone/callerid/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
