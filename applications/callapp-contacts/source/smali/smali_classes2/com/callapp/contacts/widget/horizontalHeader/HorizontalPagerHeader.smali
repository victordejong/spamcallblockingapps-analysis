.class public Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder<",
            "Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1041
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1043
    sget-object v1, Lcom/callapp/contacts/R$styleable;->HorizontalPagerHeader:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f0d0134

    .line 1044
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->b:I

    .line 1045
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1047
    :cond_0
    iget p2, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->b:I

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1049
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 1050
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p3, Lcom/callapp/contacts/widget/horizontalHeader/SinglePageFragment;

    invoke-direct {p2, p1, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)V

    .line 1051
    new-instance p1, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$1;

    invoke-direct {p1, p0, p0, p2}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$1;-><init>(Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    .line 1057
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->getCancelAnimationOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerAdapter;->setCancelAnimationOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    const/4 v1, 0x0

    .line 1227
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->a:Z

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->a(Ljava/util/List;)V

    return-void
.end method

.method public setPageChangedListener(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->setPageChangedListener(Landroidx/viewpager/widget/ViewPager$e;)V

    return-void
.end method
