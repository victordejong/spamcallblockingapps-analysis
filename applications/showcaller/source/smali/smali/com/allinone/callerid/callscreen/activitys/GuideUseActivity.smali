.class public Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "GuideUseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$b;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/TextView;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Lcom/allinone/callerid/main/CustomViewPager;

.field private x:Landroid/widget/ImageView;

.field private y:Lcom/allinone/callerid/customview/CirclePageIndicator;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "GuideUseActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->u:Ljava/lang/String;

    return-void
.end method

.method private C()V
    .locals 2

    const v0, 0x7f0907ec

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/CustomViewPager;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    const v0, 0x7f0902ca

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->x:Landroid/widget/ImageView;

    const v0, 0x7f0907ed

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/CirclePageIndicator;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    const v0, 0x7f09079a

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090655

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f09022f

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->B:Landroid/widget/FrameLayout;

    const v0, 0x7f09062c

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->C:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method private a0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->D:Ljava/util/ArrayList;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    aget v5, v1, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$b;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->D:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setRadius(F)V

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setPageColor(I)V

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060124

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setFillColor(I)V

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setStrokeColor(I)V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setPaddind(F)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->y:Lcom/allinone/callerid/customview/CirclePageIndicator;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0163
        0x7f0c0165
        0x7f0c0164
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09022f

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902ca

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_user_guide_gotit"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->w:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->v:Landroid/graphics/Typeface;

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->C()V

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->a0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

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
