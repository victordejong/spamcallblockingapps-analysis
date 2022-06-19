.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:I

.field final synthetic g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iput p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->d:I

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->e:Ljava/lang/Object;

    iput p4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 2
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->d:I

    const v1, 0x7f0801da

    const v2, 0x7f0801c7

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/CustomBlock;

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CustomBlock;->isselected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->a(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/CustomBlock;->setIsselected(Z)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->b(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 13
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/EZBlackList;->isselected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-virtual {p1, v3}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->a(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-static {p1, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->b(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 21
    :cond_3
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->d:I

    if-ne p1, v0, :cond_4

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->G0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c015a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09007e

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09007d

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0904c7

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0904c6

    .line 26
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 27
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v4, v4, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v4}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;)V

    .line 30
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->I0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroidx/appcompat/app/a;)Landroidx/appcompat/app/a;

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;->g:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->H0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method
