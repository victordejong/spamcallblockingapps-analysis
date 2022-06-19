.class Lcom/allinone/callerid/start/CallerActivity$i;
.super Ljava/lang/Object;
.source "CallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CallerActivity;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/CallerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CallerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$i;->d:Lcom/allinone/callerid/start/CallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$i;->d:Lcom/allinone/callerid/start/CallerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/start/CallerActivity$i;->d:Lcom/allinone/callerid/start/CallerActivity;

    const-class v2, Lcom/allinone/callerid/start/PreviewNormalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/CallerActivity$i;->d:Lcom/allinone/callerid/start/CallerActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
