.class public Lcom/callerid/block/start/BlockListActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/start/BlockListActivity$BlackAdapter;,
        Lcom/callerid/block/start/BlockListActivity$c;
    }
.end annotation


# instance fields
.field private s:Lcom/callerid/block/util/i;

.field private t:Lcom/callerid/block/customview/ObservableListView;

.field public u:Lcom/rey/material/app/Dialog;

.field private v:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/EZBlackList;",
            ">;"
        }
    .end annotation
.end field

.field y:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->x:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/BlockListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockListActivity;->x:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/start/BlockListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity;->x:Ljava/util/List;

    return-object p1
.end method

.method static synthetic S(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/util/i;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockListActivity;->s:Lcom/callerid/block/util/i;

    return-object p0
.end method

.method static synthetic T(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/start/BlockListActivity$BlackAdapter;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockListActivity;->v:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    return-object p0
.end method

.method private V()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/start/BlockListActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/BlockListActivity$b;-><init>(Lcom/callerid/block/start/BlockListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private W()V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/start/BlockListActivity;->X(Landroid/view/View;)V

    iget-object v1, p0, Lcom/callerid/block/start/BlockListActivity;->t:Lcom/callerid/block/customview/ObservableListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private X(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0902e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->w:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0903c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/callerid/block/start/BlockListActivity;->U()V

    return-void
.end method


# virtual methods
.method public U()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    const p1, 0x7f0903a6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v1, Lcom/callerid/block/start/BlockListActivity$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/BlockListActivity$a;-><init>(Lcom/callerid/block/start/BlockListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Lcom/callerid/block/util/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/callerid/block/util/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity;->s:Lcom/callerid/block/util/i;

    const p1, 0x7f0902a3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/ObservableListView;

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity;->t:Lcom/callerid/block/customview/ObservableListView;

    new-instance p1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->x:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;-><init>(Lcom/callerid/block/start/BlockListActivity;Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/start/BlockListActivity$a;)V

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity;->v:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    invoke-direct {p0}, Lcom/callerid/block/start/BlockListActivity;->W()V

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity;->t:Lcom/callerid/block/customview/ObservableListView;

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity;->v:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/callerid/block/start/BlockListActivity;->V()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
