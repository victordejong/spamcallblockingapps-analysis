.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;
.super Landroid/content/BroadcastReceiver;
.source "ManageDiyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "callscreen"

    const-string p2, "diy_Refresh"

    .line 2
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->d0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    return-void
.end method
