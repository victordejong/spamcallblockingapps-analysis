.class public Lcom/unknownphone/callblocker/tutorial_other/c;
.super Landroidx/fragment/app/Fragment;
.source "OtherTutorialPage3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroidx/appcompat/widget/AppCompatImageView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_other/c;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_other/c;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_other/c;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/tutorial_other/c;-><init>()V

    .line 34
    iput-object p0, v0, Lcom/unknownphone/callblocker/tutorial_other/c;->b:Landroidx/viewpager/widget/ViewPager;

    .line 35
    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_other/c;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->f:I

    return v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_other/c;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->e:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f0c005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->a:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->a:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->d:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->a:Landroid/view/View;

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 43
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "language_code"

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 52
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    const v0, 0x7f0800a9

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->e:I

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->f:I

    .line 58
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_other/c$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/tutorial_other/c$1;-><init>(Lcom/unknownphone/callblocker/tutorial_other/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void

    .line 54
    :cond_0
    const v0, 0x7f0800a8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/c;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 79
    :cond_0
    return-void
.end method
