.class Lcom/unknownphone/callblocker/activity/PermissionActivity$2;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/PermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/PermissionActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$2;->a:Lcom/unknownphone/callblocker/activity/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$2;->a:Lcom/unknownphone/callblocker/activity/PermissionActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 70
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity$2;->a:Lcom/unknownphone/callblocker/activity/PermissionActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->finish()V

    .line 71
    return-void
.end method
