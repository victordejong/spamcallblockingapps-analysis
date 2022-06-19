.class Lcom/allinone/callerid/start/PermissionActivity$a;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/PermissionActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/PermissionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/PermissionActivity$a;->d:Lcom/allinone/callerid/start/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/start/PermissionActivity$a;->d:Lcom/allinone/callerid/start/PermissionActivity;

    const-class v2, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/start/PermissionActivity$a;->d:Lcom/allinone/callerid/start/PermissionActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
