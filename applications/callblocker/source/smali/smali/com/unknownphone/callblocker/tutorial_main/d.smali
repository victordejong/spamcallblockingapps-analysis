.class public Lcom/unknownphone/callblocker/tutorial_main/d;
.super Landroidx/fragment/app/Fragment;
.source "MainTutorialPage4Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroidx/appcompat/widget/AppCompatButton;

.field private f:Landroidx/appcompat/widget/AppCompatButton;

.field private g:Lcom/unknownphone/callblocker/custom/a;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_main/d;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a(Landroidx/viewpager/widget/ViewPager;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/tutorial_main/d;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_main/d;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/tutorial_main/d;-><init>()V

    .line 34
    iput-object p0, v0, Lcom/unknownphone/callblocker/tutorial_main/d;->b:Landroidx/viewpager/widget/ViewPager;

    .line 35
    iput-object p1, v0, Lcom/unknownphone/callblocker/tutorial_main/d;->g:Lcom/unknownphone/callblocker/custom/a;

    .line 36
    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_main/d;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->i:I

    return v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_main/d;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->h:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0c0058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->d:Landroid/widget/RelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->e:Landroidx/appcompat/widget/AppCompatButton;

    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->f:Landroidx/appcompat/widget/AppCompatButton;

    .line 45
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->h:I

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->i:I

    .line 53
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->e:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->f:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "spam_number"

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/b;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x3e8

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100169

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_main/d$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/tutorial_main/d$1;-><init>(Lcom/unknownphone/callblocker/tutorial_main/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090074

    if-eq v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->g:Lcom/unknownphone/callblocker/custom/a;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/d;->g:Lcom/unknownphone/callblocker/custom/a;

    invoke-interface {v0}, Lcom/unknownphone/callblocker/custom/a;->a()V

    goto :goto_0
.end method
