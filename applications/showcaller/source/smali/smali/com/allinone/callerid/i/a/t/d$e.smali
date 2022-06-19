.class Lcom/allinone/callerid/i/a/t/d$e;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/i/a/t/d;->a(ZLcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Landroid/app/AlertDialog;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(ZLandroid/app/AlertDialog;Ljava/lang/String;Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/i/a/t/d$e;->d:Z

    iput-object p2, p0, Lcom/allinone/callerid/i/a/t/d$e;->e:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/allinone/callerid/i/a/t/d$e;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/allinone/callerid/i/a/t/d$e;->g:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/allinone/callerid/i/a/t/d$e;->d:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/t/d$e;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "forced_update_dialog_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/t/d$e;->f:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/i/a/t/d$e;->g:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
