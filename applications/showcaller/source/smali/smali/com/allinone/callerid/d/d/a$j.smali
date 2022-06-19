.class Lcom/allinone/callerid/d/d/a$j;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a;->x2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field final synthetic e:Lcom/allinone/callerid/d/d/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/a;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$j;->e:Lcom/allinone/callerid/d/d/a;

    iput-object p2, p0, Lcom/allinone/callerid/d/d/a$j;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/d/d/a$j;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/d/d/a$j;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;->setDataId(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/d/b/d;->b()Lcom/allinone/callerid/d/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/d/b/d;->a(Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;)Z

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$j;->e:Lcom/allinone/callerid/d/d/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/a;->q2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/d/a$j$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/d/a$j$a;-><init>(Lcom/allinone/callerid/d/d/a$j;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
