.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->N0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/d/f/f;->r(Z)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_mobile_net_always"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
