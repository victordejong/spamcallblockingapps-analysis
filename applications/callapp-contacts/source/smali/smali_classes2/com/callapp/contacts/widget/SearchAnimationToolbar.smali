.class public Lcom/callapp/contacts/widget/SearchAnimationToolbar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:Landroid/view/MenuItem;

.field private c:Landroidx/appcompat/widget/Toolbar;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->f:Ljava/lang/String;

    .line 1107
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0d0306

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a057b

    .line 1109
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0a057a

    .line 1110
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const p3, 0x7f0e000b

    .line 1112
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->a(I)V

    .line 1113
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/callapp/contacts/widget/SearchAnimationToolbar$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$1;-><init>(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->f()Landroid/view/Menu;

    move-result-object p1

    const p3, 0x7f0a00a3

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b:Landroid/view/MenuItem;

    .line 1122
    new-instance p3, Lcom/callapp/contacts/widget/SearchAnimationToolbar$2;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$2;-><init>(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)V

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1136
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    const/4 p3, 0x0

    .line 1139
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    const v0, 0x7f0a07b7

    .line 1143
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f08036f

    .line 1144
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const v0, 0x7f0a07bd

    .line 1148
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d:Landroid/widget/EditText;

    .line 1149
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1150
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d:Landroid/widget/EditText;

    new-instance v0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$3;-><init>(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2068
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/R$styleable;->SearchAnimationToolbar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 2069
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    const/4 v1, -0x1

    .line 2070
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/4 v2, 0x2

    .line 2071
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 2072
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 2074
    iget-object v4, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2075
    iget-object p2, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 2077
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2078
    iget-object p2, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2079
    iget-object p2, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    :cond_0
    const/4 p2, 0x1

    .line 2082
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2084
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2085
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2088
    :cond_1
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 2089
    iget-object p3, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 2090
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b()V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v0

    .line 184
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 187
    iget-object v1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 191
    iget-object v3, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    int-to-float v4, v0

    invoke-static {v3, v0, v1, v2, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    int-to-float v4, v0

    invoke-static {v3, v0, v1, v4, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0xfa

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 198
    new-instance v1, Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;-><init>(Lcom/callapp/contacts/widget/SearchAnimationToolbar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 211
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d()V

    goto :goto_1

    .line 2258
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->e:Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;

    if-eqz p1, :cond_2

    .line 2259
    invoke-interface {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;->b()V

    .line 217
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic c()V
    .locals 0

    return-void
.end method

.method private d()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->e:Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;->c()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 309
    invoke-direct {p0, v1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a(Z)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 312
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d()V

    .line 315
    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->e()V

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    const/4 v0, 0x1

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->f:Ljava/lang/String;

    .line 2270
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->e:Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;

    if-eqz v0, :cond_0

    .line 2271
    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 299
    invoke-direct {p0, v1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a(Z)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 304
    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->g:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getSearchToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setOnSearchQueryChangedListener(Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->e:Lcom/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener;

    return-void
.end method

.method public setSearchHint(Ljava/lang/String;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchHintColor(I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f0a07bd

    .line 102
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public setSearchTextColor(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f0a07bd

    .line 95
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->invalidate()V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method
