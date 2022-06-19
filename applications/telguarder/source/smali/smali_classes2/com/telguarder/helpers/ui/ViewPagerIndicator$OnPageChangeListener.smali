.class Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;
.super Ljava/lang/Object;
.source "ViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/ViewPagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;


# direct methods
.method private constructor <init>(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telguarder/helpers/ui/ViewPagerIndicator;Lcom/telguarder/helpers/ui/ViewPagerIndicator$1;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;-><init>(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$200(Lcom/telguarder/helpers/ui/ViewPagerIndicator;I)V

    .line 172
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener;->this$0:Lcom/telguarder/helpers/ui/ViewPagerIndicator;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/ViewPagerIndicator;->access$100(Lcom/telguarder/helpers/ui/ViewPagerIndicator;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
