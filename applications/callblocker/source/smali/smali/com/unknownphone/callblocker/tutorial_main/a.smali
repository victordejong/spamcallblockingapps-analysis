.class public Lcom/unknownphone/callblocker/tutorial_main/a;
.super Landroidx/fragment/app/Fragment;
.source "MainTutorialPage1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroid/widget/RelativeLayout;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_main/a;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_main/a;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/a;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/tutorial_main/a;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/unknownphone/callblocker/tutorial_main/a;->b:Landroidx/viewpager/widget/ViewPager;

    .line 27
    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_main/a;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->e:I

    return v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_main/a;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->d:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 32
    const v0, 0x7f0c0055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->a:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->a:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->c:Landroid/widget/RelativeLayout;

    .line 34
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->d:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->e:I

    .line 41
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_main/a$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/tutorial_main/a$1;-><init>(Lcom/unknownphone/callblocker/tutorial_main/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 62
    :cond_0
    return-void
.end method
