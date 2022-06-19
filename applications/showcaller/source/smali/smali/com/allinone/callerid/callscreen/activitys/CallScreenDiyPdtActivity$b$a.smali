.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;->e:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;

    iput-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;->e:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;

    iget-object v1, v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;->e:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;

    iget-object v2, v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    iget-object v2, v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->P:Ljava/util/ArrayList;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a$a;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b$a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/d/e/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/allinone/callerid/d/e/g/a;)V

    :cond_0
    return-void
.end method
