.class public Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "AddCustomNumActivity.java"


# instance fields
.field private A:Lcom/allinone/callerid/util/m;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/allinone/callerid/customview/DeletableEditText;

.field private x:Landroid/widget/FrameLayout;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "AddCustomNumActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/util/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->A:Lcom/allinone/callerid/util/m;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;Lcom/allinone/callerid/util/m;)Lcom/allinone/callerid/util/m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->A:Lcom/allinone/callerid/util/m;

    return-object p1
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->h0()V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->y:I

    return p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->y:I

    return p1
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/customview/DeletableEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->w:Lcom/allinone/callerid/customview/DeletableEditText;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->x:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method private h0()V
    .locals 7

    const v0, 0x7f090252

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090661

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090571

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const v3, 0x7f090787

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->v:Landroid/widget/TextView;

    const v3, 0x7f090193

    .line 5
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/customview/DeletableEditText;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->w:Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f090618

    .line 6
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901cd

    .line 7
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->x:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    .line 8
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v5, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    .line 11
    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 12
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->w:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :cond_0
    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->w:Lcom/allinone/callerid/customview/DeletableEditText;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->x:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

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
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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
