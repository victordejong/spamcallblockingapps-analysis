.class Lcom/allinone/callerid/mvc/controller/recorder/a$a;
.super Ljava/lang/Object;
.source "ContactRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/a;->G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/a$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/a$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/recorder/f;->w(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/recorder/f;->v(Landroid/app/Activity;Lcom/allinone/callerid/i/a/d;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/a$a$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/a$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a$a;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->b0()V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "recorder_contacts_permission_open_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
