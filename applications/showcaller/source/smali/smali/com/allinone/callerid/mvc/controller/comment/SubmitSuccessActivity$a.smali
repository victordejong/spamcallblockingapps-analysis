.class Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;
.super Ljava/lang/Object;
.source "SubmitSuccessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/graphics/Typeface;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->d:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    const v1, 0x7f09079a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    const v2, 0x7f090778

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    const v3, 0x7f090779

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    const v4, 0x7f090252

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 5
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->e:Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f08015b

    .line 6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    :cond_0
    new-instance v4, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a$a;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/comment/SubmitSuccessActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
