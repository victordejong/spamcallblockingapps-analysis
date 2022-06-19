.class Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

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

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901ff

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "unselect_dialog_cancel"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->e0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Lcom/allinone/callerid/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "unselect_dialog_ok"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->e0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Lcom/allinone/callerid/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$d;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
