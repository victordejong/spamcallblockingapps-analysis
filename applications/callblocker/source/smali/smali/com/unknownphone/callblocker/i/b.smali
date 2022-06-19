.class public Lcom/unknownphone/callblocker/i/b;
.super Landroidx/fragment/app/Fragment;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$b;
.implements Lcom/unknownphone/callblocker/d/d$b;


# instance fields
.field private a:Landroidx/appcompat/widget/AppCompatTextView;

.field private aA:Lretrofit2/b;

.field private ae:Landroid/view/View;

.field private af:Landroid/view/View;

.field private ag:Landroid/content/SharedPreferences;

.field private ah:Lcom/unknownphone/callblocker/d/b;

.field private ai:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Landroidx/appcompat/widget/AppCompatButton;

.field private ak:Landroidx/appcompat/widget/AppCompatButton;

.field private al:Landroidx/appcompat/widget/AppCompatButton;

.field private am:Lcom/unknownphone/callblocker/d/d;

.field private an:Landroidx/appcompat/widget/AppCompatEditText;

.field private ao:Landroidx/recyclerview/widget/RecyclerView;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Ljava/lang/String;

.field private as:Lcom/unknownphone/callblocker/i/a;

.field private at:Z

.field private au:Z

.field private av:Landroid/view/View;

.field private aw:Ljava/lang/String;

.field private ax:Lcom/google/android/gms/ads/AdView;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:Lcom/unknownphone/callblocker/f/a;

.field private f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

.field private g:Landroidx/appcompat/widget/AppCompatTextView;

.field private h:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private i:Landroidx/appcompat/widget/AppCompatImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/i/b;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/unknownphone/callblocker/i/b;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/i/b;-><init>()V

    .line 127
    iput-object p0, v0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    .line 128
    return-object v0
.end method

.method public static a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/i/b;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/unknownphone/callblocker/i/b;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/i/b;-><init>()V

    .line 133
    iput-object p0, v0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    .line 134
    iput-object p1, v0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    .line 135
    return-object v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/i/b;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/unknownphone/callblocker/i/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 478
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 482
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 485
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v7}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    iget-object v5, p0, Lcom/unknownphone/callblocker/i/b;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/unknownphone/callblocker/i/b;->ar:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Lcom/unknownphone/callblocker/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 491
    iget-object v5, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 492
    iget-object v5, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v4, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 494
    if-nez p2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 495
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 491
    goto :goto_1

    :cond_3
    move v0, v1

    .line 492
    goto :goto_2

    .line 500
    :cond_4
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 502
    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100215

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/util/Locale;

    const-string/jumbo v9, ""

    .line 503
    invoke-static {v0}, Lcom/unknownphone/callblocker/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 502
    invoke-static {v5, v6, v7}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "block_international_calls"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 505
    iget-object v5, p0, Lcom/unknownphone/callblocker/i/b;->ae:Landroid/view/View;

    if-eqz v4, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->af:Landroid/view/View;

    if-eqz v4, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 505
    goto :goto_3

    :cond_6
    move v1, v2

    .line 506
    goto :goto_4

    .line 512
    :cond_7
    if-nez p2, :cond_9

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 513
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iget-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->at:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    :goto_5
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x2

    goto :goto_5

    .line 514
    :cond_9
    if-nez p2, :cond_0

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/i/b;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    return v0
.end method

