.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->X(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->f0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_pdt_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
