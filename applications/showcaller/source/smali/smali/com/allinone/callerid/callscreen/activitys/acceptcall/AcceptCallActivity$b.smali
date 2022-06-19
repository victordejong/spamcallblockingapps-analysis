.class Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "AcceptCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
