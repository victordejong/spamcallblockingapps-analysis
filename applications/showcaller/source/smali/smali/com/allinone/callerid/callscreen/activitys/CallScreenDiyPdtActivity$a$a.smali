.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/allinone/callerid/d/f/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;

    iget-object v1, v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a$a;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/d/e/g/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/g/a;)V

    :cond_0
    return-void
.end method
