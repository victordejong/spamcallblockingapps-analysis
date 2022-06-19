.class Lcom/telguarder/features/intro/IntroActivity$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 115
    iput-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$2;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$2;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {p1}, Lcom/telguarder/features/intro/IntroActivity;->access$000(Lcom/telguarder/features/intro/IntroActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$2;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {p1}, Lcom/telguarder/features/intro/IntroActivity;->access$000(Lcom/telguarder/features/intro/IntroActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/intro/IntroActivity$2;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {v0}, Lcom/telguarder/features/intro/IntroActivity;->access$000(Lcom/telguarder/features/intro/IntroActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroActivity$2;->this$0:Lcom/telguarder/features/intro/IntroActivity;

    invoke-static {p1}, Lcom/telguarder/features/intro/IntroActivity;->access$300(Lcom/telguarder/features/intro/IntroActivity;)V

    :goto_0
    return-void
.end method
