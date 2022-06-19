.class Lcom/allinone/callerid/mvc/controller/ShareActivity$a;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/ShareActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShareActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "share_dialog"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    const v3, 0x7f09068e

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    const v4, 0x7f090695

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 8
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    const v5, 0x7f090758

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    const v6, 0x7f09035f

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 10
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    const v7, 0x7f090234

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 11
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShareActivity$a;->d:Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
