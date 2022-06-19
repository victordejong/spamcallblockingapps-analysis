.class public Lcom/unknownphone/callblocker/tutorial_other/a;
.super Landroidx/fragment/app/Fragment;
.source "OtherTutorialPage1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/tutorial_other/a;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a(Landroidx/viewpager/widget/ViewPager;)Lcom/unknownphone/callblocker/tutorial_other/a;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/unknownphone/callblocker/tutorial_other/a;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/tutorial_other/a;-><init>()V

    .line 36
    iput-object p0, v0, Lcom/unknownphone/callblocker/tutorial_other/a;->b:Landroidx/viewpager/widget/ViewPager;

    .line 37
    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/tutorial_other/a;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->g:I

    return v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/tutorial_other/a;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->f:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 42
    const v0, 0x7f0c005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->a:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->a:Landroid/view/View;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->e:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->a:Landroid/view/View;

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 45
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->a:Landroid/view/View;

    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "language_code"

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 55
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_0

    const v0, 0x7f1000d0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xc8

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const/16 v6, 0x4e20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 57
    invoke-static {v3, v0, v4}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_1

    const v0, 0x7f0800a9

    :goto_1
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->f:I

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->g:I

    .line 63
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/unknownphone/callblocker/tutorial_other/a$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/tutorial_other/a$1;-><init>(Lcom/unknownphone/callblocker/tutorial_other/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void

    .line 57
    :cond_0
    const v0, 0x7f1000cf

    goto :goto_0

    .line 59
    :cond_1
    const v0, 0x7f0800a8

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/a;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 84
    :cond_0
    return-void
.end method
