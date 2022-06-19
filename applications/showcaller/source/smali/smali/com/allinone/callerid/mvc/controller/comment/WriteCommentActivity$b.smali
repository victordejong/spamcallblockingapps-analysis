.class Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;
.super Ljava/lang/Object;
.source "WriteCommentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->t0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

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

    .line 1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "comment"

    const-string p3, "onTextChanged"

    .line 2
    invoke-static {p2, p3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    const-string p3, "write_comment"

    invoke-virtual {p2, p3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->l0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/TextView;

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

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x5

    if-lt p2, p3, :cond_1

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "wwww."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->l0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->m0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->o0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->n0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->l0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->p0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Z(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x1ef

    if-lt p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->l0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->a0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->l0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->p0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$b;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->l0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "0/500"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
