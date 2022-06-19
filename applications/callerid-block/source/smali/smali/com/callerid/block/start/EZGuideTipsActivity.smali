.class public Lcom/callerid/block/start/EZGuideTipsActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/start/EZGuideTipsActivity$f;
    }
.end annotation


# instance fields
.field private A:Lcom/callerid/block/util/s;

.field private B:Landroid/widget/TextView;

.field C:Landroid/graphics/Typeface;

.field private D:Landroid/widget/FrameLayout;

.field private E:Z

.field private F:Ljava/util/Timer;

.field private G:Ljava/util/TimerTask;

.field private s:Lcom/callerid/block/customview/ScrollerViewpager;

.field private t:Lcom/callerid/block/customview/DotIndicator;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/List;

.field private z:Lcom/callerid/block/bean/EZCountryCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->u:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->v:Z

    iput-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->w:Z

    iput-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->x:Z

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/EZGuideTipsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->a0()V

    return-void
.end method

.method static synthetic R(Lcom/callerid/block/start/EZGuideTipsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->e0()V

    return-void
.end method

.method static synthetic S(Lcom/callerid/block/start/EZGuideTipsActivity;)Lcom/callerid/block/customview/DotIndicator;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->t:Lcom/callerid/block/customview/DotIndicator;

    return-object p0
.end method

.method static synthetic T(Lcom/callerid/block/start/EZGuideTipsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->w:Z

    return p0
.end method

.method static synthetic U(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->w:Z

    return p1
.end method

.method static synthetic V(Lcom/callerid/block/start/EZGuideTipsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->v:Z

    return p0
.end method

.method static synthetic W(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->v:Z

    return p1
.end method

.method static synthetic X(Lcom/callerid/block/start/EZGuideTipsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->x:Z

    return p0
.end method

.method static synthetic Y(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->x:Z

    return p1
.end method

.method private Z()V
    .locals 11

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->u:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->u:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c0073

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/callerid/block/start/EZGuideTipsActivity$f;

    invoke-direct {v6, v5}, Lcom/callerid/block/start/EZGuideTipsActivity$f;-><init>(Landroid/view/View;)V

    const v7, 0x7f090177

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->C:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v8, 0x7f090178

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->C:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-nez v4, :cond_1

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1000de

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1000d8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1000dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1000d6

    goto :goto_2

    :cond_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1000dd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1000d7

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v7, v6, Lcom/callerid/block/start/EZGuideTipsActivity$f;->a:Landroid/widget/ImageView;

    aget v8, v1, v4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, v6, Lcom/callerid/block/start/EZGuideTipsActivity$f;->b:Landroid/widget/ImageView;

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->u:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x7f08017c
        0x7f08017d
        0x7f08017e
    .end array-data

    :array_1
    .array-data 4
        0x7f080177
        0x7f080178
        0x7f080179
    .end array-data
.end method

.method private a0()V
    .locals 7

    invoke-static {}, Lcom/callerid/block/util/x0/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->E:Z

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->g0()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "guide_overlay_per_click"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->G:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    new-instance v2, Lcom/callerid/block/start/EZGuideTipsActivity$b;

    invoke-direct {v2, p0}, Lcom/callerid/block/start/EZGuideTipsActivity$b;-><init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V

    iput-object v2, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->G:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->F:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private d0()V
    .locals 4

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->Z()V

    const v0, 0x7f090209

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/DotIndicator;

    iput-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->t:Lcom/callerid/block/customview/DotIndicator;

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->s:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-virtual {v0, v1}, Lcom/callerid/block/customview/DotIndicator;->setViewPagerScroller(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->s:Lcom/callerid/block/customview/ScrollerViewpager;

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->u:Ljava/util/List;

    new-instance v2, Lcom/callerid/block/start/EZGuideTipsActivity$d;

    invoke-direct {v2, p0}, Lcom/callerid/block/start/EZGuideTipsActivity$d;-><init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lcom/callerid/block/customview/ScrollerViewpager;->e0(Ljava/util/List;ILcom/callerid/block/customview/e;)V

    return-void
.end method

.method private e0()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/x0/a;->f()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "tony"

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->G:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->F:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->E:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "guide_overlay_per_enabled"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "\u672a\u5f00\u542f"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private f0()V
    .locals 2

    new-instance v0, Lcom/callerid/block/util/s;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->A:Lcom/callerid/block/util/s;

    new-instance v1, Lcom/callerid/block/start/EZGuideTipsActivity$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/EZGuideTipsActivity$e;-><init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/s;->b(Lcom/callerid/block/util/s$b;)V

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->A:Lcom/callerid/block/util/s;

    invoke-virtual {v0}, Lcom/callerid/block/util/s;->c()V

    return-void
.end method

.method private g0()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callerid/block/start/EZGuideTipsActivity$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/EZGuideTipsActivity$c;-><init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b0()I
    .locals 14

    const-string v0, "country"

    const/4 v1, 0x2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryISO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "tempISO:"

    const-string v5, "    "

    const-string v6, "countryISO:"

    const-string v7, "/"

    const-string v8, ""

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {v10}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/callerid/block/util/t0;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "country="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {v10}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    return v3

    :cond_6
    return v1

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/callerid/block/util/t0;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {v11}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->z:Lcom/callerid/block/bean/EZCountryCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :cond_a
    return v1

    :cond_b
    :goto_2
    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public c0()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string p1, "first_enter"

    const-string v1, "\u9996\u6b21\u8fdb\u5165\u542f\u52a8\u98751"

    invoke-static {p1, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "first_enter_lead1"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->C:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->f0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    const v1, 0x7f09020a

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/ScrollerViewpager;

    iput-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->s:Lcom/callerid/block/customview/ScrollerViewpager;

    const v1, 0x7f090209

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/DotIndicator;

    iput-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->t:Lcom/callerid/block/customview/DotIndicator;

    const v1, 0x7f090464

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->B:Landroid/widget/TextView;

    const v1, 0x7f090179

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->D:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->B:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->C:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->D:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/callerid/block/start/EZGuideTipsActivity$a;

    invoke-direct {v2, p0}, Lcom/callerid/block/start/EZGuideTipsActivity$a;-><init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->d0()V

    invoke-virtual {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->c0()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->y:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->L(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "country"

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v3, "have_simcard"

    invoke-virtual {v1, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string v1, "have_sim"

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "no_sim"

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "no_simcard"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "first_enter_guide1_online"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string v1, "first_enter_guide1"

    invoke-static {p1, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->b0()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "get_unmatched_countrycode"

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "get_matched_countrycode"

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "not_get_countrycode"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    invoke-static {p1, v0}, Lcom/callerid/block/util/j;->h(Landroid/content/Context;Lcom/callerid/block/bean/EZCountryCode;)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/callerid/block/util/n;->a()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->F:Ljava/util/Timer;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->A:Lcom/callerid/block/util/s;

    invoke-virtual {v0}, Lcom/callerid/block/util/s;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "first_enter"

    const-string p2, "keycode_back"

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "first_enter_click_back"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/callerid/block/start/EZGuideTipsActivity;->a0()V

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
    .locals 3

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->v:Z

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "first_enter_guide_activity_onresume_online"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string v0, "first_enter"

    const-string v1, "EZGuideTipsActivityonResume"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume_isRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->E:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->E:Z

    invoke-static {}, Lcom/callerid/block/util/x0/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/EZGuideTipsActivity;->G:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
