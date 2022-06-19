.class public Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "SelectVideoActivity.java"


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Landroidx/recyclerview/widget/RecyclerView;

.field private w:Lcom/allinone/callerid/d/a/d;

.field private x:Landroid/view/ViewStub;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "SelectVideoActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)Lcom/allinone/callerid/d/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->w:Lcom/allinone/callerid/d/a/d;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->x:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->c0()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b0()V
    .locals 3

    const v0, 0x7f09079a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0907f1

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->x:Landroid/view/ViewStub;

    const v1, 0x7f090252

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08015b

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_0
    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0904af

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v0, Lcom/allinone/callerid/customview/MyGridLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/allinone/callerid/customview/MyGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/MyGridLayoutManager;->f3(Z)V

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    new-instance v0, Lcom/allinone/callerid/d/a/d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/d/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->w:Lcom/allinone/callerid/d/a/d;

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->w:Lcom/allinone/callerid/d/a/d;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/a/d;->D(Lcom/allinone/callerid/d/a/d$b;)V

    return-void
.end method

.method private c0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->x:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0906d8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->x:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3e7

    if-ne p1, p3, :cond_1

    const/16 p1, 0x378

    if-ne p2, p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->y:Z

    const p2, 0x7f010001

    const/high16 p3, 0x7f010000

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005e

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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "is_from_main"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->y:Z

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->b0()V

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->a0()V

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
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
