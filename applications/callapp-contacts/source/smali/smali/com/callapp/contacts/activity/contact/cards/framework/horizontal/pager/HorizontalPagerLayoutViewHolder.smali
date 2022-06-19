.class public Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter<",
            "TData;>;"
        }
    .end annotation
.end field

.field private c:Landroidx/viewpager/widget/ViewPager$e;

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private e:I

.field private f:Ljava/util/Timer;

.field private final g:J

.field private final h:J

.field private i:Z

.field private j:Lcom/callapp/contacts/widget/PaginationContainer;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->e:I

    const-wide/16 v0, 0x9c4

    .line 47
    iput-wide v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->g:J

    .line 48
    iput-wide v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->h:J

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->i:Z

    .line 55
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->a:Z

    const v1, 0x7f0a0693

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/PaginationContainer;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->j:Lcom/callapp/contacts/widget/PaginationContainer;

    .line 65
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    const p2, 0x7f0a0692

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    .line 67
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 69
    new-instance p1, Lcom/callapp/contacts/widget/horizontalHeader/FixedSpeedScroller;

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/callapp/contacts/widget/horizontalHeader/FixedSpeedScroller;-><init>(Landroid/content/Context;)V

    .line 70
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-static {p2, v1, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->getPageTransformer()Landroidx/viewpager/widget/ViewPager$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$f;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)Landroidx/viewpager/widget/ViewPager$e;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->c:Landroidx/viewpager/widget/ViewPager$e;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)Lcom/callapp/contacts/widget/PaginationContainer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->j:Lcom/callapp/contacts/widget/PaginationContainer;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->e:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)I
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->e:I

    return v0
.end method

.method private d()V
    .locals 9

    .line 151
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->a:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->getAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 156
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$2;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;)V

    .line 169
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->f:Ljava/util/Timer;

    .line 170
    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x9c4

    const-wide/16 v7, 0x9c4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)Ljava/util/Timer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->f:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->e:I

    return v0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)Z
    .locals 0

    .line 1192
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->f:Ljava/util/Timer;

    if-eqz p0, :cond_0

    .line 1193
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$wVcoUkFqtuM2fMHhLEMqapkvZ6U(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->getAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->getCount()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 127
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->j:Lcom/callapp/contacts/widget/PaginationContainer;

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1, v0}, Lcom/callapp/contacts/widget/PaginationContainer;->a(I)V

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->j:Lcom/callapp/contacts/widget/PaginationContainer;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/PaginationContainer;->setCheckedPosition(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TData;>;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->getAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->a(Ljava/util/List;)Z

    .line 117
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/-$$Lambda$HorizontalPagerLayoutViewHolder$wVcoUkFqtuM2fMHhLEMqapkvZ6U;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/-$$Lambda$HorizontalPagerLayoutViewHolder$wVcoUkFqtuM2fMHhLEMqapkvZ6U;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter<",
            "TData;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    return-object v0
.end method

.method public getCancelAnimationOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 201
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;)V

    return-object v0
.end method

.method protected getPageTransformer()Landroidx/viewpager/widget/ViewPager$f;
    .locals 1

    .line 59
    new-instance v0, Lcom/callapp/contacts/widget/viewpagertransformer/DepthPageTransformer;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/viewpagertransformer/DepthPageTransformer;-><init>()V

    return-object v0
.end method

.method public getPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->d:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public setPageChangedListener(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->c:Landroidx/viewpager/widget/ViewPager$e;

    return-void
.end method
