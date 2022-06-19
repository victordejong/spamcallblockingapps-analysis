.class Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;
.super Ljava/lang/Object;
.source "WriteCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901d5

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901ff

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "select_dialog_continue"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->c0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Lcom/allinone/callerid/dialog/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->d0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002c3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "select_dialog_cancel"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->c0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Lcom/allinone/callerid/dialog/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$c;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
