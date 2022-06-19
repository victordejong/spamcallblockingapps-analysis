.class public Lcom/callerid/block/start/StartActivityTest;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# static fields
.field public static A:Z

.field public static B:Z

.field private static C:Lcom/callerid/block/start/StartActivityTest;

.field public static z:Z


# instance fields
.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:Ljava/util/Timer;

.field private v:Ljava/util/TimerTask;

.field private w:Z

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->t:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/StartActivityTest;->w:Z

    return-void
.end method

.method static synthetic N(Lcom/callerid/block/start/StartActivityTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/StartActivityTest;->s:Z

    return p1
.end method

.method static synthetic O(Lcom/callerid/block/start/StartActivityTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/StartActivityTest;->U()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/StartActivityTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/StartActivityTest;->Z()V

    return-void
.end method

.method static synthetic R(Lcom/callerid/block/start/StartActivityTest;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/start/StartActivityTest;->w:Z

    return p0
.end method

.method static synthetic S(Lcom/callerid/block/start/StartActivityTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/StartActivityTest;->w:Z

    return p1
.end method

.method static synthetic T(Lcom/callerid/block/start/StartActivityTest;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/StartActivityTest;->v:Ljava/util/TimerTask;

    return-object p0
.end method

.method private U()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/callerid/block/start/StartActivityTest;->s:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/callerid/block/start/StartActivityTest;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "first_enter"

    const-string v1, "StartActivityTest_onCreate"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_first"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/util/n0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/callerid/block/mvc/controller/RequestPerActivity;

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const-class v1, Lcom/callerid/block/start/StartActivity;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->x:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/start/StartActivityTest$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivityTest$b;-><init>(Lcom/callerid/block/start/StartActivityTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static W()Lcom/callerid/block/start/StartActivityTest;
    .locals 1

    sget-object v0, Lcom/callerid/block/start/StartActivityTest;->C:Lcom/callerid/block/start/StartActivityTest;

    return-object v0
.end method

.method private X()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/start/StartActivityTest$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivityTest$a;-><init>(Lcom/callerid/block/start/StartActivityTest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Y()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x7f0800e4

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private Z()V
    .locals 3

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    const-string v1, "AppOpenManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canEnterMain:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/callerid/block/start/StartActivityTest;->B:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasDisplayedAd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/callerid/block/start/StartActivityTest;->A:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/callerid/block/start/StartActivityTest;->A:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/callerid/block/start/StartActivityTest;->A:Z

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    iput-boolean v2, p0, Lcom/callerid/block/start/StartActivityTest;->w:Z

    :cond_2
    sget-boolean v0, Lcom/callerid/block/start/StartActivityTest;->B:Z

    if-eqz v0, :cond_5

    sput-boolean v2, Lcom/callerid/block/start/StartActivityTest;->B:Z

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/callerid/block/start/StartActivityTest;->z:Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "enterMain"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/callerid/block/start/StartActivityTest;->V()V

    :cond_5
    return-void
.end method

.method private a0()V
    .locals 7

    const-string v0, "open_version_update"

    const-string v1, "offline_notifi"

    const-string v2, "open_subscription"

    const-string v3, "open_offline"

    :try_start_0
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivityTest;->Y()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/x0/a;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/x0/a;->c(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-class v5, Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "fcm"

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/callerid/block/util/w;->a:Z

    if-eqz v5, :cond_0

    invoke-static {v6, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "subscription_notifi"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_2

    invoke-static {v6, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "version_update_notifi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_4

    invoke-static {v6, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string v0, "is_first"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/StartActivity;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_6
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->x:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/start/StartActivityTest$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivityTest$e;-><init>(Lcom/callerid/block/start/StartActivityTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public V()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppOpenManager"

    const-string v1, "enterMain()"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/StartActivityTest;->w:Z

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivityTest;->a0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/callerid/block/start/StartActivityTest;->C:Lcom/callerid/block/start/StartActivityTest;

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "StartActivityTest\u5f00\u59cb"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object p1

    const v0, 0x7f0c0039

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->x:Landroid/widget/FrameLayout;

    const v0, 0x7f090237

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->y:Landroid/widget/LinearLayout;

    const v0, 0x7f0903e5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090400

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0903e4

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09040c

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/callerid/block/util/t0;->X()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "isSpecialDevice"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/callerid/block/util/n;->a()V

    invoke-direct {p0}, Lcom/callerid/block/start/StartActivityTest;->X()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/StartActivityTest;->w:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/callerid/block/start/StartActivityTest;->z:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->u:Ljava/util/Timer;

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    new-instance v2, Lcom/callerid/block/start/StartActivityTest$c;

    invoke-direct {v2, p0}, Lcom/callerid/block/start/StartActivityTest$c;-><init>(Lcom/callerid/block/start/StartActivityTest;)V

    iput-object v2, p0, Lcom/callerid/block/start/StartActivityTest;->v:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/callerid/block/start/StartActivityTest;->u:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest;->t:Landroid/os/Handler;

    new-instance v1, Lcom/callerid/block/start/StartActivityTest$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivityTest$d;-><init>(Lcom/callerid/block/start/StartActivityTest;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/callerid/block/start/StartActivityTest;->z:Z

    return-void
.end method
