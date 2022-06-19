.class Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;
.super Ljava/lang/Object;
.source "WriteCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->Y(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "submit_comment_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    const v1, 0x7f09079b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    const v2, 0x7f090252

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    const v3, 0x7f090269

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->b0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08015b

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->X(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->j0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity$a;->d:Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;->k0(Lcom/allinone/callerid/mvc/controller/comment/WriteCommentActivity;)V

    return-void
.end method
