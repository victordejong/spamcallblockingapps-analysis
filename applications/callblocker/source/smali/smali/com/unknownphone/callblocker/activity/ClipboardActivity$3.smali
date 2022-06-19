.class Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;
.super Ljava/lang/Object;
.source "ClipboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ClipboardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/unknownphone/callblocker/activity/ClipboardActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ClipboardActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;->b:Lcom/unknownphone/callblocker/activity/ClipboardActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "action_block"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;->b:Lcom/unknownphone/callblocker/activity/ClipboardActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ClipboardActivity$3;->b:Lcom/unknownphone/callblocker/activity/ClipboardActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/ClipboardActivity;->finish()V

    .line 60
    return-void
.end method
