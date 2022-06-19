.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;
.super Landroid/content/BroadcastReceiver;
.source "CallScreenPdtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "w"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->p0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    :cond_0
    return-void
.end method
