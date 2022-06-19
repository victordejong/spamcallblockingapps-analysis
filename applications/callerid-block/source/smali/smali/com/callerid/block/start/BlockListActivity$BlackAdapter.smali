.class public Lcom/callerid/block/start/BlockListActivity$BlackAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/start/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/EZBlackList;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

.field final synthetic e:Lcom/callerid/block/start/BlockListActivity;


# direct methods
.method private constructor <init>(Lcom/callerid/block/start/BlockListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/EZBlackList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->c:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/start/BlockListActivity;Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/start/BlockListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;-><init>(Lcom/callerid/block/start/BlockListActivity;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->f(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e(ILcom/callerid/block/bean/EZBlackList;)V

    return-void
.end method

.method static synthetic c(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method private e(ILcom/callerid/block/bean/EZBlackList;)V
    .locals 2

    new-instance v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;I)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001e5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100075

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object p2

    const-class v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {p2}, Landroidx/fragment/app/p;->h()I

    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/EZBlackList;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method d(Landroid/view/View;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/bean/EZBlackList;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;

    const p2, 0x7f110159

    invoke-direct {p1, p0, p2, v0}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$3;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;)V

    const p2, 0x7f0c00d4

    invoke-virtual {p1, p2}, Lcom/rey/material/app/Dialog$Builder;->f(I)Lcom/rey/material/app/Dialog$Builder;

    iget-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100192

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100075

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10003c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {p1}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {p2}, Landroidx/fragment/app/p;->h()I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e(ILcom/callerid/block/bean/EZBlackList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09006b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;)V

    iput-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0041

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    const v0, 0x7f09006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    const v0, 0x7f09006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object p3, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object p3, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    const v0, 0x7f09006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ImageButton;

    iput-object v0, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->d:Lcom/rey/material/widget/ImageButton;

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    const v0, 0x7f0902d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->c:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iput-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    :goto_0
    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/bean/EZBlackList;

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getFormat_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getFormat_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getFormat_number()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->d:Lcom/rey/material/widget/ImageButton;

    new-instance v1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;)V

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;

    iget-object p3, p3, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$b;->c:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
