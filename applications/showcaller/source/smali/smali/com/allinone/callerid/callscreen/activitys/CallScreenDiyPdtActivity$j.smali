.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 1

    .line 1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6e\u9ed8\u8ba4\u6765\u7535\u79c0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callscreen"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Landroid/content/Context;)V

    return-void
.end method
