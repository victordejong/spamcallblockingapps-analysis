.class Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;
.super Ljava/lang/Object;
.source "SubmitCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->X(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->a0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknow_submit_comment_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    const v1, 0x7f09079a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    const v2, 0x7f090369

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    const v3, 0x7f0904d1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->Y(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->g0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;->h0(Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;)V

    return-void
.end method
