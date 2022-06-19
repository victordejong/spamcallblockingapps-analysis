.class public Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;
.super Landroid/widget/BaseAdapter;
.source "MyBlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

.field final synthetic i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    const p1, 0x7f04006e

    const p3, 0x7f08008b

    .line 5
    invoke-static {p2, p1, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->f:I

    const p1, 0x7f04006f

    const p3, 0x7f08008c

    .line 6
    invoke-static {p2, p1, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->g:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h(I)V

    return-void
.end method

.method static synthetic b(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->g(I)V

    return-void
.end method

.method static synthetic c(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->f(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic d(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    return-object p0
.end method

.method private f(ILjava/lang/Object;I)V
    .locals 6

    if-nez p3, :cond_1

    .line 1
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/allinone/callerid/bean/CustomBlock;

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CustomBlock;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CustomBlock;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CustomBlock;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/allinone/callerid/bean/EZBlackList;

    .line 8
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_2

    const-string v2, ""

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Landroidx/appcompat/app/a$a;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    .line 13
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10034f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' ?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$g;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    .line 15
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000bc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$f;

    invoke-direct {p3, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$f;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p2, -0x1

    .line 18
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->F0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 19
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06002f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private g(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/allinone/callerid/bean/CustomBlock;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/allinone/callerid/bean/CustomBlock;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/CustomBlock;->isselected()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_0
    check-cast v1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->isselected()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    :cond_3
    return-void
.end method

.method private h(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/allinone/callerid/bean/CustomBlock;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/allinone/callerid/bean/CustomBlock;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/CustomBlock;->isselected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_0
    check-cast v2, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/EZBlackList;->isselected()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;II)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/EZBlackList;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->G0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c015b

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090185

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/customview/DeletableEditText;

    const p3, 0x7f090186

    .line 6
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/customview/DeletableEditText;

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f100080

    .line 9
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(I)V

    const v1, 0x7f100083

    .line 10
    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 11
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    new-instance v1, Landroidx/appcompat/app/a$a;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    .line 16
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    .line 17
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;

    invoke-direct {v2, p0, p3, v0, p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$e;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/customview/DeletableEditText;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    .line 18
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1000bc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$d;

    invoke-direct {p3, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$d;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p2, -0x1

    .line 21
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->F0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 22
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06002f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 24
    :pswitch_1
    invoke-direct {p0, p2, v0, p3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->f(ILjava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0904c6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/allinone/callerid/bean/CustomBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/allinone/callerid/bean/EZBlackList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->getItemViewType(I)I

    move-result p3

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)V

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0068

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    const v1, 0x7f090080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->a:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    const v1, 0x7f090081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->b:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    const v1, 0x7f09007f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    const v1, 0x7f0904bf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->c:Landroid/widget/FrameLayout;

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    const v1, 0x7f0904c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->d:Landroid/widget/RelativeLayout;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    const v1, 0x7f0904c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->e:Landroid/widget/RelativeLayout;

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->e:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->f:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->e:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->g:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ""

    if-nez p3, :cond_7

    .line 20
    move-object v5, v0

    check-cast v5, Lcom/allinone/callerid/bean/CustomBlock;

    .line 21
    invoke-virtual {v5}, Lcom/allinone/callerid/bean/CustomBlock;->isselected()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 22
    invoke-virtual {v5}, Lcom/allinone/callerid/bean/CustomBlock;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_5

    if-eq v7, v1, :cond_4

    const/4 v1, 0x2

    if-eq v7, v1, :cond_3

    if-eq v7, v8, :cond_2

    move-object v1, v4

    goto :goto_2

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f10008c

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f100141

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 25
    :cond_4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f100101

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f100077

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-ge v7, v8, :cond_6

    .line 27
    invoke-virtual {v5}, Lcom/allinone/callerid/bean/CustomBlock;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-virtual {v5}, Lcom/allinone/callerid/bean/CustomBlock;->getNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v4

    move-object v7, v5

    goto :goto_3

    .line 29
    :cond_7
    move-object v1, v0

    check-cast v1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 30
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->isselected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 31
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->getFormat_number()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->getNumber()Ljava/lang/String;

    move-result-object v1

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    .line 34
    :goto_3
    iget-object v8, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v8}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 35
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 36
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v6, v6, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    const v8, 0x7f0801c7

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 37
    :cond_8
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v6, v6, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    const v8, 0x7f0801da

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 38
    :cond_9
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v6, v6, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    const v8, 0x7f0801d7

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    :goto_4
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v6, v6, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_a

    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 41
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 43
    :cond_a
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v7, :cond_b

    .line 44
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 45
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 46
    :cond_b
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v7, :cond_c

    .line 47
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 48
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 49
    :cond_c
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;

    invoke-direct {v2, p0, p3, v0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->c:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;

    invoke-direct {v2, p0, p3, v0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->h:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$h;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;

    invoke-direct {v1, p0, p3, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q$c;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->d:Ljava/util/List;

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