.method private as()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 543
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1001e9

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "credits"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const v2, 0x7f1001e8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/unknownphone/callblocker/i/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private at()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v0

    .line 555
    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f1001de

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0

    .line 562
    :cond_1
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 563
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 564
    const v0, 0x7f0c0045

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 566
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_2
    const v0, 0x7f0901c5

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 570
    const v1, 0x7f0901c6

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 571
    const v2, 0x7f0900ec

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 573
    const v3, 0x7f090136

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 574
    const v4, 0x7f090157

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 575
    const v5, 0x7f090088

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 577
    iget-object v7, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 579
    const/4 v7, 0x2

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v0, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 581
    const v0, 0x7f100211

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/i/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 584
    const v0, 0x7f0800be

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 586
    const v0, 0x7f100055

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 587
    new-instance v0, Lcom/unknownphone/callblocker/i/b$12;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/i/b$12;-><init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    const v0, 0x7f100054

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 595
    new-instance v0, Lcom/unknownphone/callblocker/i/b$13;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/i/b$13;-><init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    new-instance v0, Lcom/unknownphone/callblocker/i/b$2;

    invoke-direct {v0, p0, v6}, Lcom/unknownphone/callblocker/i/b$2;-><init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private au()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v0

    .line 626
    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f10002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    goto :goto_0

    .line 633
    :cond_1
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 634
    invoke-virtual {v7, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 635
    const v0, 0x7f0c0045

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 637
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    :cond_2
    const v0, 0x7f0901c5

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 641
    const v1, 0x7f0901c6

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 642
    const v2, 0x7f0900ec

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 643
    const v3, 0x7f090137

    invoke-virtual {v7, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 644
    const v4, 0x7f090136

    invoke-virtual {v7, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 645
    const v5, 0x7f090157

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 646
    const v6, 0x7f090088

    invoke-virtual {v7, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 648
    iget-object v8, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 650
    const/4 v8, 0x2

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 652
    const v0, 0x7f10021a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/i/b;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 655
    const v0, 0x7f0800be

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 657
    invoke-virtual {v3, v10}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 658
    const v0, 0x7f10021b

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 659
    new-instance v0, Lcom/unknownphone/callblocker/i/b$3;

    invoke-direct {v0, p0, v7}, Lcom/unknownphone/callblocker/i/b$3;-><init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    const v0, 0x7f100055

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    .line 673
    new-instance v0, Lcom/unknownphone/callblocker/i/b$4;

    invoke-direct {v0, p0, v7}, Lcom/unknownphone/callblocker/i/b$4;-><init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 682
    new-instance v0, Lcom/unknownphone/callblocker/i/b$5;

    invoke-direct {v0, p0, v7}, Lcom/unknownphone/callblocker/i/b$5;-><init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/i/b;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ai:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/i/b;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->an:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 459
    .line 461
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b;->ar:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-virtual {v0, v2, v3}, Lcom/google/i18n/phonenumbers/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$a;->a()I

    move-result v0

    .line 461
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 467
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->ap:Ljava/lang/String;

    .line 468
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->ap:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    :goto_1
    return-object v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 472
    goto :goto_1
.end method

.method static synthetic d(Lcom/unknownphone/callblocker/i/b;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->f()V

    return-void
.end method

.method static synthetic e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->an:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->i:Landroidx/appcompat/widget/AppCompatImageButton;

    const v2, 0x7f10020d

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 522
    :cond_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->g()V

    .line 524
    return-void
.end method

.method static synthetic f(Lcom/unknownphone/callblocker/i/b;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->au()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 530
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    .line 531
    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    .line 532
    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/SharedPreferences;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->a()V

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ab

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/i/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/unknownphone/callblocker/i/b;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->at()V

    return-void
.end method

.method static synthetic h(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/d/b;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    return-object v0
.end method

.method static synthetic j(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/f/a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    return-object v0
.end method

.method static synthetic k(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ar:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public K()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aA:Lretrofit2/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aA:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    .line 393
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 394
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f0c0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 141
    const v0, 0x7f0900ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    const v0, 0x7f0900f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ae:Landroid/view/View;

    .line 143
    const v0, 0x7f0900f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->af:Landroid/view/View;

    .line 144
    const v0, 0x7f0901ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 145
    const v0, 0x7f0901af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 146
    const v0, 0x7f0901eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    .line 147
    const v0, 0x7f0900e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    const v0, 0x7f09009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    const v0, 0x7f0901e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    .line 150
    const v0, 0x7f0900e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->av:Landroid/view/View;

    .line 151
    const v0, 0x7f090163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ao:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    const v0, 0x7f09017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->i:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 153
    const v0, 0x7f090168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ak:Landroidx/appcompat/widget/AppCompatButton;

    .line 154
    const v0, 0x7f090057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    .line 155
    const v0, 0x7f0900b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->an:Landroidx/appcompat/widget/AppCompatEditText;

    .line 156
    const v0, 0x7f090041

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ax:Lcom/google/android/gms/ads/AdView;

    .line 157
    return-object v1
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aA:Lretrofit2/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aA:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 291
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    const-string/jumbo v1, ".*\\d.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 295
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 296
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 312
    :goto_0
    return-void

    .line 300
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 301
    const-string/jumbo v0, "_action"

    const-string/jumbo v2, "_get_info_for_phone"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v0, "api_key"

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->ay:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v2, "lang"

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ai:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v2, "user_type"

    iget-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "premium"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "phone"

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[^0-9]+"

    const-string/jumbo v4, ""

    .line 307
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v0, "Search a Phone Number"

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->am:Lcom/unknownphone/callblocker/d/d;

    invoke-virtual {v0, v1, p0}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aA:Lretrofit2/b;

    goto :goto_0

    .line 304
    :cond_3
    const-string/jumbo v0, "free"

    goto :goto_1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 398
    const/16 v0, 0x105

    if-ne p1, v0, :cond_4

    .line 399
    if-ne p2, v1, :cond_1

    .line 400
    const-string/jumbo v0, "unblocked"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    const-string/jumbo v0, "number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    const v2, 0x7f090110

    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    .line 404
    invoke-static {v3, v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v0

    const/4 v3, 0x1

    .line 403
    invoke-interface {v1, v2, v0, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 422
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->a()V

    .line 436
    :cond_1
    :goto_1
    return-void

    .line 407
    :cond_2
    const-string/jumbo v0, "blocked"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string/jumbo v0, "identity"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "number"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    new-instance v2, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v2}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 411
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/i/b;->b(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 413
    invoke-static {v1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    .line 416
    :try_start_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    const v1, 0x7f090110

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    .line 417
    invoke-static {v2}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v2

    const/4 v3, 0x1

    .line 416
    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0

    .line 425
    :cond_4
    const/16 v0, 0x3ab

    if-ne p1, v0, :cond_5

    .line 426
    if-ne p2, v1, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    const-string/jumbo v1, "purchase_source"

    const-string/jumbo v2, "purchase_source_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->an:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/i/b;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 435
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 405
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->at:Z

    .line 319
    if-nez p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 321
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 322
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 388
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 317
    goto :goto_0

    .line 324
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_3

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 326
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 327
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_1

    .line 331
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v3, "phone_owner"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unknownphone/callblocker/i/b;->aw:Ljava/lang/String;

    .line 336
    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b;->aw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 337
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 338
    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/i/b;->p()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1001f8

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/unknownphone/callblocker/i/b;->aw:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_4
    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b;->av:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :goto_2
    const-string/jumbo v3, "total_comments"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 348
    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b;->as:Lcom/unknownphone/callblocker/i/a;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unknownphone/callblocker/i/a;->a(Ljava/lang/String;)V

    .line 351
    :try_start_0
    const-string/jumbo v4, "comments"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v2

    .line 352
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 353
    iget-object v5, p0, Lcom/unknownphone/callblocker/i/b;->aq:Ljava/util/List;

    new-instance v6, Lcom/unknownphone/callblocker/i/c;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/unknownphone/callblocker/i/c;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 342
    :cond_5
    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b;->av:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 354
    :catch_0
    move-exception v0

    .line 357
    :cond_6
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    if-nez v0, :cond_7

    if-gt v3, v8, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    if-le v3, v0, :cond_9

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aq:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_9
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->as:Lcom/unknownphone/callblocker/i/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/i/a;->d()V

    .line 364
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/unknownphone/callblocker/i/b;->a(Ljava/lang/String;Z)V

    .line 365
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 366
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 370
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 371
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    invoke-static {v0, v8}, Lcom/unknownphone/callblocker/custom/g;->b(Landroid/content/SharedPreferences;I)V

    .line 372
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->as()V

    .line 375
    :cond_a
    new-instance v2, Lcom/unknownphone/callblocker/e/a;

    invoke-direct {v2}, Lcom/unknownphone/callblocker/e/a;-><init>()V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/unknownphone/callblocker/e/a;->b(J)V

    .line 377
    invoke-virtual {v2, v1}, Lcom/unknownphone/callblocker/e/a;->a(S)V

    .line 378
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/i/b;->b(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/e/a;->a(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/e/a;->b(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2, v1}, Lcom/unknownphone/callblocker/e/a;->a(I)V

    .line 382
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/e/a;)V

    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    const v1, 0x7f090112

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    invoke-static {v2}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/e/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V

    .line 385
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    const v1, 0x7f090113

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b;->e:Lcom/unknownphone/callblocker/f/a;

    invoke-static {v2}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/h/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 386
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 378
    :cond_b
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aw:Ljava/lang/String;

    goto :goto_4
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 446
    const/16 v0, 0x2fb

    if-ne p1, v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ar:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ar:Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ap:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ah:Lcom/unknownphone/callblocker/d/b;

    .line 168
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->am:Lcom/unknownphone/callblocker/d/d;

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    .line 170
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    .line 171
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "language_code"

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ai:Landroid/util/Pair;

    .line 173
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ag:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "api_key"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ay:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->as()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aq:Ljava/util/List;

    .line 178
    new-instance v0, Lcom/unknownphone/callblocker/i/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->aq:Ljava/util/List;

    iget-boolean v2, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    new-instance v3, Lcom/unknownphone/callblocker/i/b$1;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/i/b$1;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/i/a;-><init>(Ljava/util/List;ZLcom/unknownphone/callblocker/custom/f;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->as:Lcom/unknownphone/callblocker/i/a;

    .line 202
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/b;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 203
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ao:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 204
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ao:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ao:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 206
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ao:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->as:Lcom/unknownphone/callblocker/i/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 209
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 210
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 211
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$b;)V

    .line 212
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$b;)V

    .line 215
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/i/b;->au:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ax:Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->i:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v1, Lcom/unknownphone/callblocker/i/b$6;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/i/b$6;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->an:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/unknownphone/callblocker/i/b$7;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/i/b$7;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 238
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ak:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/i/b$8;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/i/b$8;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/i/b$9;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/i/b$9;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/i/b$10;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/i/b$10;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->av:Landroid/view/View;

    new-instance v1, Lcom/unknownphone/callblocker/i/b$11;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/i/b$11;-><init>(Lcom/unknownphone/callblocker/i/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->an:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/unknownphone/callblocker/i/b;->a(Ljava/lang/String;Z)V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/unknownphone/callblocker/i/b;->g()V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->aj:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->al:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 283
    :cond_1
    return-void

    .line 165
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->ax:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/d$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/d;)V

    goto :goto_1

    .line 209
    nop

    :array_0
    .array-data 4
        0x7f060019
        0x7f060019
        0x7f060019
    .end array-data

    .line 210
    :array_1
    .array-data 4
        0x7f060019
        0x7f060019
        0x7f060019
    .end array-data
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Z)V

    .line 441
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b;->az:Ljava/lang/String;

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b;->f:Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->getIndex()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/unknownphone/callblocker/i/b;->a(Ljava/lang/String;Z)V

    .line 442
    :cond_0
    return-void

    .line 441
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
