.class Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;
.super Ljava/lang/Object;
.source "SubmitCommentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    const-string p3, "unknow_write_comment"

    invoke-virtual {p2, p3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->i0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/500"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x5

    if-lt p2, p3, :cond_0

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "wwww."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->l0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->j0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->l0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->k0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->i0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->m0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->n0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const p3, 0x7f0800b1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x1ef

    if-lt p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->i0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Z(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->i0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->m0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->i0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "0/500"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
