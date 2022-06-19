.class Lcom/allinone/callerid/dialog/g$a;
.super Ljava/lang/Object;
.source "DialogOverPerGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/dialog/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/g$a;->d:Lcom/allinone/callerid/dialog/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/dialog/g$a;->d:Lcom/allinone/callerid/dialog/g;

    invoke-static {v1}, Lcom/allinone/callerid/dialog/g;->a(Lcom/allinone/callerid/dialog/g;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/dialog/g$a;->d:Lcom/allinone/callerid/dialog/g;

    invoke-static {v1}, Lcom/allinone/callerid/dialog/g;->a(Lcom/allinone/callerid/dialog/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
