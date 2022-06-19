.class public Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "BlockManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/allinone/callerid/b/c;

.field private B:Landroid/widget/LinearLayout;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/util/List;

.field public E:Ljava/util/List;

.field private F:Lcom/github/clans/fab/FloatingActionMenu;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/graphics/Typeface;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/view/LayoutInflater;

.field private K:I

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/PopupWindow;

.field private x:Landroid/graphics/Typeface;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "BlockManagerActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->C:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->D:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->E:Ljava/util/List;

    return-void
.end method

.method private A0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->J:Landroid/view/LayoutInflater;

    const v1, 0x7f0c011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906c9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09061d

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0904ec

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0904ca

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 18
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private B0()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    const v0, 0x7f0903d5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0904ef

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->B:Landroid/widget/LinearLayout;

    const v1, 0x7f0903a8

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->G:Landroid/widget/LinearLayout;

    const v1, 0x7f090231

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->y:Ljava/util/ArrayList;

    .line 7
    new-instance v2, Lcom/allinone/callerid/b/c;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->y:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v0}, Lcom/allinone/callerid/b/c;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->A:Lcom/allinone/callerid/b/c;

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$e;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0906d6

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906d7

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090701

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090678

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905a5

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setContentDescription(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    const v0, 0x7f0901b5

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f0901b7

    .line 19
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f0901b6

    .line 20
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    const v3, 0x7f0901b4

    .line 21
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 22
    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {v1, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {v2, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v3, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01004d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010041

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$h;)V

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->I:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private C0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2, v0}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001b0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private E0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$k;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V

    return-void
.end method

.method private F0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$l;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->g(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/b;)V

    return-void
.end method

.method private G0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->J:Landroid/view/LayoutInflater;

    const v1, 0x7f0c015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090185

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/DeletableEditText;

    const v2, 0x7f090186

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f100080

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v3, 0x7f100083

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 7
    new-instance v3, Landroidx/appcompat/app/a$a;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$c;

    invoke-direct {v4, p0, v2, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText;)V

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->K:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->K:I

    return p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->K:I

    return p1
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->x:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Lcom/allinone/callerid/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->A:Lcom/allinone/callerid/b/c;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->x:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->B:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->y0()V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->v0()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Lcom/github/clans/fab/FloatingActionMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F0()V

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->E0()V

    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->H:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->C0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->v:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->I:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->I:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->B0()V

    return-void
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->A0()V

    return-void
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->x0()V

    return-void
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w0()V

    return-void
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->z:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->z:Ljava/util/ArrayList;

    return-object p1
.end method

.method private v0()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->y:Ljava/util/ArrayList;

    const/16 v1, 0x1c

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Lcom/allinone/callerid/dialog/f;

    const v1, 0x7f1100f6

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/dialog/f;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v4, 0x8

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "block_norifi_per_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private w0()V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private x0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/p/c;->a(Lcom/allinone/callerid/i/a/p/a;)V

    return-void
.end method

.method private y0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->z:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/p/c;->c(Lcom/allinone/callerid/i/a/p/a;Ljava/util/ArrayList;)V

    return-void
.end method

.method private z0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "more_blacklist_click"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    const-class v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 8
    :sswitch_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "more_block_set_click"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 11
    const-class v2, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 14
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 15
    const-class v2, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 18
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->v:Landroid/widget/ImageView;

    const/16 v3, 0x33

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    .line 21
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->w:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->v:Landroid/widget/ImageView;

    const/16 v3, 0x35

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    .line 24
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 25
    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 27
    :sswitch_5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "block_norifi_per_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 28
    sput-boolean v2, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/b;->c(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 30
    :sswitch_6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F0()V

    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->q(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 35
    :sswitch_7
    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 38
    :cond_3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->E0()V

    goto :goto_0

    .line 39
    :cond_4
    new-instance p1, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$j;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->m(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 40
    :sswitch_8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 42
    :cond_5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->G0()V

    goto :goto_0

    .line 43
    :sswitch_9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->F:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 45
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 46
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    sget-object v3, Lcom/allinone/callerid/util/g1;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 47
    const-class v2, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901b4 -> :sswitch_9
        0x7f0901b5 -> :sswitch_8
        0x7f0901b6 -> :sswitch_7
        0x7f0901b7 -> :sswitch_6
        0x7f090231 -> :sswitch_5
        0x7f090252 -> :sswitch_4
        0x7f09035b -> :sswitch_3
        0x7f090365 -> :sswitch_2
        0x7f0904ca -> :sswitch_1
        0x7f0904ec -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->J:Landroid/view/LayoutInflater;

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->z0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "dialog_notifi_per_tip_enalbleed"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_0
    sput-boolean v1, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->v0()V

    :cond_1
    return-void
.end method
