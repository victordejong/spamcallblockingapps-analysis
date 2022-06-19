.class public Lcom/telguarder/features/intro/IntroActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IntroActivity.java"


# instance fields
.field private lFlags:I

.field public mBottomPaddingOffset:I

.field private mNextButton:Landroid/widget/Button;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/intro/IntroActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/intro/IntroActivity;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/telguarder/features/intro/IntroActivity;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/intro/IntroActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroActivity;->setupNavBarColors()V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/intro/IntroActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroActivity;->startNextActivity()V

    return-void
.end method

.method public static openIntroActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/intro/IntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setupNavBarColors()V
    .locals 2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/telguarder/features/intro/IntroActivity;->lFlags:I

    or-int/lit16 v1, v1, 0x2000

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/telguarder/features/intro/IntroActivity;->lFlags:I

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupPager()V
    .locals 5

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 86
    const-class v1, Lcom/telguarder/features/intro/IntroPage1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-class v1, Lcom/telguarder/features/intro/IntroPage2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-class v1, Lcom/telguarder/features/intro/IntroPage3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-class v1, Lcom/telguarder/features/intro/IntroPage4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0802d9

    .line 91
    invoke-virtual {p0, v1}, Lcom/telguarder/features/intro/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/telguarder/features/intro/IntroActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0802d2

    .line 93
    invoke-virtual {p0, v1}, Lcom/telguarder/features/intro/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    const v2, 0x7f0802d1

    .line 94
    invoke-virtual {p0, v2}, Lcom/telguarder/features/intro/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 95
    new-instance v3, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/telguarder/features/intro/IntroPageFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/telguarder/features/intro/IntroActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/intro/IntroActivity$1;-><init>(Lcom/telguarder/features/intro/IntroActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 110
    iget v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    if-lez v0, :cond_0

    const v0, 0x7f0802d3

    .line 111
    invoke-virtual {p0, v0}, Lcom/telguarder/features/intro/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/telguarder/features/intro/IntroActivity$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/intro/IntroActivity$2;-><init>(Lcom/telguarder/features/intro/IntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startNextActivity()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->getInstance()Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/intro/-$$Lambda$IntroActivity$y3LWh2JhRZPmRJPK15NYdhMlS6s;

    invoke-direct {v1, p0}, Lcom/telguarder/features/intro/-$$Lambda$IntroActivity$y3LWh2JhRZPmRJPK15NYdhMlS6s;-><init>(Lcom/telguarder/features/intro/IntroActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->requestConsent(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$startNextActivity$0$IntroActivity()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0, v1, v1}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->openNumberLookupConsentActivity(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0, v1}, Lcom/telguarder/features/main/MainActivity;->openMainActivity(Landroidx/appcompat/app/AppCompatActivity;Z)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0024

    .line 48
    invoke-virtual {p0, p1}, Lcom/telguarder/features/intro/IntroActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/telguarder/features/intro/IntroActivity;->lFlags:I

    const/high16 p1, 0x42400000    # 48.0f

    .line 50
    invoke-static {p0, p1}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, p1, p1, v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 52
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroActivity;->setupPager()V

    return-void
.end method
