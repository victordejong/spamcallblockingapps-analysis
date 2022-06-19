.class Lcom/unknownphone/callblocker/activity/ReportActivity$5;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/ReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/ReportActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/ReportActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$5;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    const-string/jumbo v1, "identity"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$5;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->f(Lcom/unknownphone/callblocker/activity/ReportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "blocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$5;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/ReportActivity;->g(Lcom/unknownphone/callblocker/activity/ReportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$5;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->setResult(ILandroid/content/Intent;)V

    .line 183
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/ReportActivity$5;->a:Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/ReportActivity;->finish()V

    .line 184
    return-void
.end method
