.class Lcom/allinone/callerid/util/recorder/f$h;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->t(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/i/a/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$h;->d:Lcom/allinone/callerid/i/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090656

    if-eq p1, v0, :cond_2

    const v0, 0x7f0906e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$h;->d:Lcom/allinone/callerid/i/a/c;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/allinone/callerid/i/a/c;->b()V

    .line 4
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->e()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->e()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "accessibility_permissions_dialog_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$h;->d:Lcom/allinone/callerid/i/a/c;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/allinone/callerid/i/a/c;->a()V

    .line 9
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->e()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->e()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method
