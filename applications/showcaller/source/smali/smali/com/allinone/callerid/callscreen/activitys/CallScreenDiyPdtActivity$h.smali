.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v0(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->m0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->m0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
