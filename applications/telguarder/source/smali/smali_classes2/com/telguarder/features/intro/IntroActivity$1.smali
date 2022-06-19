.class Lcom/telguarder/features/intro/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/intro/IntroActivity;->setupPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/intro/IntroActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/intro/IntroActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$1;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$1;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {p1}, Lcom/telguarder/features/intro/IntroActivity;->access$100(Lcom/telguarder/features/intro/IntroActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity$1;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {v0}, Lcom/telguarder/features/intro/IntroActivity;->access$000(Lcom/telguarder/features/intro/IntroActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const v0, 0x7f100111

    goto :goto_0

    :cond_0
    const v0, 0x7f1001a4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 104
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$1;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {p1}, Lcom/telguarder/features/intro/IntroActivity;->access$200(Lcom/telguarder/features/intro/IntroActivity;)V

    return-void
.end method
